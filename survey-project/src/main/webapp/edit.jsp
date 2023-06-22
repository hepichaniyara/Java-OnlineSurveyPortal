<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
    <%@page import="com.environmentsurvey.bean.UserBean" %>
    <%@page import="com.environmentsurvey.model.*" %>
    <%
    UserBean bean=new UserBean();
    %>
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
/*  for ne w form*/
/* body {
  margin: 0;
  padding: 0;
  background-color: #17a2b8;
  height: 100vh;
} */
#login .container #login-row #login-column #login-box {
  margin-top: 5px;
  max-width: 600px;
  height: 700px;
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
  
   background-image: url(images/useredit.gif);
  background-repeat: no-repeat;
  background-size: cover;

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
<%
String id=request.getParameter("id");
UserBean bean2=UserRegisterDAO.getRecordbyId(Integer.parseInt(id));
%>
<%-- <form action="UserRegistrationCtrl"  method="post">
<h1>Edit Survey</h1>
<input  type="hidden" name="id" value="<%=bean2.getId()%>">

<table>
<tr>
<td>Survey Id</td>
<td><input  type="text" name="id" value="<%=bean.getId()%>"></td>
</tr>
<tr>
<td>Name</td>
<td><input type="text" name="uname" placeholder="name" value="<%=bean2.getName()%>"></td>
</tr>
<tr>
<td>Roll No</td>
<td><input type="text" name="roll" placeholder="Roll No" value="<%=bean2.getRoll()%>"></td>
</tr>
<tr>
<td>Class</td>
<input type="text" name="class" placeholder="Class" value="<%=bean2.getUserclass()%>">
<td><select name="class" required="required" value="<%=bean2.getUserclass()%>" placeholder="Class">
			<option disabled="disabled" selected="selected">Choose
				option</option>
			<option>FE</option>
			<option>SE</option>
			<option>TE</option>
			<option>BE</option>
	</select></td>
</tr>
<tr>
<td>Specification</td>
<td> <input type="text" name="specification" placaholder="Specification" value="<%=bean2.getSpecification()%>"></td>
</tr>
<tr>
<td>Section</td>
<td> <input type="text" name="section" placaholder="Section" value="<%=bean2.getSection()%>"></td>
</tr>

<tr>
<td>Password</td>
<td><input type="text" name="pass" placaholder="Password" value="<%=bean2.getPassword()%>"></td>
</tr>
<tr>
<td>Date of Admission</td>
<td><input type="text" id="datepicker" name="doa" placaholder="Date of Admission" value="<%=bean2.getDoa()%>"></td>
</tr>
<tr>
<td><span style="color:red"><%=(request.getAttribute("msg") == null) ? "" : request.getAttribute("msg")%></span></td>
</tr>

<tr>
<td><input type="submit" name="Action" value="Edit Profile"></td>
</tr>
</table>

</form> --%>

<div id="login">
       <!--  <h3 class="text-center text-white pt-5">Restaurant Management System</h3> -->
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12" >
                    
                        <form action="UserRegistrationCtrl"  method="post">
<!-- <h1 align="center">Edit Survey</h1> -->
<input  type="hidden" name="id" value="<%=bean2.getId()%>">
                            <!-- <h3 class="text-center text-info">Login</h3> -->
                            <h6 class="text-center text-red pt-1"><strong><span style="color:red"><%=(request.getAttribute("msg") == null) ? "" : request.getAttribute("msg")%></span></td>
</strong></h6>
                            <div class="form-group">
                                <label for="username" class="text-info">Name:</label><br>
                                <input type="text" name="uname" id="username" class="form-control" required="required" value="<%=bean2.getName()%>" >
            <strong><span style="color:red"><%=(request.getAttribute("isname") == null) ? "" : request.getAttribute("isname")%></span>
</strong>               
                            </div>
                           
                                
                           
                            <div class="form-group">
                                <label for="password" class="text-info">Roll Number</label><br>
                                <input type="text" name="roll" id="password" class="form-control" required="required" value="<%=bean2.getRoll()%>" >
          <h6 class="text-center text-red pt-1"><strong><span style="color:red"><%=(request.getAttribute("isroll") == null) ? "" : request.getAttribute("isroll")%></span></td>
</strong></h6>                   
                            </div>
                            
                               <div class="form-group">
                                <label for="username" class="text-info">Class</label><br>
                               <%--  <input type="text" name="class" id="username" class="form-control" required="required" value="<%=bean2.getUserclass()%>"> --%>
                          <select name="class" required="required" value="<%=bean2.getUserclass()%>" class="form-control">
			<option disabled="disabled" selected="selected">Choose
				option</option>
			<option>Undergraduate</option>
			<option>Master</option>
			<option>Professor</option>
			<option>Student</option>
	</select>
                           <strong><span style="color:red"><%=(request.getAttribute("ermsg") == null) ? "" : request.getAttribute("ermsg")%></span>
</strong>
                            </div>
                            
                               <div class="form-group">
                                <label for="username" class="text-info">Specification</label><br>
                                <input type="text" name="specification" class="form-control" required="required" value="<%=bean2.getSpecification()%>">
                            </div>
                            
                            <div class="form-group">
                                <label for="username" class="text-info">Section</label><br>
                                <input type="text" name="section"  class="form-control" required="required" value="<%=bean2.getSection()%>">
                            </div>
                            
                            <div class="form-group">
                                <label for="username" class="text-info">Password</label><br>
                                <input type="password" name="pass"  class="form-control" required="required" value="<%=bean2.getPassword()%>">
                            </div>
                            
                            <div class="form-group">
                                <label for="username" class="text-info">Date of Admission</label><br>
                                <input type="text" name="doa" id="datepicker" class="form-control" required="required" value="<%=bean2.getDoa()%>">
                            </div>
                            
                            
                            <div class="form-group" align="center" >
                               <!--  <label for="remember-me" class="text-info"><span>Remember me</span>�<span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br> -->
                                <input type="submit" name="Action" class="btn btn-info btn-md" value="Edit Profile"> 
                                
                            </div>
                           
                        </form>
                    </div>
                </div>
            </div>
        </div>



</body>
</html>