<?php
include_once 'admin/CRUD/bd/connection.php';
$connection = new DbConnection();
$dbc = $connection->Connect();
$q = "SELECT * FROM reviews ORDER BY id DESC";
$reviewQuery = $dbc->query($q);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameReview</title>
    <link rel="stylesheet" href="./CSS/main.css">
    <link rel="stylesheet" href="./CSS/home/header.css">
    <link rel="stylesheet" href="./CSS/home/nav.css">
    <link rel="stylesheet" href="./CSS/home/grid.css">
    <link rel="stylesheet" href="./CSS/elements.css">
    <link rel="stylesheet" href="./CSS/home/section.css">
    <link rel="stylesheet" href="/panel/panel.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://kit.fontawesome.com/2cb25f2c39.js" crossorigin="anonymous"></script>
</head>

<body>
    <header>
        <div>
            <nav>
                <input type="checkbox" id="check">
                <label for="check" class="bar-btn">
                    <i class="fas fa-bars"></i>
                </label>
                <ul class="nav-menu">
                    <li><a href="#">Home</a></li>
                    <li><a href="/admin/CRUD/bd/sesion_login/login.php">Iniciar sesión</a></li>
                    <li><a href="#">Sobre nosotros</a></li>
                    <li><a href="#">Contacto</a></li>
                </ul>
            </nav>
            <div>
                <div class="banner-text">
                    <h1>Game<span>Review</span></h1>
                    <h2>Recuerda que GameReview nunca te dirá spoilers sin avisarte</h2>
                </div>
            </div>
    </header>
    <div class="text-bar">
        <p>Todo lo que debes saber antes de jugar</p>
    </div>
    <div id="divider"></div>
    <div class="title">
        <h1>Chequea nuestras <span>reseñas</span></h1>
    </div>

    <div class="container">
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-container mySwiper">
            <div class="swiper-wrapper body-panel">
                <?php
                while ($registerReviews = $reviewQuery->fetch_array(MYSQLI_BOTH)) {
                    $spoiler = $registerReviews['spoiler'];
                    if ($spoiler == 1) {
                        $spoiler = '<a class="have-spoiler-alert">Con spoilers</a>';
                    } else {
                        $spoiler = '<a class="no-spoiler-alert">Sin spoilers</a>';
                    }
                    echo '<div class="swiper-slide">
                    <img src="/panel/img/construction-image.jpg" alt="">
                    <div class="card-description">
                        <div class="card-title">
                            <h4>' . $registerReviews['title'] . '</h4>
                            <a>' . $spoiler . '</a>
                        </div>
                        <div class="card-text">
                            <p>Publicada el ' . $registerReviews['date'] . '</p>
                            <br>
                        </div>
                        <div>
                            <p>' . $registerReviews['text'] . '</p>
                            
                        </div>
                    </div>
                </div>';
                }
                ?>

            </div>
        </div>
    </div>
    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="/panel/panel.js"></script>

</body>

</html>