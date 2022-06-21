<?php
session_start();
if (isset($_SESSION['user'])) {
    header('Location:../../formCRUD.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/CSS/main.css">
    <link rel="stylesheet" href="/admin/login.css">
    <title>Inicio de Sesión</title>
</head>

<body>
    <form class="form-register" action="./log.php" method="POST">
        <h4>Inicia sesión</h4>
        <?php
        if (isset($_GET['e'])) {
            echo "<p style= 'margin-bottom: 4px'>" . $_GET['e'] . '</p>';
        }
        ?>
        <input class="controls" id="name" name="user" type="text" placeholder="Nombre de usuario">
        <input class="controls" id="password" name="password" type="password" placeholder="Contraseña">
        <p id="error-msg">La contraseña es demasiado corta.</p>
        <p>Esta opción es solo para administradores.</p>
        <input class="botons" type="submit" value="Iniciar sesión" id="log-btn">
        <p><a href="../../../../index.php">Volver al Home</a></p>
    </form>
    <script src="login.js"></script>
</body>

</html>