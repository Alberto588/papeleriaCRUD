<%-- 
    Document   : editarProducto
    Created on : 6 jul. 2020, 9:44:00
    Author     : Alberto
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<marcas> mar = new marcasBD().listadoMarcas();
    int idProducto = 0;
    String pro = "";
    double precioU=0;
    int unidades=0;
    double descuento=0;
    int idMarca=0;
    String marca="";

    if (request.getParameter("id") != null) {
        idProducto = Integer.parseInt(request.getParameter("id"));

        productosBD p = new productosBD();
        pro = p.obtenerNomProducto(new productos(idProducto));
        precioU=p.obtenerPrecioProducto(new productos(idProducto));
        unidades=p.obtenerUnidadesProducto(new productos(idProducto));
        descuento=p.obtenerDescuentoProducto(new productos(idProducto));
        idMarca=p.obtenerIdMarca(new productos(idProducto));
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Productos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1 style="text-align:left; color:orange;">Editar producto</h1>
            <br>
            <form action="actualizarProducto.jsp" method="POST">
                <div class="form-group">
                    <div class="form-group">
                        <label><h5>Nombre del producto:</h5></label>
                        <input type="text" value="<%=pro%>" class="form-control" placeholder="*Nombre producto" name="producto" required/>
                    </div>
                    <div class="form-group">
                        <label><h5>Precio unitario:</h5></label>
                        <input type="number" class="form-control" value="<%=precioU%>" placeholder="*Precio unitario" name="precio" step="0.01" min="0.00" required/>
                    </div>

                    <div class="form-group">
                        <label><h5>Numero de unidades:</h5></label>
                        <input type="number" class="form-control" value="<%=unidades%>" placeholder="*N° de unidades" name="unidades" min="0" required/>
                    </div>

                    <div class="form-group">
                        <label><h5>Porcentaje de descuento:</h5></label>
                        <input type="number" class="form-control" value="<%=descuento%>" placeholder="Porcentaje de descuento" name="descuento" step="0.01" min="0.00" required/>
                    </div>

                    <div class="form-group">
                        <label><h5>Marca:</h5></label>
                        <select class="form-control" name="idMarca" required>
                            <%
                                for (marcas marc : mar) {
                                marcasBD m=new marcasBD();
                                marca=m.obtenerMarca(new marcas(idMarca));
                                }
                            %>
                            <option value="<%=idMarca%>"><%=marca%></option>
                            <%
                            for (marcas marc : mar) {
                            %>
                                <option value="<%=marc.getId_marca()%>"><%=marc.getMarca()%></option>
                            <%
                            }
                            %>
                        </select>
                    </div>
                    <input type="hidden" name="idProducto" value="<%=idProducto%>">
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