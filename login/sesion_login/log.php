<?php
require "connection.php";
session_start();
$user = $_POST["user"];
$password = $_POST["password"];

$q = "SELECT*FROM useradmin where user='$user' and password='$password'";
$result = mysqli_query($connection, $q);
$rows = mysqli_num_rows($result);

if ($rows) {
    echo "Se ingresó";
} else {
    echo "No se ingresó :(";
}
