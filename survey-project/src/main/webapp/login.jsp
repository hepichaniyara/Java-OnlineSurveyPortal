<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/*  for ne w form*/
body {
  margin: 0;
  padding: 0;
  background-color: #17a2b8;
  height: 100vh;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 340px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
}



* {box-sizing: border-box;}

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
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo">Online Survey Portal</a>
  <div class="header-right">
    
    <a href="login.jsp">Login</a>
    <a href="../Envrionment-survey-project/">Back</a>
  </div>
</div>

<div style="padding-left:20px">
<br>

  <%-- <form action="LoginCtrl" method="post">
  <table align="center" style="color: black; background-position: center; font-family:sans-serif;">
  <tr><td>
  Username</td>
  <td>
  <input type="text" name="uname" placeholder="Username" required></td></tr>
  <tr><td>
  Password</td><td>
  <input type="password" name="pass" placeholder="Password" required></td></tr>
  <tr>
        <td><span style="color:red"><%=(request.getAttribute("ermsg") == null) ? "" : request.getAttribute("ermsg")%></span></td>
        </tr>
	<tr>  <td align="right"><input type="submit" value="Login" id="login" name="login"/></td>
	<td align="right"><a href="userreg.jsp">Register here</a></td>
	</tr>
  </table>
  </form> --%>
  
   <div id="login">
       <!--  <h3 class="text-center text-white pt-5">Restaurant Management System</h3> -->
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12" >
                    
                        <form id="login-form" class="form" action="LoginCtrl" method="post">
                        
                            <h3 class="text-center text-info">Login</h3>
                            <h6 class="text-center text-red pt-1"><strong><span style="color:red"><%=(request.getAttribute("ermsg") == null) ? "" : request.getAttribute("ermsg")%></strong></span></h6>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="uname" id="username" class="form-control" required="required">
                            </div>
                           
                                
                           
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="pass" id="password" class="form-control" required="required">
                            </div>
                            <div class="form-group" align="center" >
                               <!--  <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br> -->
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Login"> &nbsp
                                <a href="userreg.jsp" class="btn btn-info btn-md">Not Registered Yet?</a>
                            </div>
                           
                        </form>
                    </div>
                </div>
            </div>
        </div>
</div>

</body>
</html>
