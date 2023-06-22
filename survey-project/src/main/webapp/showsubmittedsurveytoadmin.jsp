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
<style>
body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
   background-image: url(images/surveydone.gif);
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<br>
<h1 align="center">Surveys done by Students</h1><br>
<table border="1" align="center" cellpadding="5" class="table table-active" style="color: maroon;">
      
<tr>
<th>Survey Number</th>
<th>Student Name</th>
<th>Total Survey</th>
</tr>

<%
Connection con = DBConnect.getConn();
Statement statement = con.createStatement();
ResultSet resultSet = statement.executeQuery("Select id,name,SUM(totalsurvey)from e_submitted group by name;");
int count = 1;
while (resultSet.next()) {

%>
<tr>
<td><%=count%></td>
<%-- <td><%=resultSet.getInt(1)%></td>--%>
<td><%=resultSet.getString(2)%></td>
<td><%=resultSet.getInt(3)%></td>
</tr>
<%
count++;} %>
</table>
</body>
</html>