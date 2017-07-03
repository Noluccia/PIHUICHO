/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import dao.PrestamoDAO;
import dto.PrestamoDTO;
import java.util.ArrayList;
import java.util.List;

import util.Conexion;

/**
 *
 * @author UPEU
 */
public class Test {
    static PrestamoDAO aO = new PrestamoDAO();
    static PrestamoDTO dTO = new PrestamoDTO();
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        conex();
        //validar();
        //validar2();
        //save();
        edit();
        readall();
        //delete();
    }
    public static void conex() {
        if (Conexion.getConexion() != null) {
            System.out.println("si");
        } else {
            System.out.println("no");
        }
    }
    public static void edit() {
        PrestamoDTO dTO = new PrestamoDTO(1, 2, "14/06/17", "14/06/17");
        if (aO.update(dTO) == 1) {
            System.out.println("si");
        } else {
            System.out.println("no");
        }
    }

    public static void readall() {
        List<PrestamoDTO> a = new ArrayList<>();
        a = aO.readAll();
        for (int i = 0; i < a.size(); i++) {
            System.out.println("ID: " + a.get(i).getIdprestamo());
            System.out.println("NOMBRES:" + a.get(i).getIdcliente());
            System.out.println("APELLIDOS: " + a.get(i).getFechap());
            System.out.println("TELEFONO: " + a.get(i).getFechad());
        }
    }
}
