<!DOCTYPE html>
<%@page import="com.environmentsurvey.ctrl.ListCtrl"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-image: url(images/onlineportal.jpg);
  background-repeat: no-repeat;
  background-size: cover;
}

.header {
  overflow: hidden;
  background-color: #FEFEFE;
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
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo">Online Survey Portal</a>
  <div class="header-right">
    
   <a href="login.jsp">Login</a> 
    <%-- <a href="<%=ListCtrl.login%>">Login</a> --%>
  </div>
</div>

<!-- <div style="padding-left:20px">
  <h1>Welcome To Environment Survey Page </h1>
  <p>We welcome you to survey for the Environment Protection</p>
</div> --><br>
<div class="jumbotron jumbotron-fluid" style="padding-top: 5px;
  padding-bottom: 5px;">
  <div class="container">
    <center><h1 class="display-4">Welcome To Online Survey Portal</h1> <p class="lead" style="font-stretch: ultra-condensed; color: maroon; text-align: center;"><strong>"The True Sign of Intelligence is not Knowledge but Imagination" - Quotes by Albert Einstein</strong></p> </center>

  </div>
</div>
</body>
</html>
