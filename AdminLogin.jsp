<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<table align="right" width="700" height="30">
  <tr>
  <th width="15"><a href="http://localhost:3555/Servletfirst/Home.jsp" style="color:greenyellow">HOME</a>
  </th>
</tr>
</table>

<h1 align="center">
  <b>
    Admin Login Page
   </b>
 </h1>
 <div style="text-align: center"><img src="https://icon-library.com/images/admin-login-icon/admin-login-icon-15.jpg" width="300" height="300" /></div>
<br>
<form method="post" action="AdminLogin.jsp" align="center">
Enter the Name
<input type="text" name="id">
<br><br>
Enter the Password
<input type="password" name="pw">
<br><br>
<input type="submit" value="Login"></a>
</form>
<%
try
{

	String adname = request.getParameter("id");
	String pass = request.getParameter("pw");
    String redirecturl ="http://localhost:3555/Servletfirst/Admin.jsp";	
	if(adname!=null && pass!=null)
	{
	
	if(adname.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("admin"))
	{
		
		Thread.sleep(3000);
		response.sendRedirect(redirecturl);
	    	
	}
	else
	{
		out.print("Error!");
	}
		
}
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>