<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@include file="User_header.jsp" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Payment.css" type="text/css">
<style><%@include file="css/Payment.css"%></style>
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<script type="text/javascript" src="css/validation.js"></script>
</head>
<body>
<form name="Payment" action="Payment" method="post">
	<div class="main">
		<div class="col-sm-6">
			<div class="left">
				<center><i class="fa fa-credit-card" aria-hidden="true" style="font-size:20px; color:gray; margin-top:20px"></i></center>
				<center><label class="booking">Advance Booking</label></center>
				
				<div class="square" style="	margin-left: 475px;"></div>
				
				<label class="nam">Card Number</label><br>
				<input type="text" class="cardnumber" placeholder="1234 1234 1234 1234" name="card_number" onkeypress="return isNumber(event)" maxlength="16"><br><br>
				<div class="row">
					<div class="col-sm-6">
						<label class="names">Card Expiry</label><br>
						<input type="text" class="cvc" placeholder="MM/YY" name="card_expiry" onkeypress="return isNumber(event)" >
					</div>
					<div class="col-sm-6">
						<label class="namess">CVC</label><br>
						<input type="text" class="cvcc" placeholder=" " name="cvc" onkeypress="return isNumber(event)" maxlength="4">
					</div>
				</div><br>
			<label class="nam">Name on Card</label><br>
			<input type="text" class="cardnumber" placeholder="Full name as on card" name="card_name" onkeypress="return isString(event)" ><br><br>
			<label class="nam">Email</label><br>
			<input type="email" class="cardnumber" placeholder="example@gmail.com" name="user_email"><br><br>
			
			<input type="checkbox" style="margin-left:20px">
			<label>I have read and agreed to the Terms and conditions</label><br><br>
			<center><input type="submit" class="button" value="Pay Now" name="submit"></center>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="right">
			<img src="images/<%=session.getAttribute("photo_1")%>"  class="imageclass">
				<table class="tableclass">
					<thead>
						<tr>
							<th>Brand</th>
							<td><%=session.getAttribute("brand") %></td>
						</tr>
						<tr>
							<th>Car Name</th>
							<td><%=session.getAttribute("car_name") %></td>
						</tr>
						<tr>
							<th>Year</th>
							<td><%=session.getAttribute("reg_year") %></td>
						</tr>
						<tr>
							<th>Owner</th>
							<td><%=session.getAttribute("owner")%></td>
						</tr>
						<tr>
							<th>Insurance</th>
							<td><%=session.getAttribute("insurance")%></td>
						</tr>
						<tr>
							<th>Location</th>
							<td><%=session.getAttribute("location")%></td>
						</tr>
						<tr>
							<th>Fuel</th>
							<td><%=session.getAttribute("fuel")%></td>
						</tr>
						<tr>
							<th>Transmission</th>
							<td><%=session.getAttribute("transmission") %></td>
						</tr>
						<tr>
							<th>Running</th>
							<td><%=session.getAttribute("kilometer")%></td>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</form>
</body>
</html>