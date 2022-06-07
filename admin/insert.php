<?php
require "./sesion_login/connection.php";

if (!$connection) {
    exit();
}

if ($_FILES['image']['error']) {
    switch ($_FILES['image']['error']) {
        case 1:
            echo "Exceso de tamaño";
            break;
        case 2:
            echo "El tamaño excede de etc etc";
            break;
        case 3:
            echo "El archivo se corrompió";
        case 4:
            echo "No se subió ningún archivo";
            break;
    }
} else {
    echo "Subido correctamente";
    if (isset($_FILES['image']['name']) && ($_FILES['image']['error'] == UPLOAD_ERR_OK)) {
        $destiny = "review_img/";
        move_uploaded_file($_FILES['image']['tmp_name'], $destiny . $_FILES['image']['name']);
        echo "El archivo " . $_FILES['image']['name'] . " se ha copiado al directorio de imágenes";
    } else {
        echo "El archivo no se insertó";
    }
}
$title = $_POST['title'];
$description = $_POST['description'];
$image = $_FILES['image']['name'];
$date = date("Y-m-d");


$query = "INSERT INTO reviews (name, text, image, date) VALUES ('" . $title . "', '" . $description . "', '" . $image . "', '" . $date . "')";
$result = mysqli_query($connection, $query);
