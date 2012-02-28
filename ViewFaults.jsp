<%-- 
    Document   : ViewFaults
    Created on : Feb 23, 2012, 8:21:24 PM
    Author     : jamesrichmond
--%>






<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="stylesheet.css" />
        <div id="header"></div>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

<%@page  import="java.sql.*"%>


<% if (session.getAttribute("sUserID") == null)
{
   String redirectURL = "http://ac31004.computing.dundee.ac.uk:8080/jamesrichmond/login.jsp";
    response.sendRedirect(redirectURL);
}
%>
    <body>
       
       <table border="4">
       <tr>
          <td>FaultID</td>
          <td>Fault Title</td>
          <td>Fault Description</td>
          <td>Fault Severity</td>
       </tr> 
          <% 
          try{
                Connection conn= null;

                Class.forName("org.gjt.mm.mysql.Driver");
                conn= DriverManager.getConnection("jdbc:mysql://arlia.computing.dundee.ac.uk/jamesrichmond","jamesrichmond","ac31004");

                String qstrQuery="SELECT * FROM report_faults";
                Statement st = conn.createStatement();
                ResultSet  rs = st.executeQuery(qstrQuery);
              
                while(rs.next())
                {
                
          %>
                  <tr>
                    <td>
                      <%
                       out.println( rs.getString(1));
                      %>
                    </td>
                    <td>
                      <%
                       out.println( rs.getString(2));
                      %>
                    </td>
                    <td>
                      <%
                       out.println( rs.getString(3));
                      %>
                    </td>
                    <td>
                      <%
                       out.println( rs.getString(4));
                      %>
                    </td>
                  </tr>
              <%}
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }%>
 
<FORM METHOD="LINK" ACTION="success.jsp">
<INPUT TYPE="submit" VALUE="Back to Home Page">
</FORM>


      </table>
    </body>
</html>
