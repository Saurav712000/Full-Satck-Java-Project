<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Data</title>
</head>
<body>
<table align="right" width="700" height="30">
  <tr>
  <th width="15"><a href="http://localhost:3555/Servletfirst/Home.jsp" style="color:greenyellow">HOME</a>
  <th width="15"><a href="http://localhost:3555/Servletfirst/Admin.jsp" style="color:greenyellow">ADMIN</a>
  <th width="15"><a href="http://localhost:3555/Servletfirst/AdminLogin.jsp" style="color:greenyellow">LOG OUT</a>
 </th>
</tr>
</table>
<br><br>
<h1 align="center">
   <b>
     UPDATE STUDENT DATA
   </b>
</h1>

<div style="text-align: center"><img src="data:image/png;base64,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" width="500" height="300" /></div>

<form method="post" action="Update.jsp" align="center">
Enter First Name of Student
<input type="text" name="fn">
<br><br>
Enter Second Name of Student
<input type="text" name="sn">
<br><br>
Enter the ID
<input type="text" name="id">
<br><br>
<input type="submit" value="UPDATE">
</form>
<%
try
{
	String ID = request.getParameter("id");
	String first_name = request.getParameter("fn");
	String second_name = request.getParameter("sn");
	if(first_name!=null && second_name!=null && ID!=null)
	{
		int ID1 = Integer.parseInt(ID);
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration_Form","root","root");
		
		Statement st = con.createStatement();
		 PreparedStatement pt = con.prepareStatement("Update Student_Reg set first_name=?,second_name=? where id=?");
		 
		 pt.setString(1,first_name);
		 pt.setString(2,second_name);
		 pt.setInt(3,ID1);
		 int p = pt.executeUpdate();
		 
		 if(p>=1)
		 {
			 out.print("Updated Successfully.");
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