<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
/* body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
} */
</style>

</head>
<body>


<%
	if (request.getSession(false).getAttribute("faculty") == null) {
		response.sendRedirect("login.jsp");
	}
%>
<!-- <div class="navbar">
  <a href="header3.jsp">Home</a>
  
  <div class="dropdown">
    <button class="dropbtn">Add Survey 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="addsurveybyfaculty.jsp">For Students</a>
      
     
    </div>
  </div> 
  
  <div class="dropdown">
    <button class="dropbtn">View Survey 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="viewsurveytofaculty.jsp">For Students</a>
      <a href="viewsurveyfromadmin.jsp">For faculty/Staff</a>
      
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Users 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="addFaculty.jsp">Add Faculty/Staff</a>
     <a href="viewusers.jsp">View Users</a>
      
    </div>
  </div>
  <div class="topnav-right">  
  <a href="addcompetitionbyfaculty.jsp">AddCompetition</a> 
  <a href="showsubmittedsurveytofaculty.jsp">Show Student Survey</a>
  <a href="supportadmin.jsp">Support</a>
  <a href="logout.jsp">Logout</a>
  
</div>
</div> -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#a1887f;">
  <a class="navbar-brand" href="#">Online Survey Portal</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="indexpageforfaculty.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
  
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Add Survey
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="addsurveybyfaculty.jsp">For Students</a>
        
        </div>
      </li>
      
      
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         View Survey
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          
          <a class="dropdown-item" href="viewsurveytofaculty.jsp">For Students</a>
          <%-- <a class="dropdown-item" href="viewsurveyfromadmin.jsp">For Teachers</a> --%>
          
        </div>
      </li>
      
      
      <li class="nav-item active">
        <a class="nav-link" href="addcompetitionbyfaculty.jsp">Add Competition</a> 
  
      </li>
      <li class="nav-item active">
      <a class="nav-link" href="showsubmittedsurveytofaculty.jsp">Show Student Surveys</a>
      </li>
      
      
      
      
      
      <li class="nav-item dropdown active" >
 	
        <a  class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Welcome
		<%=session.getAttribute("faculty")%>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          
          <a class="dropdown-item" href="logout.jsp">Logout</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
<%-- <div>
Welcome<%=
request.getAttribute("username")%></div> --%>
<%-- <div align="right" style="color: buttonhighlight; font-style: italic; font-size-adjust: inherit; font-weight: 100; font-variant: normal;">Welcome <%=session.getAttribute("faculty") %></div>
<h3></h3>
<p></p> --%>

</body>
</html>
