<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/User_Signup.css" type="text/css">
<style><%@include file="css/User_Signup.css"%></style>
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<script type="text/javascript" src="css/validation.js"></script>
</head>
<body>
	
	

	<form name="User_Signup" action="User_Signup" method="post">
	
	<a href="User_Login.jsp"><i class="fa fa-sign-in" aria-hidden="true" style="font-size: 25px;  color: green;  float: right; margin: 20px 30px 0 0;"></i> </a>
	<div class="col-sm-3" style=" background: linear-gradient(to bottom, #ccff99 0%, #00cc66 100%); height: 729px; ">
		
	</div>

	<div class="col-sm-9" style="background-color: white;">
		<div class="first">
			<div class="col-sm-6">
				 <img src="images/3.png" class="image"> 
			</div>
			<div class="col-sm-6">
				<center><label class="signup">Create your Account</label></center>
				<label class="usertxt">Enter your Name</label>
				
				<input type="text" placeholder=" Username"  name="username" class="texts" onkeypress="return isString(event)">
				<label class="usertxt">Enter your Email</label>
				<input type="email" placeholder=" Email" name="email" class="texts">
				<div class="row">
					<div class="col-sm-6">
						<label class="conn">Enter your Contact</label>
						<input type="text" placeholder=" Contact" name="contact" class="con" onkeypress="return isNumber(event)" maxlength="10">
					</div>
					<div class="col-sm-6">
						<label class="dates">Enter your Birth Date</label>
						<input type="date" class="date" name="dob">
					</div>
				</div>
				
				<div class="row">
					<div class="col-sm-6">
						<label class="conn">City</label>
						<select name="city" class="dist">
							<option value=""> City</option>
							<option value="Satara">Satara</option>
							<option value="Sangli">Sangli</option>
							<option value="Kolhapur">Kolhapur</option>
							<option value="Pune">Pune</option>
							<option value="Solapur">Solapur</option>
							<option value="Ratnagiri">Ratnagiri</option>
						</select>
					</div>
					<div class="col-sm-6">
						<label class="dates">Gender</label><br>
						<input type="radio" name="gender" value="Male">
						<label>Male</label>
						<input type="radio" name="gender" value="female">
						<label>Female</label>
					</div>
				</div>
				
				<div class="row">
					<div class="col-sm-6">
						<label class="conn">Enter Password</label>
						<input type="password" placeholder=" Password" class="dist" name="password">
					</div>
					<div class="col-sm-6">
						<label class="dates">Enter Re-Password</label>
						<input type="password" placeholder=" Confirm Password" class="date" name="cpassword">
					</div>
				</div>
				
				
				<br>
				<input type="submit" value="Register" name="submit" class="button">
			</div>
		</div>	
		
		
	</div>
	</form>

</body>
</html>