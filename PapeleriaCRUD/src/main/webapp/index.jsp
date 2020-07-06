<%-- 
    Document   : index
    Created on : 3 jun. 2020, 21:39:35
    Author     : Alberto
--%>

<%@page import="java.util.List"%>
<%@page import="Dao.*"%>
<%@page import="java.sql.*"%>   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Papelería</title>
    </head>
    <body>
        <h1 style="text-align:center; color:blue;"> CRUD Papelería</h1>

        <%
            List<productos> produc = new productosBD().listadoProductos();
            String marca="";
        %>
        <div class="container">
            <table class="table table-striped table-dark">
                <thead>
                    <tr>
                        <td colspan="6"><h2>Lista de los productos</h2></td>
                        <td colspan="2"><a class="btn btn-success btn-block" href="formularioProducto.jsp"><img src="plus.png" width="30" height="30">Agregar producto</a></td>
                    </tr>
                    <tr>
                        <th>idProducto</th>
                        <th>Producto</th> 
                        <th>Precio Unitario</th>
                        <th>Unidades</th> 
                        <th>Descuento</th>
                        <th>Marca</th>
                    </tr>
                </thead>
                <%for (productos produ : produc) {
                %>
                <tr>
                    <td><%out.println(produ.getId_producto());%></td>
                    <td><%out.println(produ.getNombreProducto());%></td>
                    <td><%out.println("$ " + produ.getPrecioUnitario());%></td>
                    <td><%out.println(produ.getUnidades());%></td>
                    <td><%out.println(produ.getDescuento() + " %");%></td>
                    
                    <%
                        int id=produ.getIdMarca();
                        marcasBD m=new marcasBD();
                        marca=m.obtenerMarca(new marcas(id));
                    %>
                    <td><%out.println(marca);%></td>
                    <td><a class="btn btn-warning btn-block" href="editarProducto.jsp?id=<%=produ.getId_producto()%>"><img src="pencil.png" width="30" height="30">Editar producto</a></td>
                    <td><a class="btn btn-danger btn-block" href="eliminarProduct.jsp?id=<%=produ.getId_producto()%>"><img src="remove.png" width="30" height="30">Eliminar producto</a></td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
        <%
            out.println("<br>");
            List<marcas> mar = new marcasBD().listadoMarcas();
            out.println("<br>");
        %>
        <div class="container">
            <table class="table table-striped table-dark">
                <thead>
                    <tr>
                        <td colspan="2"><h2>Lista de marcas</h2></td>
                        <td><a class="btn btn-success btn-block" href="formularioMarca.jsp"><img src="plus.png" width="30" height="30">Agregar marca</a></td>
                    </tr>
                    <tr>
                        <th>idMarca</th>
                        <th>marca</th>
                    </tr>
                </thead>
                <%
                    for (marcas marc : mar) {
                %>
                <tr>
                    <td><%out.println(marc.getId_marca());%></td>
                    <td><%out.println(marc.getMarca());%></td>
                    <td colspan="2"><a class="btn btn-danger btn-block" href="eliminarMarca.jsp?id=<%=marc.getId_marca()%>"><img src="remove.png" width="30" height="30">Eliminar marca</a></td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </body>
</html>
