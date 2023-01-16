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
<h1>
   <b>
     <u>CREATION OF Table.</u>
   </b>
</h1>
<%
try
{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration_Form","root","root");
		
		Statement st = con.createStatement();
		
        String sql = "CREATE TABLE Student_Reg " +
                "(First_Name VARCHAR(10) not NULL, " +
                " Second_Name VARCHAR(10), " + 
                " Course_Name VARCHAR(10), " + 
                " Address VARCHAR(10), " +         
                " ID INTEGER, " + 
                " Password VARCHAR(10), " + 
           		" PRIMARY KEY ( id ))"; 
		
		st.executeUpdate(sql);
		out.print("Table Created Successfully.");
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>