<?php
  $DB_NAME = 'edusite_db2';
  $DB_USER = 'edusite_db2';
  $DB_PASSWORD = 'edusite_db2';
  $DB_HOST = 'db4free.net';

  $db = new mysqli($DB_HOST, $DB_USER, $DB_PASSWORD, $DB_PASSWORD, 3307);
  var_dump($db);
?>