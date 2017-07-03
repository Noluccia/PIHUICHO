<%-- 
    Document   : rol
    Created on : 14/06/2017, 08:41:49 PM
    Author     : UPEU
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/moment.js" type="text/javascript"></script>
        <script src="js/moment-with-locales.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container" style="width: 700px;">            
            <div class="row">
                <div class="col-md-12">

                    <hr>
                    <h3><i class="fa fa-sitemap" aria-hidden="true" style="color: #cccc00"></i><strong style="margin-left: 5px;">Categorias</strong></h3>
                    <hr> 
                    <br>
                    <div class="pull-right">
                        <button class="btn btn-success" data-toggle="modal" data-target="#add_new_record_modal"><i class="fa fa-plus" aria-hidden="true"></i></button>
                    </div>                                  
                </div>
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID Prestamo</th>
                        <th>ID Cliente</th>
                        <th>Fecha Prestamo</th>
                        <th>Fecha Devolucion</th>
                        <th colspan="2">Operacion</th>
                    </tr>
                </thead>
                <tbody id="tablita">
                <c:forEach items="${lista}" var="cat">
                    <tr>
                        <td>${cat.idp}</td> 
                        <td>${cat.nomcli}</td> 
                        <td>${cat.fechap}</td> 
                        <td>${cat.fechad}</td> 
                        <td>
                        <td><button onclick="cargarDatosPrestamos(${cat.idp})" class="btn btn-warning"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                            <button onclick="eliminarCategoria(${cat.idp})" class="btn btn-danger"><i class="fa fa-times" aria-hidden="true"></i></button></td>
                        </td> 
                    </tr>
                </c:forEach> 
                </tbody>

            </table>
        </div>

         <div class="modal fade" id="update_user_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Modificar Prestamo</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="first_name">ID CLIENTE</label>
                            <select class="form-control" id="roles2">
                            </select>
                            <input type="hidden" id="prestamoid"/>
                        </div>
                        <div class="form-group">
                            <label for="first_name">Fecha Prestamo</label>
                            <input type="date" id="fechap" class="form-control" placeholder="Ingrese fecha de prestamo"/>

                        </div>
                        <div class="form-group">
                            <label for="first_name">Fecha Devolucion</label>
                            <input type='date' id="fechad" class="form-control" placeholder="Ingrese fecha de devolucion"/>
        
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelars</button>
                        <button type="button" class="btn btn-primary" onclick="ModificarPrestamos()"><i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            window.setTimeout(function () {
                $(".alert").fadeTo(500, 0).slideUp(500, function () {
                    $(this).remove();
                });
            }, 4000);
            mom
            
        </script>
  
    </body>
</html>
