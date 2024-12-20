package com.meedum;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
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
public class RegisterServlet extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String fname = request.getParameter("firstname");
        String lname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String contactno = request.getParameter("contact");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("repassword");
        
        System.out.println("Fname : " + fname + " Lname : " + lname + " Email : " + email + " Contact : " + contactno + " Username : " + username + " Password : " + password + " Re type Password : " + rePassword);
        
        if (password.equals(rePassword)) {
            Connection conn = JDBCConnection.getConnection();
            try {
                PreparedStatement ps = conn.prepareStatement("select * from customer where email=?");
                ps.setString(1, email);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    System.out.println("Already Registered user");
                    RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                    rd.forward(request, response);
                }
                ps = conn.prepareStatement("select * from user where username=?");
                ps.setString(1, username);
                rs = ps.executeQuery();
                if (rs.next()) {
                    System.out.println("Username is not available");
                    RequestDispatcher rd = request.getRequestDispatcher("Register.jsp?re=1");
                    rd.forward(request, response);
                }
                ps = conn.prepareStatement("INSERT INTO customer (`fname`, `lname`, `contactno`, `email`) VALUES ( ?, ?, ?, ?)");
                ps.setString(1, fname);
                ps.setString(2, lname);
                ps.setString(3, contactno);
                ps.setString(4, email);
                ps.executeUpdate();
                
                ps = conn.prepareStatement("select cid from customer where email=?");
                ps.setString(1, email);
                rs = ps.executeQuery();
                int cid = 0;
                if (rs.next()) {
                    cid = rs.getInt("cid");
                }
                System.out.println("Customer ID " + cid);
                ps = conn.prepareStatement("INSERT INTO `user` (`username`, `password`, `customer_cid`, `status`) VALUES (?, ?, ?, ?)");
                ps.setString(1, username);
                ps.setString(2, password);
                ps.setInt(3, cid);
                ps.setInt(4, 1);
                ps.executeUpdate();
                JDBCConnection.connectionClose(conn);
                
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            System.out.println("Passwords are not matched");
            RequestDispatcher rd = request.getRequestDispatcher("Register.jsp?re=2");
            rd.forward(request, response);
        }
    }
    
    
}
