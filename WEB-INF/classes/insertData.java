/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.sql.*;


public class insertData extends HttpServlet

{

public void doPost(HttpServletRequest request, HttpServletResponse response)
                                 throws ServletException, IOException{


    response.setContentType("text/html");
    PrintWriter pw = response.getWriter();



    Connection connection = null;
    String InsertTitle ="";
    String InsertDescription ="";
    String InsertSeverity="";


    try

      {

      Class.forName("org.gjt.mm.mysql.Driver");
      connection = DriverManager.getConnection("jdbc:mysql://arlia.computing.dundee.ac.uk/jamesrichmond","jamesrichmond","ac31004");
      if(request.getParameter("projectTitle")!=null && request.getParameter("projectTitle")!="");
      {
           InsertDescription = request.getParameter("Description").toString();
           InsertTitle = request.getParameter("projectTitle").toString();
            InsertSeverity = request.getParameter("Severity").toString();
           PreparedStatement pst = connection.prepareStatement("insert into report_faults (ProjectTitle, FaultDescription, Severity) values(?, ?, ?)");
          
          pst.setString(1, InsertTitle);
          pst.setString(2, InsertDescription);
          pst.setString(3, InsertSeverity);
        

          int i = pst.executeUpdate();
          if(i!=0)

          {
            pw.println("<br>Record has been inserted");



          }
          else{
            pw.println("failed to insert the data");
           }
        }

    }
    catch (Exception e)
    {
      pw.println(e);
    }
  }
}
   
