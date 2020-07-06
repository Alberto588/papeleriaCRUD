/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.sql.*;

/**
 *
 * @author Alberto
 */
public class marcas {
   private int id_marca;
   private String marca;

    public marcas() {
    }

    public marcas(int id_marca) {
        this.id_marca = id_marca;
    }

    public marcas(String marca) {
        this.marca = marca;
    }

    public marcas(int id_marca, String marca) {
        this.id_marca = id_marca;
        this.marca = marca;
    }

    public int getId_marca() {
        return id_marca;
    }

    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    @Override
    public String toString() {
        return "marcas{" + "id_marca=" + id_marca + ", marca=" + marca + '}';
    }
   
   
}
