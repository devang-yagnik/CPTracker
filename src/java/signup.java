/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out;
        out = response.getWriter();
        try{
              String username = request.getParameter("user");
              String password = request.getParameter("password");
              String name = request.getParameter("first")+" "+request.getParameter("last");
              String email = request.getParameter("email");
              String cfid = request.getParameter("cfid");
              
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sql7606253", "root", "");
              
              PreparedStatement stmt = con.prepareStatement("insert into credential values(?, ?, ?, ?, ?)");
              stmt.setString(1, username);
              stmt.setString(2, name);
              stmt.setString(3, password);
              stmt.setString(4, email);
              stmt.setString(5, cfid);
              stmt.execute();
              
              RequestDispatcher rd = request.getRequestDispatcher("login.html");
              rd.forward(request,response);
              
        } catch (Exception ex) {
            out.println(ex);
        }
    }

}
