<%-- 
    Document   : eliminarMarca
    Created on : 3 jul. 2020, 16:52:26
    Author     : Alberto
--%>

<%@page import="Dao.marcas"%>
<%@page import="Dao.marcasBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar marca</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
         <%
            int id = 0;
            String marca = "";
            if (request.getParameter("id") != null) {
                id = Integer.parseInt(request.getParameter("id"));
                marcasBD mar = new marcasBD();
                marca= mar.obtenerMarca(new marcas(id));
            }
        %>
        <div class="container text-center">
            <h3><i>¿Esta seguro que quiere eliminar la marca: <%=marca%></i></h3>
            <br>
            <form action="eliminacionMarca.jsp" method="POST">
                <div class="form-row">
                    
                    <input type="hidden" class="form-control" value="<%=id%>" name="id"/>
                    
                    <div class="col">
                        <input type="submit" class="btn btn-danger btn-block"  value="Eliminar"/>
                    </div>
                    
                    <div class="col">
                        <div><a class="btn btn-warning btn-block" href="index.jsp">Cancelar</a></div>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
