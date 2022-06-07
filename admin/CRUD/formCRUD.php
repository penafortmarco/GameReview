<?php
include_once './bd/connection.php';
$connection = new DbConnection();
$dbc = $connection->Connect();
$q = "SELECT * FROM reviews";
$reviewQuery = $dbc->query($q);
?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="#" />
    <title>Administrador GR</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- CSS personalizado -->
    <link rel="stylesheet" href="main.css">


    <!--datables CSS básico-->
    <link rel="stylesheet" type="text/css" href="datatables/datatables.min.css" />
    <!--datables estilo bootstrap 4 CSS-->
    <link rel="stylesheet" type="text/css" href="datatables/DataTables-1.10.18/css/dataTables.bootstrap4.min.css">
</head>

<body>
    <header>
        <!--         <h3 class="text-center text-light">Tutorial</h3>-->
        <h4 class="text-center text-light">Sección<span class="badge badge-danger">ADMINISTRADOR</span></h4>
    </header>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <button id="btnNew" type="button" class="btn btn-success" data-toggle="modal">Nuevo</button>
            </div>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-responsive">
                    <table id="reviewTable" class="table table-striped table-bordered table-condensed" style="width:100%">
                        <thead class="text-center">
                            <tr>
                                <th>Id</th>
                                <th>Título</th>
                                <th>¿Spoilers?</th>
                                <th>Fecha de carga</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            while ($registerReviews = $reviewQuery->fetch_array(MYSQLI_BOTH)) {
                                $spoiler = $registerReviews['spoiler'];
                                if ($spoiler == 1) {
                                    $spoiler = "Sí";
                                } else {
                                    $spoiler = "No";
                                }

                                echo '<tr>
                                <td>' . $registerReviews['id'] . '</td>
                                <td>' . $registerReviews['title'] . '</td>
                                <td>' . $spoiler . '</td>
                                <td>' . $registerReviews['date'] . '</td>
                                <td>' . '</td>
                            </tr>';
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!--ADAPTAR MODAL PARA CARGA DE IMÁGENES, ARREGLAR SPOILER Y CORREGIR FORMATO DEL FORM-->
    <!--Modal para CRUD-->
    <div class="modal fade" id="modalCRUD" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="formReview" class="form">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="title" class="col-form-label">Título:</label>
                            <input type="text" class="form-control" id="title" required>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-form-label">Texto:</label>
                            <input type="text" class="form-control" id="description" required>
                        </div>
                        <div class="form-group">
                            <label for="image" class="col-form-label">Imagen:</label>
                            <input type="file" id="image">
                        </div>
                        <div class="form-group">
                            <label for="spoiler" class="col-form-label">¿Spoilers?</label>
                            <input type="checkbox" class="form-control" id="spoiler">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-dismiss="modal">Cancelar</button>
                        <button type="submit" id="btnSave" class="btn btn-dark">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- jQuery, Popper.js, Bootstrap JS -->
    <script src="jquery/jquery-3.3.1.min.js"></script>
    <!--<script src="./popper/popper.min.js"></script> -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!-- datatables JS -->
    <script type="text/javascript" src="datatables/datatables.min.js"></script>

    <script type="text/javascript" src="main.js"></script>


</body>

</html>