<!-- <html>
<head>
<title>Environment Survey Portal</title>
<link href="../css/style.css" rel="stylesheet" />

</head>

<body>
<h2 align="center">Welcome to Environment Survey Portal</h2>
<div class="topnav">
  <a class="active" href="index.jsp">Home</a>
  <a href="login.jsp">Login</a>
  <a href="surveyboard.jsp">Survey Board</a>
  <a href="#about">Edit Profile</a>
  <a href="support.jsp">Support</a>
  <a href="faqs.jsp">Faqs</a>
</div>
</body>
</html> -->

<!-- header2.jsp code -->
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/* * {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
} */
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%
	if (request.getSession(false).getAttribute("student") == null) {
		response.sendRedirect("login.jsp");
	}
%>
<!-- <div class="header">
  <a href="#default" class="logo">Environment Survey</a>
  <a href="index.jsp"><span class="fa fa-star-half-o"></span>Home</a>
  <a href="viewsurveytostudents.jsp">Survey Board</a>
  <a href="myprofilestudent.jsp">My Profile</a>
  <a href="eparticipation.jsp">Effective participation</a>
  <a href="support.jsp">Support</a>
  <a href="faqs.jsp">Faqs</a>
  
  <div class="header-right">
    
    <a href="logout.jsp">Logout</a>
  </div>
</div> -->

<%-- <div style="padding-left:20px">
<div align="right" style="color: buttonhighlight; font-style: italic; font-size-adjust: inherit; font-weight: 100; font-variant: normal;">Welcome <%out.println(session.getAttribute("student"));
if(session.getAttribute("student")==null)
{
	response.sendRedirect("login.jsp");
}
Integer roll=(Integer)session.getAttribute("roll");
System.out.print(roll);
%> --%>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#a1887f;">
  <a class="navbar-brand" href="#">Online Survey Portal</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
  
      
      
      
      
      
      
      <li class="nav-item active">
        <a class="nav-link" href="viewsurveytostudents.jsp">Surveys Board</a> 
  
      </li>
      <!-- <li class="nav-item active">
      <a class="nav-link" href="myprofilestudent.jsp">My Profile</a>
      </li> -->
      <li class="nav-item active">
      <a class="nav-link" href="eparticipation.jsp">Seminar Registration</a>
      </li>
      
      <li class="nav-item active">
      <a class="nav-link" href="support.jsp">Support</a>
      </li>
      <li class="nav-item active">
      <a class="nav-link" href="faqs.jsp">FAQs</a>
      </li>
      
      
      <li class="nav-item dropdown active" >
 	
        <a  class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Welcome
		<%=session.getAttribute("student")%>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="myprofilestudent.jsp">My Profile</a>
          <a class="dropdown-item" href="logout.jsp">Logout</a>
        </div>
      </li>
    </ul>
  </div>
</nav>

</body>
</html>


