<%@page import="com.environmentsurvey.utility.DBConnect"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
   background-image: url(images/viewfaq.gif);
  background-repeat: no-repeat;
  background-size: cover;
}

</style>
</head>
<body>
<br><br>
<table border="1" align="center" cellpadding="5" class="table table-active" style="color: green;">
      
<tr><th>Support Number</th>
<th>Questions</th>
<th>Answers</th>
<th>Action</th>
</tr>
<%
int index=1;
Connection con=DBConnect.getConn();
Statement statement=con.createStatement();
ResultSet rs=statement.executeQuery("SELECT * FROM E_FAQ");
while(rs.next())
{
%>
<tr><td>
<%=index++ %>
</td>
<td>
<%=rs.getString(2) %>
</td>
<td>
<%=rs.getString(3) %>
</td>
<td><a href="editfaq.jsp?id=<%=rs.getInt(1)%>" class="btn btn-primary">Edit</a></td>

</tr>
<%} %>

</table>

</body>
</html>