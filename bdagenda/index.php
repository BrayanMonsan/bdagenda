<!DOCTYPE html>
<html lang="es-MX">

<head>

    <title>Agenda Brayan Sánchez</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap v5.1.3 CDNs -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="shortcut icon" href="https://fca.unach.mx/images/logo_facultad.png">
    <!-- CSS File -->
    <link rel="stylesheet" href="style.css">

</head>
<?php

    include 'conexion.php';
    $conexion = new conexion_db();
    $conexion->creaconexion();

?>
<?php
if(isset($body) || $body == true)
{
    echo '<body style="background-color:black">';
} else {
    echo '<body style="background-color:black ">';
}

?>
<body background-color="black">

<div class="px-4 py-5 px-md-5 text-center text-lg-start" style="background-color: hsl(0, 5%, 0%)">
<div class="container">
    <div class="row gx-lg-5 align-items-center">
    <div class="col-lg-6 mb-5 mb-lg-0">
    <h1 class="my-5 display-3 fw-bold ls-tight">
           
    <font color="bf930d">Bienvenido</font></Br>
            <span class="text-primary"><font color="white">Mi base de datos UNACH</font></span>
          </h1>
          <img src="https://upload.wikimedia.org/wikipedia/commons/3/33/Escudo_unach.png" alt="Logo UNACH" width="450px" height="300px">
        </div>

        <div class="col-lg-6 mb-5 mb-lg-0">
          <div class="card" style="background-color: hsl(0, 5%, 0%)">
            <div class="card-body py-5 px-md-5">
              <form class="needs-validation">
                <div class="form-group was-validated">
                  <label class="form-label" for="email"><font color="white">Correo electronico</label>
                  <input class="form-control" type="email" id="email" required>
                  <div class="invalid-feedback">
                    Ingresa un correo electronico valido  
                  </div>
              </div>
                <div class="form-group was-validated">
                  <label class="form-label" for="password">Constraseña</label>
                  <input class="form-control" type="password" id="password" required>
                  <div class="invalid-feedback">
                      Ingresa una contraseña valida
                  </div>
              </div>
              <div class="form-group form-check">
                  <input class="form-check-input" type="checkbox" id="check">
                  <label class="form-check-label" for="check">Recuerda mi nombre de usuario</label>
              </div>
                <input class="btn btn-success w-40" type="submit" value="Iniciar sesion">
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>

</html>