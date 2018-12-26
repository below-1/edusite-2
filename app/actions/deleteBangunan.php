<?php

    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();
    $mysqli = new mysqli($DB_HOST, $DB_USER,$DB_PASSWORD, $DB_NAME);

    $id = $_GET['id'];
    $qs = 'DELETE FROM bangunan WHERE id = ' . $id;
    $result = $mysqli->query($qs);
    header("Location: /app/user/index.php?menu=bangunan");
