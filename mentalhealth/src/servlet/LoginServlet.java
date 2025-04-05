package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbcon.dbconn;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        
        Connection con;
        try {
        	con=dbconn.create();	
    		PreparedStatement ps = con.prepareStatement("SELECT * FROM `mentalhealth`.`user` WHERE email=? AND pass=?");
        
            ps.setString(1, email);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", rs.getString("email"));
                out.println("<script>alert('Login Successful'); window.location='home.jsp';</script>");
            } else {
                out.println("<script>alert('Invalid Email or Password'); window.location='login.jsp';</script>");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error Occurred'); window.location='login.jsp';</script>");
        }
    }
}
