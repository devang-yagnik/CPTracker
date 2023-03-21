/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out;
        out = response.getWriter();
        try{
              String username = request.getParameter("user");
              String password = request.getParameter("password");
              Cookie ck=new Cookie("username",username);//creating cookie object  
              response.addCookie(ck);//adding cookie in the response  
              
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sql7606253", "root", "");
              
              PreparedStatement stmt = con.prepareStatement("select * from credential where username = ? and password = ?");
              stmt.setString(1, username);
              stmt.setString(2, password);
              ResultSet rs = stmt.executeQuery();
              if(rs.next()){
                    RequestDispatcher rd = request.getRequestDispatcher("Dashboard.html");
                    rd.forward(request,response);
              }
              else{
                    out.println("<div class=\"bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative\" role=\"alert\">\n" +
"  <strong class=\"font-bold\">Holy smokes!</strong>\n" +
"  <span class=\"block sm:inline\">Something seriously bad happened.</span>\n" +
"  <span class=\"absolute top-0 bottom-0 right-0 px-4 py-3\">\n" +
"    <svg class=\"fill-current h-6 w-6 text-red-500\" role=\"button\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 20 20\"><title>Close</title><path d=\"M14.348 14.849a1.2 1.2 0 0 1-1.697 0L10 11.819l-2.651 3.029a1.2 1.2 0 1 1-1.697-1.697l2.758-3.15-2.759-3.152a1.2 1.2 0 1 1 1.697-1.697L10 8.183l2.651-3.031a1.2 1.2 0 1 1 1.697 1.697l-2.758 3.152 2.758 3.15a1.2 1.2 0 0 1 0 1.698z\"/></svg>\n" +
"  </span>\n" +
"</div>");
                    RequestDispatcher rd = request.getRequestDispatcher("login.html");
                    rd.include(request,response);
              }
        } catch (Exception ex) {
            out.println(ex);
        }
    }

}
