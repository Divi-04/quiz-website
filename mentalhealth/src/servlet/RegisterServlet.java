package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcon.dbconn;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Connection con;
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");

        try {
        	con=dbconn.create();	
    		PreparedStatement ps = con.prepareStatement("INSERT INTO `mentalhealth`.`user` VALUES(id,?,?,?,?,?)");
        
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, phone);
            ps.setString(5, "request");
            int result = ps.executeUpdate();

            if (result > 0) {
                out.println("<script>alert('Registration Successful'); window.location='login.jsp';</script>");
            } else {
                out.println("<script>alert('Registration Failed'); window.location='register.jsp';</script>");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error Occurred'); window.location='register.jsp';</script>");
        }
    }
}
