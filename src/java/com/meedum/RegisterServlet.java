package com.meedum;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
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

    public static Map<String, UserManager> users = new HashMap<>();
    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String contactno = request.getParameter("contact");
        String username = request.getParameter("uname2");
        String password = request.getParameter("psw2");
        String rePassword = request.getParameter("repsw2");
        
        System.out.println("User Destils = {fname:"+fname+",lname:"+lname+",email:"+contactno+",username:"+username+",password:"+password+",repassword:"+rePassword+"}");
        
        if (password.equals(rePassword)) {
            for (UserManager usr : users.values()) {
                if (email.equals(usr.getEmail())) {
                    request.setAttribute("message", "Email is already used");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                if (username.equals(usr.getUsername())) {
                    request.setAttribute("message", "Username is not available");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            }
            UserManager user = new UserManager();
            user.setFname(fname);
            user.setLname(lname);
            user.setEmail(email);
            user.setContactno(contactno);
            user.setPassword(password);
            user.setUsername(username);
            users.put(email, user);
            HttpSession session = request.getSession();
            System.out.println("New user added");
            session.setAttribute("uname", username);
            response.sendRedirect("home.jsp");
        } else {
            request.setAttribute("message", "Re type password is not match");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
