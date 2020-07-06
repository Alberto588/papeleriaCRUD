<%-- 
    Document   : agregarProducto
    Created on : 2 jul. 2020, 7:53:07
    Author     : Alberto
--%>

<%@page import="Dao.productos"%>
<%@page import="Dao.productosBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar producto</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <%
        boolean valor;
    
        String produc=request.getParameter("producto");
        double precio=Double.parseDouble(request.getParameter("precio"));
        int unidades=Integer.parseInt(request.getParameter("unidades"));
        double descuento=Double.parseDouble(request.getParameter("descuento"));
        int idMarca=Integer.parseInt(request.getParameter("idMarca"));
        
        productosBD pro=new productosBD();
        valor=pro.agregarProducto(new productos(produc,precio,unidades,descuento,idMarca));
        
        if(valor){
            %>
            <br>
            <div class="alert alert-success" role="alert">
                <h3>Se ha agregado el producto correctamente</h3>
            </div>
        <%
        }else{
            %>
            <div class="alert alert-danger" role="alert">
                <h3>No se agrego el producto</h3>
            </div>
        <%  
        }
        %>
        <br>
        <div class="shadow-lg p-3 mb-5 bg-white rounded"><a class="btn btn-primary btn-block" href="index.jsp">Regresar</a></div>
        
    </body>
</html>
