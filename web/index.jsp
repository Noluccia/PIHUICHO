<%-- 
Document   : main
Created on : 13/06/2017, 07:20:56 PM
Author     : UPEU
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Expires" content="0" />
        <meta http-equiv="Pragma" content="no-cache" />
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Ventas</title>
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
        <link rel=icon href='/imagenes/icono.png' sizes="32x32" type="image/png">

        <script type="text/javascript">
            if (history.forward(1)) {
                location.replace(history.forward(1));
            }
        </script>    
        <script>
            window.oncontextmenu = function () {
                return false;
            };
        </script>

    </head>
    <body id="aaa" >

        <div class="container-fluid">
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container"> 
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span> 
                        </button>
                        <a target="_blank" href="#" class="navbar-brand"><img id="imagen-piu" src="imagenes/pihuicho-logo.png" class="img-rounded" alt="x" /></a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav" id="navegador">
                            <li><a href="#"><img id="img" src="imagenes/home.png" class="img-rounded" alt="x" style="width: 20%; height: 20%"/>Inicio</a></li>
                            <li class="dropdown" id="menureportli">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img id="img" src="imagenes/reportes.png" class="img-rounded" alt="x" />Libros
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu" id="menu">
                                    <li><a href='#' id='rep' onclick='listarPrestamos()'>Prestamos</a></li>
                                </ul>
                            </li> 
                            <li class="dropdown" id="menuprodli">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img id="img" src="imagenes/carrito.png" class="img-rounded" alt="x" />Productos
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu" id="menuprod"></ul>
                            </li>  
                            <li class="dropdown" id="menuventasli">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img id="img" src="imagenes/ventas.png" class="img-rounded" alt="x" />Ventas
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu" id="menuventas"></ul>
                            </li>  
                            <li class="dropdown" id="menucrudli">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img id="img" src="imagenes/crud.png" class="img-rounded" alt="x" />Mantenimiento
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu" id="menucrud"></ul>
                            </li> 
                        </ul>
                    </div>
                </div>
            </div>
        </div> 
        <!-- /container -->

        <div class="container" id="contenido"></div>

        <div class="container" id="mensaje"></div>
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/main.js" type="text/javascript"></script>

        <script>

            setTimeout(function () {
                $(".alert").fadeTo(500, 0).slideUp(500, function () {
                    $(this).remove();
                });
            }, 4000);
        </script>
    </body>
</html>
