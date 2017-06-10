<?php
    $dts="mysql:dbname=prueba;host=localhost";
    $user="root";
    $password="";

    try{
        $pdo=new pdo($dts,$user,$password);
        //echo "conexion exitosa";
    }catch (pdoexception $e){
        echo "error" . $e->getMessage();
    }