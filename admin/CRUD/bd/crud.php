<?php

include_once './connection.php';

$bdc = new DbConnection();
$connection = $bdc->Connect();
$id = (isset($_POST['id'])) ? $_POST['id'] : '';
$title = (isset($_POST['title'])) ? $_POST['title'] : '';
$description = (isset($_POST['description'])) ? $_POST['description'] : '';
$spoiler =  (isset($_POST['spoiler'])) ? $_POST['spoiler'] : '';
$date = date('d-m-y');


switch ($_POST['option']) {

    case 1:
        $sql = "INSERT INTO reviews (title, text, spoiler, date) VALUES ('$title', '$description', '$spoiler', '$date')";
        mysqli_query($connection, $sql);

        $sql = "SELECT id, title, spoiler, date, text FROM reviews ORDER BY id DESC LIMIT 1";
        $fetch = mysqli_query($connection, $sql);
        $data = mysqli_fetch_array($fetch);
        break;
    case 2:
        $sql = "UPDATE reviews SET title='$title', text='$description', spoiler='$spoiler' WHERE id='$id'";
        mysqli_query($connection, $sql);

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
