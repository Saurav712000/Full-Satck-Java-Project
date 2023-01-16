<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<h1 align ="center">
   <b>
     INSERT STUDENT DATA
   </b>
</h1>

<div style="text-align: center"><img src="https://www.percona.com/blog/wp-content/uploads/2018/01/Insert-Random-Data-into-Tables.jpg" width="500" height="300" /></div>

<form method="post" action="Insertdata.jsp" align="center">
Enter First Name of Student
<input type="text" name="fn">
<br><br>
Enter Second Name of Student
<input type="text" name="sn">
<br><br>
Enter the Course Name
<input type="text" name="cn">
<br><br>
Enter the Address
<input type="text" name="addr">
<br><br>
Enter the ID
<input type="text" name="id">
<br><br>
Enter the Password
<input type="password" name="pw">
<br><br>
<input type="submit" value="Register">
</form>
<%
try
{
	String first_name = request.getParameter("fn");
	String second_name = request.getParameter("sn");
	String course_name = request.getParameter("cn");
	String address = request.getParameter("addr");
	String ID = request.getParameter("id");
	String password = request.getParameter("pw");
		
	if(first_name!=null && second_name!=null && course_name!=null && address!=null && ID!=null && password!=null)
	{
		int ID1 = Integer.parseInt(ID);
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration_Form","root","root");
		
		Statement st = con.createStatement();
     int k = st.executeUpdate("insert into Student_Reg values('"+first_name+"','"+second_name+"','"+course_name+"','"+address+"',"+ID1+",'"+password+"')");
		
		if(k>=1)
		{
			out.print("Registered Successfully.");
			out.print(" ");
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