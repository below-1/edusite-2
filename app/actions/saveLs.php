<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();

    try {
        $sekolahId = $_SESSION['sekolahId'];
        $tahun = $_POST['tahun'];
        $smpn = $_POST['smpn'];
        $smps = $_POST['smps'];
        $mts = $_POST['mts'];
        $pontren = $_POST['pontren'];

    } catch (Exception $ex) {
        $data = array('message' => 'Error parsing form');
        echo $twig->render('login.html', $data);
        die();
    }

    $qb = $entity_manager->createQueryBuilder();
    $query = $entity_manager->createQuery("SELECT ds FROM Edusite\Model\Sekolah s JOIN Edusite\Model\DeskripsiTahun ds WHERE ds.sekolah = $sekolahId AND ds.tahun = $tahun ORDER BY ds.tahun ASC");
    $ds = new \Edusite\Model\DeskripsiTahun();

    // There is no data for given year
    if (count($selectResult) == 0) {
        $ds->setTahun($tahun);
        $sekolah = $entity_manager->find('Edusite\Model\Sekolah', $sekolahId);
        $ds->setSekolah($sekolah);
    } else {
        $ds = $entity_manager->find('Edusite\Model\DeskripsiTahun', $selectResult[0]['id']);
    }

    if ($_SESSION['sekolahKategori'] == 3) {
        $ds->setLanjutSMPN($smpn);
        $ds->setLanjutSMPS($smps);
        $ds->setLanjutMTS($mts);
    } else if ($_SESSION['sekolahKategori'] == 4) {
        $ds->setLanjutSMAN($smpn);
        $ds->setLanjutSMAS($smps);
        $ds->setLanjutMAN($mts);
    }

    $ds->setLanjutPontren($pontren);
    $entity_manager->persist($ds);
    $entity_manager->flush();
    
    header("Location: /app/user/index.php?menu=lanjutstudi");
    die();
?>