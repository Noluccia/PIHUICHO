/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.google.gson.Gson;
import dao.ClienteDAO;
import dto.ClienteDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author UPEU
 */
@WebServlet(name = "ClienteController", urlPatterns = {"/cc"})
public class ClienteController extends HttpServlet {
    private ClienteDAO aO1 = new ClienteDAO();
    private List<ClienteDTO> lista = new ArrayList<>();
    private Gson gson = new Gson();
    private ClienteDTO dTO = new ClienteDTO();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        RequestDispatcher dispatcher;
        String url;
        int op = Integer.parseInt(request.getParameter("opc"));
        switch (op) {
            case 1:
                lista = aO1.readAll();
                request.setAttribute("lista", lista);
                url = "prestamos.jsp";
                dispatcher = getServletContext().getRequestDispatcher(url);
                dispatcher.forward(request, response);
                break;
            case 2:
//                String categoria = request.getParameter("cat");
//                String descripcion = request.getParameter("desc");
//                CategoriaDTO tO = new CategoriaDTO(categoria, descripcion);
//                if (aO.create(tO) == 1) {
//                    out.println(1);
//                }
                break;
            case 3:
//                int id = Integer.parseInt(request.getParameter("id"));
//                dTO = aO.read(id);
//                out.println(gson.toJson(dTO));
                break;
            case 4:
//                dTO.setIdprestamo(Integer.parseInt(request.getParameter("id")));
//                dTO.setFechap(request.getParameter("fechap"));
//                dTO.setFechad(request.getParameter("fechad"));
//                dTO.setIdcliente(Integer.parseInt(request.getParameter("idcli")));
//                int s = aO.update(dTO);
//                out.println(s);
                break;
            case 5:
//                int w = aO.delete(Integer.parseInt(request.getParameter("id")));
//                out.println(w);
                break;
            case 6:
                lista = aO1.readAll();
                out.println(gson.toJson(lista));
                break;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
