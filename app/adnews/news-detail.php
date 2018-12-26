<?php
    use Doctrine\ORM\Query\ResultSetMapping;

    session_start();
    if (empty($_SESSION['admin_id'])) {
      header('Location: /app/adnews/login.php');
      die();
    }

    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();
    $mysqli = new mysqli($DB_HOST, $DB_USER,$DB_PASSWORD, $DB_NAME);

    $news_id = $_GET['id'];
    $qs = "SELECT * FROM news WHERE id = $news_id";
    $result = $mysqli->query($qs);
    $result = $result->fetch_array();

    $data = array('item' => $result);

    echo $twig->render('news-detail.html', $data);
?>