<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();

    if (empty($_SESSION['admin_id'])) {
      header('Location: /app/adnews/login.php');
      die();
    }

    $mysqli = new mysqli($DB_HOST, $DB_USER,$DB_PASSWORD, $DB_NAME);
    echo $twig->render('adnews/create.html');
