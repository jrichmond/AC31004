<%-- 
    Document   : login
    Created on : Feb 23, 2012, 10:49:57 AM
    Author     : jamesrichmond
--%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%
String error=request.getParameter("error");
if(error==null || error=="null"){
 error="";
}
%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="stylesheet.css" />
<div id="header"></div>


<title>User Login JSP</title>
<script>
    function trim(s)
    {
        return s.replace( /^\s*/, "" ).replace( /\s*$/, "" );
    }

    function validate()
    {
        if(trim(document.frmLogin.sUserName.value)=="")
        {
          alert("Please Enter your ID Number/Username.");
          document.frmLogin.sUserName.focus();
          return false;
        }
        else if(trim(document.frmLogin.sPwd.value)=="")
        {
          alert("Please Enter your password.");
          document.frmLogin.sPwd.focus();
          return false;
        }
    }
</script>
</head>

<body>
<div><%=error%></div>




<form name="frmLogin" onSubmit="return validate();" action="doLogin.jsp" method="post">
User Name <input type="text" name="sUserName" /><br />
Password <input type="password" name="sPwd" /><br />
<input type="submit" name="sSubmit" value="Submit" />
</form>



<FORM METHOD="LINK" ACTION="newLogin.jsp">
<INPUT TYPE="SUBMIT" VALUE="Register New User">
</FORM>


</body>
</html>