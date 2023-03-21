
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


/**
 *
 * @author DELL
 */
public class store_todo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out;
        out = response.getWriter();
        
        try{
            String contest_id = request.getParameter("contest_id");
            String problem_index = request.getParameter("problem_index");
            Cookie ck[]=request.getCookies();
            String username = ck[0].getValue();
            
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sql7606253", "root", "");
              
              PreparedStatement stmt = con.prepareStatement("insert into todo values(?, ?, ?, '')");
              stmt.setString(1, username);
              stmt.setString(2, contest_id);
              stmt.setString(3, problem_index);
              stmt.execute();
              RequestDispatcher rd = request.getRequestDispatcher("Question_page.html");
              rd.forward(request,response);
        }
        catch(Exception e){out.println(e);}
            

    }

}
