package com.meedum;

import dao.JDBCConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Connection conn = JDBCConnection.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from user where username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            System.out.println("SQL : " + ps);
            System.out.println("Result Set : " + rs);
            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                System.out.println("Login sucessfully, " + username);
                JDBCConnection.connectionClose(conn);
                response.sendRedirect("index.jsp");
            } else {
                JDBCConnection.connectionClose(conn);
                request.setAttribute("errorMessage", "Invalid username or password!");
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp?re=1");
                rd.forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            JDBCConnection.connectionClose(conn);
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp?re=2");
            rd.forward(request, response);
        } 
    }

}
