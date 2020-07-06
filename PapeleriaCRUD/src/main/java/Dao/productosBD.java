/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Config.conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Alberto
 */
public class productosBD {
     //Atributos SQL
    private static final String listadoProductos="Select * from productos";
    private static final String obtenerValores="SELECT * from productos where idProducto=?";
    private static final String agregar="INSERT INTO productos SET nombreProducto=?, precioUnitario=?, unidades=?, descuento=?, idMarca=?";
    private static final String actualizarProducto="UPDATE productos SET nombreProducto=?,"
            + "precioUnitario=?, unidades=?,descuento=?,idMarca=? WHERE idProducto=?";  
    private static final String eliminarProducto="DELETE FROM productos WHERE idProducto=?";
    
    //Atributos de conexion
    private Connection conexion=new conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    public List<productos> listadoProductos() throws SQLException{
        List<productos> produc=new ArrayList<>();
        this.stmt=this.conexion.prepareStatement(this.listadoProductos);
        this.rs=this.stmt.executeQuery();
        while(this.rs.next()){
            produc.add(new productos(this.rs.getInt("idProducto"),this.rs.getString("nombreProducto"),
                    this.rs.getDouble("precioUnitario"),this.rs.getInt("unidades"),this.rs.getDouble("descuento"),
                    this.rs.getInt("idMarca")));
        }
        
        return produc;
    }
    
    public String obtenerNomProducto(productos Productos) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.obtenerValores);
        String producto="";
        this.stmt.setInt(1, Productos.getId_producto());
        this.rs=stmt.executeQuery();
        rs.next();
        producto=rs.getString("nombreProducto");
        return producto;
    }
    
    public double obtenerPrecioProducto(productos Productos) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.obtenerValores);
        double precio=0;
        this.stmt.setInt(1, Productos.getId_producto());
        this.rs=stmt.executeQuery();
        rs.next();
        precio=rs.getDouble("precioUnitario");
        return precio;
    }
    
    public int obtenerUnidadesProducto(productos Productos) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.obtenerValores);
        int uni=0;
        this.stmt.setInt(1, Productos.getId_producto());
        this.rs=stmt.executeQuery();
        rs.next();
        uni=rs.getInt("unidades");
        return uni;
    }
    
    public double obtenerDescuentoProducto(productos Productos) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.obtenerValores);
        double porcen=0;
        this.stmt.setInt(1, Productos.getId_producto());
        this.rs=stmt.executeQuery();
        rs.next();
        porcen=rs.getDouble("descuento");
        return porcen;
    }
    
    public int obtenerIdMarca(productos Productos) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.obtenerValores);
        int id=0;
        this.stmt.setInt(1, Productos.getId_producto());
        this.rs=stmt.executeQuery();
        rs.next();
        id=rs.getInt("idMarca");
        return id;
    }
    
    public boolean agregarProducto(productos Productos) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.agregar);
        this.stmt.setString(1, Productos.getNombreProducto());
        this.stmt.setDouble(2, Productos.getPrecioUnitario());
        this.stmt.setInt(3, Productos.getUnidades());
        this.stmt.setDouble(4, Productos.getDescuento());
        this.stmt.setInt(5, Productos.getIdMarca());
        
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
    }
    
    public boolean actualizarProducto(productos Productos) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.actualizarProducto);
        this.stmt.setString(1, Productos.getNombreProducto());
        this.stmt.setDouble(2, Productos.getPrecioUnitario());
        this.stmt.setInt(3, Productos.getUnidades());
        this.stmt.setDouble(4, Productos.getDescuento());
        this.stmt.setInt(5, Productos.getIdMarca());
        this.stmt.setInt(6, Productos.getId_producto());
        
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
    }
    
    public boolean eliminarProducto(productos Productos) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.eliminarProducto);
        this.stmt.setInt(1, Productos.getId_producto());
        
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
    }
}
