<%@page import="com.environmentsurvey.utility.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <style>
/* * {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
} */
</style> -->
<style>
body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
   background-image: url(images/comp1.gif);
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<%-- <%
	if (request.getSession(false).getAttribute("student") == null) {
		response.sendRedirect("login.jsp");
	}
%> --%>
<%-- <div>Welcome <%out.println(session.getAttribute("student"));
if(session.getAttribute("student")==null)
{
	response.sendRedirect("login.jsp");
}
%></div> --%>

<div style="margin-top: 30px">
  <div ><h1 align="center" style="color: maroon;">Interested in Upcoming Contests ( Admin Section )? </h1>
  <br><h1 align="center" style="color: maroon;">Make time for some of the Outstanding Competitions</h1><br>
 	<table border="1" align="center"   class="table table-success"
      >
 	<tr>
 	<th>Competition Name</th>
 	<th>Description</th>
	<th>Volunteer</th>
	<th>Date of Competition</th>
	<th>Venue</th> 
	</tr>
	
	<%
			Connection con=DBConnect.getConn();
		  Statement statement = con.createStatement();
		  ResultSet resultSet = statement.executeQuery("Select * from e_comp");
		  while (resultSet.next()) {
%>
		  <tr>
		  <td>
		  <%=resultSet.getString(2) %>
		  </td>
		  <td>
		  <%=resultSet.getString(3) %>
		  </td>
		  <td>
		  <%=resultSet.getInt(4) %>
		  </td>
		  <td>
		  <%=resultSet.getString(5) %>
		  </td>
		  <td>
		  <%=resultSet.getString(6) %>
		  </td>
		  </tr>
	
	<%} %>
 	</table>
  <!--  -->
   </div>
   
   <div ><h2 align="center" style="color: black;">Interested in Upcoming Contests ( Staffs Section )? </h2>
  <br><h2 align="center" style="color: black;">Make time for some of the Outstanding Competitions</h2><br>
 	<table border="1" align="center"   class="table table-success"
      >
 	<tr>
 	<th>Competition Name</th>
 	<th>Description</th>
	<th>Volunteer</th>
	<th>Date of Competition</th>
	<th>Venue</th> 
	</tr>
	
	<%
			Connection con1=DBConnect.getConn();
		  Statement statement1 = con.createStatement();
		  ResultSet resultSet1 = statement.executeQuery("Select * from e_compbyfaculty");
		  while (resultSet1.next()) {
%>
		  <tr>
		  <td>
		  <%=resultSet1.getString(2) %>
		  </td>
		  <td>
		  <%=resultSet1.getString(3) %>
		  </td>
		  <td>
		  <%=resultSet1.getInt(4) %>
		  </td>
		  <td>
		  <%=resultSet1.getString(5) %>
		  </td>
		  <td>
		  <%=resultSet1.getString(6) %>
		  </td>
		  </tr>
	
	<%} %>
 	</table>
  <!--  -->
   </div>
</div>



</body>
</html> 



