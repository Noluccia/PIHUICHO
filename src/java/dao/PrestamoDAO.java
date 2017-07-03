/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.*;
import interfaces.Operaciones;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import util.Conexion;

/**
 *
 * @author UPEU
 */
public class PrestamoDAO implements Operaciones<PrestamoDTO>{
    private Connection cx;
    private PreparedStatement ps;
    private ResultSet rs;
    private static final String SQL_UPDATE = "UPDATE PRESTAMOS SET IDCLIENTES=?,FECHAP=?,FECHAD=? WHERE IDPRESTAMOS=?";
    private static final String SQL_READALL = "SELECT *FROM CLIENTES c, PRESTAMOS p where c.IDCLIENTES=p.IDCLIENTES";
    private static final String SQL_READ = "SELECT * FROM PRESTAMOS WHERE IDPRESTAMOS=?";
    @Override
    public int create(PrestamoDTO m) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(PrestamoDTO m) {

        int x = 0;
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL_UPDATE);
            ps.setInt(1, m.getIdcliente());
            ps.setString(2, m.getFechap());
            ps.setString(3, m.getFechad());
            ps.setInt(4, m.getIdprestamo());
            x = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al modificar Prestamo:" + e);
        }
        return x;
    }

    @Override
    public int delete(int key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public PrestamoDTO read(int key) {
        PrestamoDTO dTO = new PrestamoDTO();
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL_READ);
            ps.setInt(1, key);
            rs = ps.executeQuery();
            while (rs.next()) {
                dTO.setIdprestamo(rs.getInt("IDPRESTAMOS"));
                dTO.setIdcliente(rs.getInt("IDCLIENTES"));
                dTO.setFechap(rs.getString("FECHAP"));
                dTO.setFechad(rs.getString("FECHAD"));
            }
        } catch (SQLException e) {
            System.out.println("Error:" + e);
        }
        return dTO;
    }

    @Override
    public List<PrestamoDTO> readAll() {
        List<PrestamoDTO> lista = new ArrayList<>();
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                PrestamoDTO dTO = new PrestamoDTO();
                dTO.setIdprestamo(rs.getInt("IDPRESTAMOS"));
                dTO.setIdcliente(rs.getInt("IDCLIENTES"));
                dTO.setFechap(rs.getString("FECHAP"));
                dTO.setFechad(rs.getString("FECHAD"));
                lista.add(dTO);
            }
        } catch (SQLException e) {
            System.out.println("Error:" + e);
        }
        return lista;
    }
    
        public List<Map<String, ?>> readAll2() {
        List<Map<String, ?>> ret = new ArrayList<>();
        Map<String, Object> users = null;
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                users = new HashMap<>();
                users.put("idp", rs.getString("IDPRESTAMOS"));
                users.put("idcli", rs.getString("IDCLIENTES"));
                users.put("nomcli", rs.getString("NOMBRES"));
                users.put("fechap", rs.getString("FECHAP"));
                users.put("fechad", rs.getString("FECHAD"));
                users.put("apel", rs.getString("APELLIDOS"));
                ret.add(users);
            }
        } catch (SQLException e) {
            System.out.println("Error:" + e);
        }
        return ret;
    }
    
}
