<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();
    if (isset($_SESSION['username'])) {
        header("Location: /app/user/index.php");
    }
    
    echo $twig->render('login.html');
?>