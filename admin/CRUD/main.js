$(document).ready(function () {
    reviewTable = $("#reviewTable").DataTable({
        /* "columnDefs": [{
             "targets": -1,
             "data": null,
             // "defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-primary btnEdit'>Editar</button><button class='btn btn-danger btnDelete'>Borrar</button></div></div>"
         }],*/

        //Para cambiar el lenguaje a español
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
            "infoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sSearch": "Buscar:",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "Último",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            },
            "sProcessing": "Procesando...",
        }
    });

    $("#btnNew").click(function () {
        $("#formReview").trigger("reset");
        $(".modal-header").css("background-color", "#28a745");
        $(".modal-header").css("color", "white");
        $(".modal-title").text("Nueva Reseña");
        $("#modalCRUD").modal("show");
        id = null;
        option = 1; //alta
    });

    var row; //capturar la row para editar o borrar el registro

    //botón EDITAR    
    $(document).on("click", ".btnEdit", function () {
        row = $(this).closest("tr");
        id = parseInt(row.find('td:eq(0)').text());
        title = row.find('td:eq(1)').text();
        spoiler = row.find('td:eq(2)').text();
        description = '';


        $("#title").val(title);
        $("#description").val(description);
        $("#spoiler").val(spoiler);
        option = 2; //editar

        $(".modal-header").css("background-color", "#007bff");
        $(".modal-header").css("color", "white");
        $(".modal-title").text("Editar Reseña");
        $("#modalCRUD").modal("show");

    });

    //botón BORRAR
    $(document).on("click", ".btnDelete", function () {
        row = $(this);
        id = parseInt($(this).closest("tr").find('td:eq(0)').text());
        option = 3 //borrar

        var answer = confirm("¿Está seguro de eliminar el registro: " + id + "?");
        if (answer) {
            $.ajax({
                url: "./bd/crud.php",
                type: "POST",
                dataType: "json",
                data: { option: option, id: id },
            });
            reviewTable.row(row.parents('tr')).remove().draw();
        }
    });

    $("#formReview").submit(function (e) {
        e.preventDefault();
        title = $.trim($("#title").val());
        description = $.trim($("#description").val());
        if (document.getElementById('spoiler').checked) { spoiler = 1 }
        else { spoiler = 0 }
        image = $("#image").val();
        $.ajax({
            url: "./bd/crud.php",
            type: "POST",
            dataType: "json",
            data: { id: id, title: title, description: description, image: image, spoiler: spoiler, option: option },
            success: function (data) {
                console.log(data);
                id = data[0];
                title = data[1];
                spoiler = data[2];
                if (spoiler == 1) { spoiler = "Sí" }
                else { spoiler = "No" }
                date = data[3];
                if (option == 1) { reviewTable.row.add([id, title, spoiler, date]).draw(); }
                else { reviewTable.row(row).data([id, title, spoiler, date]).draw(); }
                console.log("registro guardado");
            }
        });
        $("#modalCRUD").modal("hide");
    });
});