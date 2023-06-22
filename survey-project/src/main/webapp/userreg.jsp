
<%@ include file="header2.jsp"%>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
img {width:100%;}
</style>
</head>
<body>
<%-- <form action="UserRegistrationCtrl" method="POST" >
<h1 align="center">Registeration for Environment Survey</h1>
<table id="table-1" align="center" cellpadding="5" cellspacing="10" frame="void" bgcolor="white">
	<tr>
		<td>Name</td>
		<td><input type="text" name="uname" required="required"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" required="required"></td>
	</tr>
	<tr>
		<td>Roll</td>
		<td><input type="text" name="roll" required="required"></td>
	</tr>
	<tr>
		<td>Specification</td>
		<td><input type="text" name="specification" required="required"></td>
	</tr>
	<tr>
		<td>Section</td>
		<td><input type="text" name="section" required="required"></td>
	</tr>
	<tr>
	<td>Class</td>
	<td><select name="class" required="required">
			<option disabled="disabled" selected="selected">Choose
				option</option>
			<option>FE</option>
			<option>SE</option>
			<option>TE</option>
			<option>BE</option>
	</select></td>
	</tr>
	<tr>
<td>Date of Admission</td>
<td> <input type="text" name="doa" id="datepicker" placaholder="Date of Admission"></td>
</tr>
	<tr>
		<td><input type="submit" name="Action" value="Register" id="button-1"/></td>
	</tr>
	<tr>
		<td><span style="color:red"><%=(request.getAttribute("msg") == null) ? "" : request.getAttribute("msg")%></span></td>
	</tr>
</table>
<%session.getAttribute("roll");%>
</form> --%>
<section class="testimonial py-5" id="testimonial">
    <div class="container">
        <div class="row ">
            <div class="col-md-4 py-5 bg-primary text-white text-center ">
                <div class=" ">
                    <div class="card-body">
                       <!--  <img src="http://www.ansonika.com/mavia/img/registration_bg.svg" style="width:30%"> -->
                        <img src="images/stud.jpg" style="width:30%">
                        <h2 class="py-3">Registration</h2>
                        <p>Register and Conduct the Survey.

</p>
                    </div>
                </div>
            </div>
            <div class="col-md-8 py-5 border">
                <h4 class="pb-4">Please fill with your details</h4>
               <strong> <span style="color:red"><%=(request.getAttribute("msg") == null) ? "" : request.getAttribute("msg")%></span></strong>
                <form action="UserRegistrationCtrl" method="POST" >
                <div class="form-row">
                        <div class="form-group col-md-6">
                          <input id="Full Name" name="uname" placeholder="Name" class="form-control" type="text" required="required">
                           <strong> <span style="color:red"><%=(request.getAttribute("isname") == null) ? "" : request.getAttribute("isname")%></span></strong>
                        </div>
                        <div class="form-group col-md-6">
                          <input type="password" class="form-control" name="pass" id="inputEmail4" placeholder="Password" required="required">
                        </div>
                      </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                         <input id="Mobile No."  name="roll" placeholder="Enter ID" class="form-control" required="required" type="text">
                         <strong> <span style="color:red"><%=(request.getAttribute("isroll") == null) ? "" : request.getAttribute("isroll")%></span></strong>
                        </div>
                        <div class="form-group col-md-6">
                          <input type="text" class="form-control" name="specification" id="inputEmail4" placeholder="Specification" required="required">
                           <strong> <span style="color:red"><%=(request.getAttribute("isspecification") == null) ? "" : request.getAttribute("isspecification")%></span></strong>
                        </div>
                      </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <input id="Mobile No." type="text" name=section placeholder="Enter section" class="form-control" required="required" type="text">
                             <strong> <span style="color:red"><%=(request.getAttribute("issection") == null) ? "" : request.getAttribute("issection")%></span></strong>
                        </div>
                        <div class="form-group col-md-6">
                                  
                                  <select id="inputState" name="class" class="form-control" required="required">
                                    <!-- <option selected >Choose Class ...</option> -->
                                    <option selected="selected"> Undergraduate</option>
                                    <option> Master</option>
                                    <option> Professor</option>
                                    <option> Student</option>
                                  </select>
                        </div>
                        
                        <div class="form-group col-md-12">
                                 
                                  <input id="datepicker" type="text" name="doa"  class="form-control" placeholder="Enter Date Of Admission" required="required">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <div class="form-group">
                                <!-- <div class="form-check">
                                  <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                                  <label class="form-check-label" for="invalidCheck2">
                                    <small>By clicking Submit, you agree to our Terms & Conditions, Visitor Agreement and Privacy Policy.</small>
                                  </label>
                                </div> -->
                              </div>
                    
                          </div>
                    </div>
                    
                    <div class="form-row">
                        <button type="submit" class="btn btn-danger" name="Action" value="Register" >Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
</body>
</html>
