/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.rembao.pv.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rembao
 */
@WebServlet(name = "BuscaProducto", urlPatterns = {"/pventa/BuscaProducto"})
public class BuscaProducto extends HttpServlet {
    
    class CriterioProductoBean{
        
        private int cantidad;
        private String criterio;

        public CriterioProductoBean() {
        }

        public int getCantidad() {
            return cantidad;
        }

        public void setCantidad(int cantidad) {
            this.cantidad = cantidad;
        }

        public String getCriterio() {
            return criterio;
        }

        public void setCriterio(String criterio) {
            this.criterio = criterio;
        }
        
        
    }
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
        
        
        String cadenaBusqueda = (request.getParameter("cadenaBusqueda") != null && !request.getParameter("cadenaBusqueda").equals("")) ? request.getParameter("cadenaBusqueda") : "";
        CriterioProductoBean cb = new CriterioProductoBean();
        System.out.println("cadena de busqueda "+cadenaBusqueda);
        if(!cadenaBusqueda.equals("")){
            
            cb = buscandoPor(cadenaBusqueda);
            
        }
    
    
    }
    
    
    public CriterioProductoBean buscandoPor(String cadenaBusqueda){
        
        CriterioProductoBean cb = new CriterioProductoBean();
        
        String criterio = cadenaBusqueda.substring(0, 2).toUpperCase();
        int cantidad = 0;
        try{
            cantidad = (cadenaBusqueda.indexOf("*") != 0) ? Integer.parseInt(cadenaBusqueda.substring(cadenaBusqueda.indexOf("*"))) : 0;
        
        }catch(Exception e){
            cantidad = 0;
            e.printStackTrace();
        }
        switch(criterio){
            case "PV":
                cb.setCriterio("PV");
                cb.setCantidad(cantidad);
                break;
            case "NP":
                cb.setCriterio("PV");
                cb.setCantidad(cantidad);
                break;
            default:
                cb.setCriterio("ALL");
                cb.setCantidad(cantidad);
                break;
        }
        return cb;
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
