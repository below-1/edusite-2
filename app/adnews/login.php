<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();

    if ($_SERVER['REQUEST_METHOD'] == 'GET') {
      echo $twig->render('adnews/login.html');
      die();
    }

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
      try {
        $username = $_POST['username'];
        $password = $_POST['password'];

      } catch (Exception $ex) {
          $data = array('message' => 'Error parsing form');
          echo $twig->render('/app/adnews/login.html', $data);
          die();
      }

      $query = array(
          'username' => $username,
          'password' => $password
      );

      $admin = $entity_manager->getRepository('Edusite\Model\Admin')->findOneBy($query);
      if ($admin == null) {
          $data = array(
              'message' => 'Tidak dapat menemukan user. Periksa kembali username dan password anda'
          );
          echo $twig->render('/app/adnews/login.html', $data);
          die();
      }
      $_SESSION['admin_username'] = $username;
      $_SESSION['admin_id'] = $admin->getId();
      
      header("Location: /app/adnews/list.php");
      die();
    }
?>