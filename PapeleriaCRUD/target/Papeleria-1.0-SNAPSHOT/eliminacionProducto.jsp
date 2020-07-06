<%-- 
    Document   : eliminacionUsuario
    Created on : 3 jul. 2020, 7:21:38
    Author     : Alberto
--%>

<%@page import="Dao.productos"%>
<%@page import="Dao.productosBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminacion producto</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <%
        boolean valor;
        int id = Integer.parseInt(request.getParameter("id"));

        productosBD pro = new productosBD();
        valor = pro.eliminarProducto(new productos(id));
        if (valor){%>
            <br>
            <div class="alert alert-success" role="alert">
                <h3>El producto ha sido eliminado..</h3>
            </div>
        <%
        } else {
        %>
            <div class="alert alert-danger" role="alert">
                <h3>Error: No se pudo eliminar el producto</h3>
            </div>
        <%
        }
        %>
        <br>
        <div class="shadow-lg p-3 mb-5 bg-white rounded"><a class="btn btn-primary btn-block" href="index.jsp">Regresar</a></div>

    </body>
</html>
