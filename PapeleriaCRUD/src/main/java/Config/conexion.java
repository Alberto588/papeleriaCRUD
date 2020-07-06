/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.*;

/**
 *
 * @author Alberto
 */
public class conexion {
     private Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    //Variable de claseque es constante
    private static final String localhost="localhost";
    private static final String BD="papeleriacrud";
    private static final String usuario="root";
    private static final String password="";
    
            
    public Connection getConexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://"+localhost+"/"+BD, usuario, password);
        }catch(Exception e){
            System.out.println("Error: "+e);
        }finally{
            return conexion;
        }
    }
}
