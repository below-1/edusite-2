<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();

    try {
        $id = $_POST['id'];
        $nama = $_POST['nama'];
        $tipeBantuan = $_POST['tipeBantuan'];
        $tipeAlat = $_POST['tipeAlat'];
        $tahun = $_POST['tahun'];
        $jumlah = $_POST['jumlah'];
        $kondisi = $_POST['kondisi'];

    } catch (Exception $ex) {
        $data = array('message' => 'Error parsing form');
        echo $twig->render('login.html', $data);
        die();
    }

    $f = $entity_manager->find('Edusite\Model\Bantuan', $id);

    $f->setNama($nama);
    $f->setTipeBantuan($tipeBantuan);
    $f->setTipeAlat($tipeAlat);
    $f->setTahun($tahun);
    $f->setJumlah($jumlah);
    $f->setKondisi($kondisi);

    $entity_manager->persist($f);
    $entity_manager->flush();
    
    header("Location: /app/user/index.php?menu=bantuan");
    die();
?>