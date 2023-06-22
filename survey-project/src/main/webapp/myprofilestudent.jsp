<%@page import="com.environmentsurvey.bean.UserBean"%>
<%@page import="com.environmentsurvey.utility.DBConnect"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.environmentsurvey.utility.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>
<title>Insert title here</title>
</head>
<body>
<%-- <div align="right">Welcome <%out.println(session.getAttribute("student"));
if(session.getAttribute("student")==null)
{
	response.sendRedirect("login.jsp");
}
%> --%><br><br>
<h1 align="center" style="color: maroon;">My Profile</h1><br>
<!-- <form action="edit.jsp" method="post"> -->
<table border="0" align="center" cellpadding="2" cellspacing="5" class="table" style="color: maroon;"
      >

<% 
Connection con = DBConnect.getConn();
Statement statement = con.createStatement();
String student=(String)session.getAttribute("student");
ResultSet resultSet = statement.executeQuery("Select * from e_user where name='"+student+"'");
if(resultSet.next())
{%>
	
	
	<tr><td><strong>ID</strong></td><td><% out.println(resultSet.getInt(1));%></td></tr>
	<tr><td><strong>Name</strong></td><td><% out.println(resultSet.getString(2));%></td></tr>
	<tr><td><strong>Roll Number</strong></td><td><% out.println(resultSet.getInt(3));%></td></tr>
	<tr><td><strong>Class</strong></td><td><% out.println(resultSet.getString(4));%></td></tr>
	<tr><td><strong>Specification</strong></td><td><% out.println(resultSet.getString(5));%></td></tr>
	<tr><td><strong>Section</strong></td><td><% out.println(resultSet.getString(6));%></td></tr>
	<tr><td><strong>Password</strong></td><td><% out.println(resultSet.getString(8));%></td></tr>
	<tr><td><strong>Date of Admission</strong></td><td><% out.println(resultSet.getString(10));%></td></tr>

<% }

%> 


<%-- <div>Welcome <%out.println(session.getAttribute("student"));
if(session.getAttribute("student")==null)
{
	response.sendRedirect("login.jsp");
}
%> --%>


</table>
<br>
<center><a href="edit.jsp?id=<%=resultSet.getInt(1)%>" class="btn btn-info btn-md">Edit</center>
<!-- </form> -->
</body>
</html>