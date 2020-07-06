<%-- 
    Document   : formularioMarca
    Created on : 2 jul. 2020, 19:24:59
    Author     : Alberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario marca</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1 style="text-align:left; color:orange;">Agregar marca</h1>
            <br>
            <form action="agregarMarca.jsp" method="POST">
                <div class="form-group">
                    <div class="form-group">
                        <h5>Nombre de la marca:</h5>
                        <input type="text" value="" class="form-control" placeholder="*Nombre marca" name="marca" required/>
                    </div>

                    <input type="hidden" name="idProducto" value="">

                    <div>
                        <br>
                        <button type="submit" class="btn btn-success btn-lg btn-block">Enviar<img src="send.png" width="30" height="30"></button>
                    </div>
                    
                    <div>
                        <br>
                        <a class="btn btn-primary btn-block" href="index.jsp"><img src="home.png" width="30" height="30">Regresar</a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
