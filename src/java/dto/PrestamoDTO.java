/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author UPEU
 */
public class PrestamoDTO {
    private int idprestamo;
    private int idcliente;
    private String fechap;
    private String fechad;

    public PrestamoDTO() {
    }

    public PrestamoDTO( int idcliente, String fechap, String fechad) {
        this.idcliente = idcliente;
        this.fechap = fechap;
        this.fechad = fechad;
    }

    public PrestamoDTO(int idprestamo, int idcliente, String fechap, String fechad) {
        this.idprestamo = idprestamo;
        this.idcliente = idcliente;
        this.fechap = fechap;
        this.fechad = fechad;
    }

    public int getIdprestamo() {
        return idprestamo;
    }

    public void setIdprestamo(int idprestamo) {
        this.idprestamo = idprestamo;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public String getFechap() {
        return fechap;
    }

    public void setFechap(String fechap) {
        this.fechap = fechap;
    }

    public String getFechad() {
        return fechad;
    }

    public void setFechad(String fechad) {
        this.fechad = fechad;
    }
    
    
}
