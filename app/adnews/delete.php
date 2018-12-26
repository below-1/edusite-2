<?php
    session_start();

    // var_dump($_SESSION);
    // die();

    if (empty($_SESSION['admin_id'])) {
      header('Location: /app/adnews/login.php');
      die();
    }

    if (empty($_GET['id'])){
      die('Error');
    }

    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();
    $mysqli = new mysqli($DB_HOST, $DB_USER,$DB_PASSWORD, $DB_NAME);
    $id = $_GET['id'];
    $qs = "DELETE FROM news WHERE id = $id";
    $result = $mysqli->query($qs);
    if (!$result) {
      die('Error ekseskusi query');
    }
  
    header('Location: /app/adnews/list.php');
?>q