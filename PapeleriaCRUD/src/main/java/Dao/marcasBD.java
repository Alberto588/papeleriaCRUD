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
public class marcasBD {
    //Atributos SQL
    private static final String listadoMarcas="Select * from marcas";
    private static final String obtenerMarca="SELECT * from marcas where idMarca=?";
    private static final String agregar="INSERT INTO marcas SET marca=?";
    private static final String modificarMarca="UPDATE marcas SET marca=? WHERE idMarca=?";
    private static final String eliminarMarca="DELETE FROM marcas WHERE idMarca=?";
    
    //Atributos de conexion
    private Connection conexion=new conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    public List<marcas> listadoMarcas() throws SQLException{
        List<marcas> marc=new ArrayList<>();
        this.stmt=this.conexion.prepareStatement(this.listadoMarcas);
        this.rs=this.stmt.executeQuery();
        while(this.rs.next()){
            marc.add(new marcas(this.rs.getInt("idMarca"),this.rs.getString("marca")));
        }
        
        return marc;
    }
    
    public String obtenerMarca(marcas Marcas) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.obtenerMarca);
        String marca="";
        this.stmt.setInt(1, Marcas.getId_marca());
        this.rs=stmt.executeQuery();
        rs.next();
        marca=rs.getString("marca");
        return marca;
    }
    
    public boolean agregarMarca(marcas Marcas) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.agregar);
        this.stmt.setString(1,Marcas.getMarca());
        
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
    }
    
    public boolean modificarMarca(marcas Marcas) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.modificarMarca);
        this.stmt.setString(1,Marcas.getMarca());
        this.stmt.setInt(2,Marcas.getId_marca());
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
    }
    
    public boolean eliminarMarca(marcas Marcas) throws SQLException{
        this.stmt=this.conexion.prepareStatement(this.eliminarMarca);
        this.stmt.setInt(1,Marcas.getId_marca());
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
        
    }
    
    
}
