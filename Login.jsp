<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Student</title>
</head>
<body>
<br><br>
<table align ="right" width="700" height="20">
  <tr>
  <th width="15"><a href="http://localhost:3555/Servletfirst/Home.jsp" style="color:greenyellow">HOME</a>
  <th width="15"><a href="http://localhost:3555/Servletfirst/AdminLogin.jsp" style="color:greenyellow">LOGIN ADMIN</a>
  <th width="15"><a href="http://localhost:3555/Servletfirst/About.jsp" style="color:greenyellow">ABOUT US</a>
  </tr>
  </table>
  <br><br><br>
<h1 align="center">
  <b>
    Student Login Page
   </b>
 </h1>
 
 <div style="text-align: center"><img src="https://assets.justinmind.com/wp-content/uploads/2018/10/inspiration-login-forms-list-768x492.png" width="700" height="400" /></div>
 
 
<form method="post" action="Login.jsp" align="center">
Enter your ID
<input type="text" name="id">
<br><br>
Enter your Password
<input type="password" name="pw">
<br><br>
<input type="submit" value="login">
</form>
<%
try
{
	String ID = request.getParameter("id");
	String password1 = request.getParameter("pw");
	String redirecturl="http://localhost:3555/Servletfirst/Welcome.jsp";	
	if(ID!=null && password1!=null)
	{
		int ID1 = Integer.parseInt(ID);
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration_Form","root","root");
		
		/* PreparedStatement st = con.prepareStatement("Select ID,Password from student_reg where ID="+ID1+" and Password='"+password1+"'"); */
		Statement st = con.createStatement();
		
		ResultSet s = st.executeQuery("Select ID,Password from student_reg where ID="+ID1+" and Password='"+password1+"'");
		
		if(s.next())
		{
			out.print("Login Successfully");
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