<?php

include_once './connection.php';

$bdc = new DbConnection();
$connection = $bdc->Connect();

$id = $_POST['id'];
$title = $_POST['title'];
$description = $_POST['description'];
$image = $_FILES['image']['name'];
$spoiler =  $_POST['spoiler'];
$date = date('d-m-y');


switch ($_POST['option']) {
    case 0:
        $sql = "SELECT * FROM reviews WHERE id='$id'";
        $fetch = mysqli_query($connection, $sql);
        $data = mysqli_fetch_array($fetch);
        break;
    case 1:
        $sql = "INSERT INTO reviews (title, text, image, spoiler, date) VALUES ('$title', '$description', '$image', '$spoiler', '$date')";
        mysqli_query($connection, $sql);
        upload_image();
        $sql = "SELECT id, title, spoiler, date, text FROM reviews ORDER BY id DESC LIMIT 1";
        $fetch = mysqli_query($connection, $sql);
        $data = mysqli_fetch_array($fetch);
        break;
    case 2:
        $sql = "UPDATE reviews SET title='$title', text='$description', image='$image', spoiler='$spoiler', date='$date' WHERE id='$id'";
        mysqli_query($connection, $sql);
        upload_image();
        $sql = "SELECT id, title, spoiler, date, text FROM reviews WHERE id='$id' ";
        $fetch = mysqli_query($connection, $sql);
        $data = mysqli_fetch_array($fetch);
        break;
    case 3:
        $sql = "DELETE FROM reviews WHERE id='$id'";
        mysqli_query($connection, $sql);
        break;
}
print json_encode($data, JSON_UNESCAPED_UNICODE);
$connection = null;

function upload_image()
{
    $destiny = "../../../panel/img/";
    move_uploaded_file($_FILES['image']['tmp_name'], $destiny . $_FILES['image']['name']);
}
