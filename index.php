<?php
include_once 'admin/CRUD/bd/connection.php';
$connection = new DbConnection();
$dbc = $connection->Connect();
if (!$_GET) {
    header('Location:index.php?page=1');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameReview</title>
    <link rel="stylesheet" href="/bootstrap.min.css">
    <link rel="stylesheet" href="./CSS/main.css">
    <link rel="stylesheet" href="./CSS/home/header.css">
    <link rel="stylesheet" href="./CSS/home/nav.css">
    <link rel="stylesheet" href="./CSS/elements.css">
    <link rel="stylesheet" href="./panel/card-panel.css">
    <link rel="stylesheet" href="./CSS/home/footer.css">

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
                    <li><a href="#footer">Sobre nosotros</a></li>
                </ul>
            </nav>
            <div>
                <div class="banner-text">
                    <h1>Game<span>Review</span></h1>
                    <h2>Recuerda que GameReview nunca te dirá spoilers sin avisarte</h2>
                </div>
            </div>
            <div class="text-bar">
                <p>Todo lo que debes saber antes de jugar</p>
            </div>
    </header>
    <div id="divider"></div>
    <div class="title">
        <h1>Chequea nuestras <span>reseñas</span> más recientes</h1>
    </div>
    <div class="all-elements">
        <?php
        //calcula la cantidad de elementos totales en la tabla.
        $q = "SELECT * FROM reviews";
        $reviewQuery = $dbc->query($q);
        $totalElements = mysqli_num_rows($reviewQuery);
        $totalView = 8; //Establece el N máximo de elementos en la vista. 
        $pages = ceil($totalElements / $totalView);
        //<------------------------------------------------------------------------------------->//
        //Validaciones.
        if ($_GET['page'] <= 0) {
            header('Location:index.php?page=1');
        }
        if ($_GET['page'] > $pages) {
            header('Location:index.php?page='.$pages);
        }
        //<------------------------------------------------------------------------------------->//
        //Selecciona a los elementos mostrados en cada página.
        $init = ($_GET['page'] - 1) * $totalView;
        $q = "SELECT * FROM reviews ORDER BY id DESC LIMIT $init, $totalView";
        $reviewQuery = $dbc->query($q);
        //<------------------------------------------------------------------------------------->//
        //Trae a la vista a todos los elementos de la db.
        while ($registerReviews = $reviewQuery->fetch_array(MYSQLI_BOTH)) {
            $spoiler = $registerReviews['spoiler'];
            if ($spoiler == 1) {
                $spoiler = '<a class="have-spoiler-alert">SPOILERS</a>';
            } else {
                $spoiler = '<a class="no-spoiler-alert">SIN SPOILERS</a>';
            }
            echo '
                <div class="card">
                    <div class="face front">
                        <img src="/panel/img/' . $registerReviews['image'] . '" alt="">
                        <h3>' . $registerReviews['title'] . '</h3>
                        <p>' . $spoiler . '</p>
                    </div>
                    <div class="face back">
                        <h3>' . $registerReviews['title'] . '</h3>
                        <p>' . $registerReviews['text'] . '</p>
                            <div class="link">
                                <a><span>Publicada el ' . $registerReviews['date'] . '</span></a>
                            </div>
                    </div>
                </div>';
        }
        ?>
    </div>
    <nav aria-label="...">
        <ul class="pagination justify-content-center">
            <li class="page-item
                <?php
                //Deshabilita el botón en caso de no haber más páginas hacia atrás.
                echo $_GET['page'] <= 1 ? 'disabled' : ''
                ?>
            ">
                <a class="page-link" href="index.php?page=<?php echo $_GET['page'] - 1 ?>">
                    Anterior
                </a>
            </li>

            <?php for ($i = 0; $i < $pages; $i++) : //Genera la vista de N páginas.
            ?>
                <li class="page-item 
                    <?php
                    //Selecciona la vista de la página actual.
                    echo $_GET['page'] == $i + 1 ? 'active' : ''
                    ?> ">
                    <a class="page-link" href="index.php?page=<?php echo $i + 1 ?>">
                        <?php echo $i + 1 ?>
                    </a>
                </li>
            <?php endfor ?>

            <li class="page-item
                <?php
                //Deshabilita el botón en caso de no haber más páginas hacia atrás.
                echo $_GET['page'] >= $pages ? 'disabled' : ''
                ?>
            ">
                <a class="page-link" href="index.php?page=
                    <?php echo $_GET['page'] + 1 ?>">
                    Siguiente
                </a>
            </li>
        </ul>
    </nav>

    <footer class="pie-pagina" id="footer">
        <div class="grupo-1">
            <div class="box">
                <figure>
                    <a>
                        <p>GameReview es un sitio web independiente que busca exponer críticas constructivas acerca de
                            videojuegos de todo
                            tipo.</p>
                    </a>
                </figure>
            </div>
            <div class="box">
                <h2>GAME REVIEW</h2>
                <p>Recuerda que nunca te diremos un spoiler sin antes avisarte. ¡Diviertete!</p>
            </div>
            <div class="box">
                <h2>Contacta al programador:</h2>
                <div class="red-social">
                    <a href="https://github.com/penafortmarco" class="fa fa-github"></a>
                    <a href="https://www.linkedin.com/in/marcopenafort/" class="fa fa-linkedin"></a>
                    <p>penafortmarco@gmail.com</p>
                </div>
            </div>
        </div>
        <div class="grupo-2">
            <small>Las reviews son escritas por el WebMaster y administrador del sitio.</small>
        </div>
    </footer>
</body>

</html>