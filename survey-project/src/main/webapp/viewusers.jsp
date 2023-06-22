<%@page import="com.environmentsurvey.utility.DBConnect"%>
<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="admin.jsp" %>
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
<style>
body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
   background-image: url(images/viewuser.gif);
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body><br><br>
<h1 align="center">View REGISTERED USERS</h1><br>
<table border="1" align="center" cellpadding="5" class="table table-active" style="color: maroon;">
      <!-- <!-- style="font-size: 200%; font-family: inherit; font-style: normal; background-color: window;" -->
<tr>
<th>ID</th>
<th>Name</th>
<th>Roll/Employee Number</th>
<th>Class</th>
<th>Specification</th>
<th>Section</th>
<th>RoleID</th>
<!-- <th>Password</th> -->
<th>Date</th>
<th>Action</th>

</tr>
<%
int index=1;
Connection con=DBConnect.getConn();
Statement statement = con.createStatement();
ResultSet resultSet = statement.executeQuery("Select * from e_user");
while (resultSet.next()) {
%>
<tr>
<td>
<% out.println(index++); %>
</td>

<td>
<% out.println(resultSet.getString(2)); %>
</td>

<td>
<% out.println(resultSet.getInt(3)); %>
</td>

<td>
<% out.println(resultSet.getString(4)); %>
</td>

<td>
<% out.println(resultSet.getString(5)); %>
</td>

<td>
<% out.println(resultSet.getString(6)); %>
</td>

<td>
<% out.println(resultSet.getInt(7)); %>
</td>
<%-- <td>
<% out.println(resultSet.getString(8)); %>
</td> --%>
<td>
<% out.println(resultSet.getString(10)); %>
</td>
<%-- <td><a href="deleteusers.jsp?id=<%=resultSet.getInt(1)%>">Delete</a></td> --%>
<td><a href="editstudent.jsp?id=<%=resultSet.getInt(1)%>" class="btn btn-primary">Edit</a>
<a href="acceptusers.jsp?id=<%=resultSet.getInt(1)%>" class="btn btn-warning" >Accept</a>

<a href="deleteusers.jsp?id=<%=resultSet.getInt(1)%>" class="btn btn-danger">Decline</a></td>
</tr>
<%
}
%>
</table>
</body>
</html>