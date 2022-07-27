<?php
require_once '../connection.php';
$connection = new DbConnection();
$dbc = $connection->Connect();

$user = $_POST["user"];
$password = $_POST["password"];
$q = "SELECT*FROM useradmin where user='$user' and password='$password'";
$userQuery = $dbc->query($q);
$result = $userQuery->fetch_array(MYSQLI_BOTH);

if(strlen($user) > 12 or strlen($password) > 12){
    $user = '';
    $password = '';
}


if ($result && $user == $result['user'] && $password == $result['password']) {
    session_start();
    $_SESSION['user'] = $user;
    header("Location:../../formCRUD.php");
} else {
    $e = 'Usuario y/o contraseña incorrectos.';
    header("Location:./login.php?e=$e");
}
