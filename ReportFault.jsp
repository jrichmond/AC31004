<%-- 
    Document   : ReportFault
    Created on : Feb 23, 2012, 8:22:45 PM
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
    <body>

<% if (session.getAttribute("sUserID") == null)
{
   String redirectURL = "http://ac31004.computing.dundee.ac.uk:8080/jamesrichmond/login.jsp";
    response.sendRedirect(redirectURL);
}
%>




<form name="reportFaults" action="insertData.do" method="Post">
Project TItle:<input type="text" name="projectTitle" s />
<br><br>

Fault Description :<textarea name="Description" cols="40" rows="5" />
</textarea><br><br>


Severity of Fault:<select name="Severity">
<option value="Minor">Minor</option>
<option value="Not too worried">Not too worried</option>
<option value="Could be better, could be worse">Could be better, could be worse</option>
<option value="I am worried about this">I am worried about this</option>
<option value="Catastrophe!">Catastrophe!</option>
</select>
<br><br>


<input type="submit" name="sSubmit" value="Submit" />

</form>
        
        
    </body>
</html>
