<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DISPALY DATA</title>
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
<h1 align=center>
   <b>
     DISPLAY STUDENT DATA
   </b>
</h1>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration_Form","root","root");
	
	Statement st = con.createStatement();
	
	ResultSet rs = st.executeQuery("Select * from Student_Reg");
	
/* 	while(rs.next())
	{
		out.print(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getInt(5)+"<br>");
		
	}  
} */
	%>
<table border=1 align=center style="text-align:center">
<thead>
    <tr>
       <th>First Name</th>
       <th>Second Name</th>
       <th>Course Name</th>
       <th>Address</th>
       <th>ID</th>
    </tr>
</thead>
<tbody>
  <%while(rs.next())
  {
      %>
      <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
          <td><%=rs.getString(3) %></td>
          <td><%=rs.getString(4) %></td>
          <td><%=rs.getInt(5) %></td>
      </tr>
      <%}%>
     </tbody>
  </table><br>
<%}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>