<%-- 
    Document   : agregarMarca
    Created on : 2 jul. 2020, 20:00:28
    Author     : Alberto
--%>

<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar marca</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <%
        boolean valor;
    
        String marca=request.getParameter("marca");
        
        marcasBD mar=new marcasBD();
        valor=mar.agregarMarca(new marcas(marca));
        
        if(valor){
            %>
            <br>
            <div class="alert alert-success" role="alert">
                <h3>Se ha agregado una nueva marca</h3>
            </div>
        <%
        }else{
            %>
            <div class="alert alert-danger" role="alert">
                <h3>No puedo agregar la marca</h3>
            </div>
        <%  
        }
        %>
        <br>
        <div class="shadow-lg p-3 mb-5 bg-white rounded"><a class="btn btn-primary btn-block" href="index.jsp">Regresar</a></div>
        
    </body>
</html>
