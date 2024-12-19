/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.meedum;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author miharimeedum
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("uname1");
        String password = request.getParameter("psw1");

        System.out.println("Entered Creds : " + username + " && " + password);

        for (UserManager usr : RegisterServlet.users.values()) {
            if (username.equals(usr.getUsername()) && password.equals(usr.getPassword())) {
                HttpSession session = request.getSession();
                session.setAttribute("uname", username);
                response.sendRedirect("home.jsp");
            }
        }
        request.setAttribute("message", "Invaalid Username Password");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

}
