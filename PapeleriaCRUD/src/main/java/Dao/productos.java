/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author Alberto
 */
public class productos {
   private int id_producto;
   private String nombreProducto;
   private double precioUnitario;
   private int unidades;
   private double descuento;
   private int idMarca;

    public productos() {
    }

    public productos(int id_producto) {
        this.id_producto = id_producto;
    }

    public productos(int id_producto, String nombreProducto, double precioUnitario, int unidades, double descuento, int idMarca) {
        this.id_producto = id_producto;
        this.nombreProducto = nombreProducto;
        this.precioUnitario = precioUnitario;
        this.unidades = unidades;
        this.descuento = descuento;
        this.idMarca = idMarca;
    }

    public productos(String nombreProducto, double precioUnitario, int unidades, double descuento, int idMarca) {
        this.nombreProducto = nombreProducto;
        this.precioUnitario = precioUnitario;
        this.unidades = unidades;
        this.descuento = descuento;
        this.idMarca = idMarca;
    }
   
    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public double getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(double precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public int getUnidades() {
        return unidades;
    }

    public void setUnidades(int unidades) {
        this.unidades = unidades;
    }

    public double getDescuento() {
        return descuento;
    }

    public void setDescuento(double descuento) {
        this.descuento = descuento;
    }

    public int getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }

    @Override
    public String toString() {
        return "productos{" + "id_producto=" + id_producto + ", nombreProducto=" + nombreProducto + ", precioUnitario=" + precioUnitario + ", unidades=" + unidades + ", descuento=" + descuento + ", idMarca=" + idMarca + '}';
    }
   
   
}
