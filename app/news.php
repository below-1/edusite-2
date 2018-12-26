<?php
    use Doctrine\ORM\Query\ResultSetMapping;

    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();
    $mysqli = new mysqli($DB_HOST, $DB_USER,$DB_PASSWORD, $DB_NAME);
    $qs = "SELECT * FROM news ORDER BY waktu DESC";
    $result = $mysqli->query($qs);
    $_result = [];
    while ($row = $result->fetch_array()) {
      array_push($_result, $row);
    }


    $data = [ 'items' => $_result ];
    if (isset($_SESSION['sekolahId'])) {
      $data['loggedIn'] = true;
    }

    echo $twig->render('adnews/list.html', $data);
?>q