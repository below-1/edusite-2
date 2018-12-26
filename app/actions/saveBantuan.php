<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();

    try {
        $sekolahId = $_SESSION['sekolahId'];
        $nama = $_POST['nama'];
        $kategori = $_POST['kategori'];
        $tipeAlat = $_POST['tipeAlat'];
        $kondisi = $_POST['kondisi'];
        $tahun = $_POST['tahun'];
        $jumlah = $_POST['jumlah'];

    } catch (Exception $ex) {
        $data = array('message' => 'Error parsing form');
        echo $twig->render('login.html', $data);
        die();
    }

    $f = new Edusite\Model\Bantuan();
    $sekolah = $entity_manager->find('Edusite\Model\Sekolah', $sekolahId);

    $f->setNama($nama);
    $f->setTahun($tahun);
    $f->setTipeBantuan($kategori);
    $f->setTipeAlat($tipeAlat);
    $f->setJumlah($jumlah);
    $f->setKondisi($kondisi);
    $f->setSekolah($sekolah);

    $entity_manager->persist($f);
    $entity_manager->flush();
    
    header("Location: /app/user/index.php?menu=bantuan");
    die();
?>