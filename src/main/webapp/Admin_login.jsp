<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Admin_login.css" type="text/css">
<style><%@include file="css/Admin_login.css"%></style>
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
</head>
<body>

	<form name="Admin_login" action="Admin_login" method="post">

		<div class="col-sm-3" style=" background: linear-gradient(to bottom, #ccff99 0%, #00cc66 100%); height: 729px; " >
		 
		</div>
		
		<div class="col-sm-9" style="background-color: white;">
			<div class="secdiv">
				 <div class="col-sm-6">
				 	<img src="images/3.png" class="imageclass" >
				 </div>
				 <div class="col-sm-6">
				 	<br>
				 	<center><label class="login">Admin Login</label></center>
				 	<i class="fa fa-user-circle-o" aria-hidden="true" style="color:#00cc66; font-size:20px; margin-left:50px;"></i>
				 	<label class="usertext">Username</label>
				 	<input type="text" required placeholder=" Username" class="textboxx" name="username">
				 	<i class="fa fa-lock" aria-hidden="true" style="color:#00cc66; font-size:20px; margin-left:50px;"></i>
				 	<label class="usertxt">Password</label>
				 	<input type="password" required placeholder=" Password" class="textbox" name="password">
				 	<input type="submit" value="Login" name="submit" class="buttonclass">
				 	<br><br>
	
				 </div>
			</div>
		 
		</div>
	</form>
</body>
</html>