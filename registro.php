<?php 
    var_dump($_POST);
    
    //conexión a Base de Datos
    $conexion = mysqli_connect("localhost","root","","mibase");
    
    if (mysqli_connect_errno()) {

        echo "error de conexión";

    } else {

        echo "WELCOME FRIEND <br><br>";

    }
    //Obtener data
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $correo = $_POST ['correo'];
    $cantidad = $_POST ['cantidad'];
    $categoria = $_POST ['categoria'];
    $total = 500;

    echo $nombre;
    echo $apellido;
    echo $correo;
    echo $cantidad;
    echo $categoria;
    echo $total;

    
    //Inserta de datos a la base.

   $insertar_data = "INSERT INTO compratickets(Nombre,Apellido,Correo,Entradas,Categoria,total) VALUES 
   ('$nombre','$apellido','$correo','$cantidad','$categoria','$total')";             
    
   $insertarPhp = mysqli_query($conexion,$insertar_data);
    
   
    if($insertar_data){

        echo "funciona";
        header ('refresh: 5, url=inscripto.html');

    } else {

        echo "nNoPp";
    }

 
?>