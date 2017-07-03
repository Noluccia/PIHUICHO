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
import java.util.List;
import util.Conexion;

/**
 *
 * @author UPEU
 */
public class ClienteDAO implements Operaciones<ClienteDTO>{
    private Connection cx;
    private PreparedStatement ps;
    private ResultSet rs;
    private static final String SQL_UPDATE = "UPDATE PRESTAMOS SET IDCLIENTES=?,FECHAP=?,FECHAD=? WHERE IDPRESTAMOS=?";
    private static final String SQL_READALL = "SELECT *FROM CLIENTES";
    private static final String SQL_READ = "SELECT * FROM PRESTAMOS WHERE IDPRESTAMOS=?";

    @Override
    public int create(ClienteDTO m) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(ClienteDTO m) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(int key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ClienteDTO read(int key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ClienteDTO> readAll() {
        List<ClienteDTO> lista = new ArrayList<>();
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                ClienteDTO dTO = new ClienteDTO();
                dTO.setIdcliente(rs.getInt("IDCLIENTES"));
                dTO.setNombres(rs.getString("NOMBRES"));
                dTO.setApellidos(rs.getString("APELLIDOS"));
                dTO.setDni(rs.getInt("DNI"));
                lista.add(dTO);
            }
        } catch (SQLException e) {
            System.out.println("Error:" + e);
        }
        return lista;
    }

 
}
