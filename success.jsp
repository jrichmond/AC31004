<%-- 
    Document   : success
    Created on : Feb 22, 2012, 2:36:38 PM
    Author     : jamesrichmond
--%>



<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="stylesheet.css" />
<div id="header"></div>
	
<title>Successfully Logged in to Mr FaultY!</title>
</head>

<body>

<% if (session.getAttribute("sUserID") == null)
{
   String redirectURL = "http://ac31004.computing.dundee.ac.uk:8080/jamesrichmond/login.jsp";
    response.sendRedirect(redirectURL);
}
%>


<%

out.print("UserID:"+session.getAttribute("sUserID")+"<br>");
out.print("Username:"+session.getAttribute("sUserName"));

%>
<br>

<FORM>
<INPUT TYPE="BUTTON" VALUE="VIEW FAULT" ONCLICK="window.location.href='http://ac31004.computing.dundee.ac.uk:8080/jamesrichmond/ViewFaults.jsp'"> 

<br>
<INPUT TYPE="BUTTON" VALUE="REPORT FAULT" ONCLICK="window.location.href='http://ac31004.computing.dundee.ac.uk:8080/jamesrichmond/ReportFault.jsp'"> 
</FORM>


</body>
</html>