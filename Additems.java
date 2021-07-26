
package com.techbuzzer.login.controllers;

import com.techbuzzer.login.dao.NewItemDao;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Additems extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        
        if (request.getParameter("additem") != null) {
            String product_name = request.getParameter("product_name");
            String product_category = request.getParameter("product_category");
            String product_brand = request.getParameter("product_brand");
            int product_stock = Integer.parseInt(request.getParameter("product_stock"));
            String ps = "Stocks: " + product_stock;

            NewItemDao additem = new NewItemDao();
            boolean regItems;
            regItems = additem.addItem(product_name, product_category, product_brand, product_stock);

            if (regItems) {
                String message = "Registration for " + product_brand + "'s " + product_name + " is successful in the category " + product_category;
                request.setAttribute("message", message);
                String title = "Register Success";
                request.setAttribute("title", title);
                request.setAttribute("detail", ps);

            } else {
                String message = "Registration Unsuccessful";
                request.setAttribute("message", message);
                String title = "Register Failed";
                request.setAttribute("title", title);

            }

            RequestDispatcher rd = request.getRequestDispatcher("../success.jsp");
            rd.forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Additems.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Additems.class.getName()).log(Level.SEVERE, null, ex);
        }
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
