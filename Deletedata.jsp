<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DELETE DATA</title>
</head>
<body>
<table align="right" width="700" height="30">
  <tr>
  <th width="15"><a href="http://localhost:3555/Servletfirst/Home.jsp" style="color:yellow">HOME</a>
  <th width="15"><a href="http://localhost:3555/Servletfirst/Admin.jsp" style="color:greenyellow">ADMIN</a>
  <th width="15"><a href="http://localhost:3555/Servletfirst/AdminLogin.jsp" style="color:greenyellow">LOG OUT</a>
 </th>
</tr>
</table>
<br><br>
<h1 align="center">
   <b>
     DELETE STUDENT DATA
   </b>
</h1>
<div style="text-align: center"><img src="https://www.hpe.com/content/dam/hpe/insights/articles/2021/10/when-should-old-data-be-deleted/When_Should_Old_Data_Be_Deleted_Hero_Image.jpg.transform/nxt-original/image.jpeg" width="500" height="300" /></div>
<form method="post" action="Deletedata.jsp" align="center">
Enter the ID
<input type="text" name="id">
<br><br>
<input type="submit" value="DELETE">
</form>
<%
try
{
	String ID = request.getParameter("id");

	if(ID!=null)
	{
		int ID1 = Integer.parseInt(ID);
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration_Form","root","root");
		
		Statement st = con.createStatement();
		 PreparedStatement pt = con.prepareStatement("Delete from Student_Reg where id=?");
		 
		 pt.setInt(1,ID1);
		 int p = pt.executeUpdate();
		 
		 if(p>=1)
		 {
			 out.print("Deleted Successfully.");
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