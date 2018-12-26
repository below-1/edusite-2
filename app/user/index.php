<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();
    if (empty($_SESSION['sekolahId'])) {
        header("Location: /app/login.php");
        die();
    }

    $sekolahId = $_SESSION['sekolahId'];
    $kategoriSekolah = $_SESSION['sekolahKategori'];

    $sekolah = $entity_manager->find('Edusite\Model\Sekolah', $sekolahId);
    if ($sekolah == null) {
        die('Error: sekolah is not found');
    }

    if (empty($_GET['menu'])) {
        echo $twig->render('user/biodata.html', array('sekolah' => $sekolah));
        die();
    }
    $menu = $_GET['menu'];

    if ($menu == 'siswaperkelas') {
        $query = $entity_manager->createQuery("SELECT ds FROM Edusite\Model\Sekolah s JOIN Edusite\Model\DeskripsiTahun ds WHERE ds.sekolah = $sekolahId ORDER BY ds.tahun ASC");
        $selectResult = $query->getResult();
        echo $twig->render("user/$menu.html", array('sekolah' => $sekolah, 'items' => $selectResult));
        die();
    }

    if ($menu == 'siswaperrb') {
        $query = $entity_manager->createQuery("SELECT ds FROM Edusite\Model\Sekolah s JOIN Edusite\Model\DeskripsiTahun ds WHERE ds.sekolah = $sekolahId ORDER BY ds.tahun ASC");
        $selectResult = $query->getResult();
        echo $twig->render("user/$menu.html", array('sekolah' => $sekolah, 'items' => $selectResult));
        die();
    }

    if ($menu == 'lanjutstudi') {
        $query = $entity_manager->createQuery("SELECT ds FROM Edusite\Model\Sekolah s JOIN Edusite\Model\DeskripsiTahun ds WHERE ds.sekolah = $sekolahId ORDER BY ds.tahun ASC");
        $selectResult = $query->getResult();
        $labels = ['SMPN', 'SMPS', 'MTs'];
        if ($_SESSION['sekolahKategori'] == 4) {
            $labels = ['SMAN', 'SMAS', 'MAN'];
        }
        echo $twig->render("user/$menu.html", array(
            'sekolah' => $sekolah,
            'items' => $selectResult,
            'labels' => $labels
        ));
        die();
    }

    if ($menu == 'tingkatlulus') {
        $query = $entity_manager->createQuery("SELECT 
            ds FROM Edusite\Model\Sekolah s 
            JOIN Edusite\Model\DeskripsiTahun ds 
            WHERE ds.sekolah = $sekolahId ORDER BY ds.tahun ASC");
        $selectResult = $query->getResult();
        $presentasiList = array_map(function ($ds) use ($sekolah) {
            $total = 0;
            $presentasi = 'Tidak Diketahui';
            $sk = $sekolah->getKategori();
            $isSmp = ($sk == 4);
            $isSd = ($sk == 3);

            if ($isSmp) {
                $total = $ds->getJs1() + $ds->getJs2() + $ds->getJs3() + $ds->getJs4() + $ds->getJs5() + $ds->getJs6();
            } else if ($isSd) {
                $total = $ds->getJs1() + $ds->getJs2() + $ds->getJs3();
            }
            if ($total != '0') {
                // var_dump($ds);
                // var_dump($total);
                // die();
                $presentasi = $ds->getJumlahLulus() / floatval($total) * 100;
            }

            return $presentasi;
        }, $selectResult);

        // var_dump($presentasiList);
        // die();
        echo $twig->render("user/$menu.html", array(
            'sekolah' => $sekolah, 
            'items' => $selectResult,
            'presentasi' => $presentasiList,
            'totalData' => count($selectResult)
        ));
        die();
    }

    if ($menu == 'fasilitas') {
        if (!empty($_GET['page']) && !empty($_GET['id'])) {
            $f = $entity_manager->find('Edusite\Model\Fasilitas', $_GET['id']);
            $data = array('sekolah' => $sekolah,'f' => $f);

            echo $twig->render("user/updateFasilitas.html", $data);
            die();
        }

        $query = $entity_manager->createQuery("SELECT f FROM Edusite\Model\Sekolah s JOIN Edusite\Model\Fasilitas f WHERE f.sekolah = $sekolahId ORDER BY f.nama ASC");
        $selectResult = $query->getResult();
        echo $twig->render("user/$menu.html", array('sekolah' => $sekolah, 'items' => $selectResult));
        die();
    }

    if ($menu == 'pegawaipns') {
        if (!empty($_GET['page']) && !empty($_GET['id'])) {
            $f = $entity_manager->find('Edusite\Model\Pegawai', $_GET['id']);
            $data = array('sekolah' => $sekolah,'f' => $f);

            echo $twig->render("user/updatePegawai.html", $data);
            die();
        }
        $query = $entity_manager->createQuery("SELECT f FROM Edusite\Model\Sekolah s JOIN Edusite\Model\Pegawai f WHERE f.sekolah = $sekolahId ORDER BY f.nama ASC");
        $selectResult = $query->getResult();
        echo $twig->render("user/$menu.html", array('sekolah' => $sekolah, 'items' => $selectResult));
        die();
    }

    if ($menu == 'bangunan') {
        if (!empty($_GET['page']) && !empty($_GET['id'])) {
            $f = $entity_manager->find('Edusite\Model\Bangunan', $_GET['id']);
            $data = array('sekolah' => $sekolah,'b' => $f);

            echo $twig->render("user/updateBangunan.html", $data);
            die();
        }
        $query = $entity_manager->createQuery("SELECT f FROM Edusite\Model\Sekolah s JOIN Edusite\Model\Bangunan f WHERE f.sekolah = $sekolahId ORDER BY f.tahun ASC");
        $selectResult = $query->getResult();
        echo $twig->render("user/$menu.html", array('sekolah' => $sekolah, 'items' => $selectResult));
        die();
    }

    if ($menu == 'bantuan') {
        if (!empty($_GET['page']) && !empty($_GET['id'])) {
            $f = $entity_manager->find('Edusite\Model\Bantuan', $_GET['id']);
            $data = array('sekolah' => $sekolah,'b' => $f);

            echo $twig->render("user/updateBantuan.html", $data);
            die();
        }
        $query = $entity_manager->createQuery("SELECT f FROM Edusite\Model\Sekolah s JOIN Edusite\Model\Bantuan f WHERE f.sekolah = $sekolahId ORDER BY f.tahun ASC");
        $selectResult = $query->getResult();
        echo $twig->render("user/$menu.html", array('sekolah' => $sekolah, 'items' => $selectResult));
        die();
    }

    /** Paud menus */
    if ($menu == 'jumlahsiswa') {
        echo $twig->render("user/$menu.html", array('sekolah' => $sekolah));    
        die();
    }
    
    if ($menu == 'image') {
        echo $twig->render("user/$menu.html", array('sekolah' => $sekolah));    
        die();
    }

    if ($menu == 'alamat') {
        // Get kecamatan list
        $kecItems = $entity_manager->getRepository('Edusite\Model\Kecamatan')->findAll();
        echo $twig->render("user/$menu.html", array(
            'sekolah' => $sekolah,
            'kecItems' => $kecItems
        ));    
        die();
    }

    echo $twig->render("user/$menu.html", array('sekolah' => $sekolah));
    die();

?>