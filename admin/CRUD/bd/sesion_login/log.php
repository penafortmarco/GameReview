<?php
require_once '../connection.php';
$bdc = new DbConnection();
$connection = $bdc->Connect();

$user = $_POST["user"];
$password = $_POST["password"];

$q = "SELECT*FROM useradmin where user='$user' and password='$password'";
$result = mysqli_query($connection, $q);


if ($result) {
    session_start();
    $_SESSION['user'] = $user;
    header("Location:../../formCRUD.php");
}
