<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . '/bootstrap.php';
    session_start();
    $mysqli = new mysqli($DB_HOST, $DB_USER,$DB_PASSWORD, $DB_NAME);

    $target_dir = $_SERVER['DOCUMENT_ROOT'] . "/fuploads/";
    $just_name = basename($_FILES["gambar"]["name"]);
    $target_file = $target_dir . $just_name;

    $extension = pathinfo($just_name)['extension'];
    $randomName = substr(str_shuffle(MD5(microtime())), 0, 10);
    $newName = $randomName . '.' . $extension;

    $target_file = $target_dir . $newName;

    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    // Check if image file is a actual image or fake image
    if(isset($_POST["title"])) {
        $check = getimagesize($_FILES["gambar"]["tmp_name"]);
        if($check !== false) {
            $uploadOk = 1;
        } else {
            $uploadOk = 0;
        }
    }
    // Check if file already exists
    if (file_exists($target_file)) {
        http_response_code(500);
        die("Sorry, file already exists.");
        $uploadOk = 0;
    }
    // Check file size
    if ($_FILES["gambar"]["size"] > 5000000) {
        http_response_code(500);
        die("Sorry, your file is too large.");
        $uploadOk = 0;
    }
    // Allow certain file formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" ) {
        http_response_code(500);
        die("Sorry, only JPG, JPEG, PNG & GIF files are allowed.");
        $uploadOk = 0;
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        http_response_code(500);
        die("Sorry, your file was not uploaded.");
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
        } else {
            http_response_code(500);
            die("Sorry, there was an error uploading your file.");
        }
    }

    $urlGAMBAR = '/fuploads/' . $newName;
    $title = $_POST['title'];
    $subtitle = $_POST['subtitle'];
    $content = $mysqli->real_escape_string($_POST['content']);

    $qs = "
      INSERT INTO news (title, subtitle, gambar, content) VALUES (
        '$title',
        '$subtitle',
        '$urlGAMBAR',
        '$content'
      )
    ";
    $queryResult = $mysqli->query($qs);
    if (!$queryResult) {
      http_response_code(500);
      die('Error insert data into news');
    } else {
      http_response_code(201);
      $insert_id = $mysqli->insert_id;
      $result = [ 'id' => $insert_id ];
      echo json_encode($result);
    }