<?php
require_once("connect.php");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nume = $_POST['nume'];
    $email = $_POST['email'];
    $stmt = $connect->prepare("INSERT INTO user (nume, email) VALUES (?, ?)");
    $stmt->bind_param("ss", $nume, $email);
    $stmt->execute();
    header('Location: eligibil-payment.php');
}
?>

