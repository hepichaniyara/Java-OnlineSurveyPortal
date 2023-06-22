<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.environmentsurvey.utility.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@include file="admin.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
   background-image: url(images/supportadmin.gif);
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body><br><br>
<table border="1" align="center" cellpadding="5" class="table table-active" style="color: yellow; ">
      
<tr>
<th>ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Role</th>
<th>Issue</th>
</tr>

<%
int index=1;
Connection con = DBConnect.getConn();
Statement statement = con.createStatement();
ResultSet resultSet = statement.executeQuery("Select * from e_support");
while(resultSet.next())
{
%>
<tr>
<td>
<%
out.println(index++);
%>
</td>
<td>
<%
out.println(resultSet.getString(2));
%>
</td>

<td>
<%
out.println(resultSet.getString(3));
%>
</td>

<td>
<%
out.println(resultSet.getString(4));
%>
</td>

<td>
<%
out.println(resultSet.getString(5));
%>
</td>
</tr>
<%
}%>
</table>
</body>
</html>