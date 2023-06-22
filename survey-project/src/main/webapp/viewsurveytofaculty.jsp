<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.environmentsurvey.utility.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@include file="header3.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
   background-image: url(images/viewsurvey.png);
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<%-- Xem Khao sat da duoc tao boi Khoa --%>
</head>
<body><br><br>
<h1 align="center">List of Surveys Added</h1><br>
<table border="1" align="center" cellpadding="5" class="table table-active" style="color: maroon;"
      >
<tr>
<th>Survey Number</th>
<th>Survey Name</th>
<th>Description</th>
<th>Volunteer</th>
<th>Date</th>
<th>Venue</th>
<th>Action</th>
</tr>
<%-- Duyet tung dong trong CSDL va Truyen vao Gia tri ( Vi tri tu 02 - 06 ). Index tang theo Bien ( index ) --%>
<%
int index=1;
Connection con = DBConnect.getConn();
Statement statement = con.createStatement();
ResultSet resultSet = statement.executeQuery("Select * from e_addsurveybyfaculty");
while (resultSet.next()) {

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

<td>
<%
out.println(resultSet.getString(6));
%>
</td>
<!-- <form action="AdminCtrl" method="post"> -->
<%-- Sua Khao sat bang cach lay Cot Dau tien tu CSDL --%>
<td><a href="editsurvey.jsp?id=<%=resultSet.getInt(1) %>"  name="Action" value="Edit" class="btn btn-primary" >Edit</a>
<%--  <input type="hidden" name="j" value="<%=resultSet.getInt(1)%>"> --%>

<%-- Xoa Khao sat bang cach lay Cot Dau tien tu CSDL --%>
<a href="deletefacultysurvey.jsp?id=<%=resultSet.getInt(1)%>" class="btn btn-danger"  >Delete</a>

</td>
</tr>

<%

}%>
</table>
</form>
</body>
</html>