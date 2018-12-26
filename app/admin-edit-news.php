<?php
    use Doctrine\ORM\Query\ResultSetMapping;

    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();
    $repo = $entity_manager->getRepository('Edusite\Model\Sekolah');

    echo $twig->render('admin-edit-news.html', []);
?>q