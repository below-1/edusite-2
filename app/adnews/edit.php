<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();

    if (empty($_SESSION['admin_id'])) {
      header('Location: /app/adnews/login.php');
      die();
    }

    $mysqli = new mysqli($DB_HOST, $DB_USER,$DB_PASSWORD, $DB_NAME);

    if ($_SERVER['REQUEST_METHOD'] == 'GET') {
      $id = $_GET['id'];
  
      $news_id = $_GET['id'];
      $qs = "SELECT * FROM news WHERE id = $news_id";
      $result = $mysqli->query($qs);
      $result = $result->fetch_array();
      $data = ['item' => $result];
      echo $twig->render('adnews/edit.html', $data);
      die();
    }