<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';

    $data = array(
        'jsOptions' => [
            1 => 'PAUD',
            2 => 'TK',
            3 => 'SD',
            4 => 'SMP',
            5 => 'SKB'
        ]
    );
    echo $twig->render('register.html', $data);
?>