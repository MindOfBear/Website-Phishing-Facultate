<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$database = 'db_phishing';

$connect = new mysqli($servername, $username, $password, $database);
if($connect->connect_error):
    die("Ne pare rau, a aparut o eroare!") . $connect->connect_error;
endif;
?>