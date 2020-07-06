<%-- 
    Document   : actualizarProducto
    Created on : 6 jul. 2020, 11:59:18
    Author     : Alberto
--%>

<%@page import="Dao.productos"%>
<%@page import="Dao.productosBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar producto</title>
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
        int id=Integer.parseInt(request.getParameter("idProducto"));
        
        productosBD pro=new productosBD();
        valor=pro.actualizarProducto(new productos(id,produc,precio,unidades,descuento,idMarca));
        
        if(valor){
            %>
            <br>
            <div class="alert alert-success" role="alert">
                <h3>El producto ha sido actualizado</h3>
            </div>
        <%
        }else{
            %>
            <div class="alert alert-danger" role="alert">
                <h3>No se pudo actualizar el producto</h3>
            </div>
        <%  
        }
        %>
        <br>
        <div class="shadow-lg p-3 mb-5 bg-white rounded"><a class="btn btn-primary btn-block" href="index.jsp">Regresar</a></div>
        
    </body>
</html>