<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.environmentsurvey.utility.DBConnect"%>
<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
   background-image: url(images/surveystudent.gif);
  background-repeat: no-repeat;
  background-size: cover;
}
</style>

</style>
</head>
<body><br><br>
<div ><h1 style="margin-top: 30px" align="center" style="color: maroon;">List of Surveys Available from Administrators </h1> </div>
<table border="1" align="center" cellpadding="5" class="table table-success" style="color: maroon;">
      
<tr>
<th>Survey Number</th>
<th>Name</th>
<th>Description</th>
<th>Volunteer</th>
<th>Date</th>
<th>Venue</th>
<th>Apply</th>
</tr>

<%
int index=1;
Connection con=DBConnect.getConn();
Statement statement = con.createStatement();
ResultSet resultSet = statement.executeQuery("Select * from e_surveystudent");
while (resultSet.next()) {
%>
<tr>
<td>
<%=index++%>
</td>
<td>
<%=resultSet.getString(2)%>
</td>
<td>
<%=resultSet.getString(3)%>
</td>
<td>
<%=resultSet.getInt(4)%>
</td>
<td>
<%=resultSet.getString(5)%>
</td>
<td>
<%=resultSet.getString(6)%>
</td>
<td><a href="apply.jsp?id=<%=resultSet.getInt(1)%>" class="btn btn-info btn-md">Start</a></td>
</tr>
<%
}
%>
</table>

<div ><h2 style="margin-top: 30px" align="center" style="color: yellow;">List of Surveys Available from Staffs </h2> </div>
<table border="1" align="center" cellpadding="5" class="table table-success" style="color: maroon;">
      
<tr>
<th>Survey Number</th>
<th>Name</th>
<th>Description</th>
<th>Volunteer</th>
<th>Date</th>
<th>Venue</th>
<th>Apply</th>
</tr>

<%
int index1=1;
Connection con1=DBConnect.getConn();
Statement statement1 = con.createStatement();
ResultSet resultSet1 = statement.executeQuery("Select * from e_addsurveybyfaculty");
while (resultSet1.next()) {
%>
<tr>
<td>
<%=index1++%>
</td>
<td>
<%=resultSet1.getString(2)%>
</td>
<td>
<%=resultSet1.getString(3)%>
</td>
<td>
<%=resultSet1.getInt(4)%>
</td>
<td>
<%=resultSet1.getString(5)%>
</td>
<td>
<%=resultSet1.getString(6)%>
</td>
<td><a href="apply.jsp?id=<%=resultSet1.getInt(1)%>" class="btn btn-info btn-md">Start</a></td>
</tr>
<%
}
%>
</table>
</body>
</html>