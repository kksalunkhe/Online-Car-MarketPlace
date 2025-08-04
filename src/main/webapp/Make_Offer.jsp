<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="User_header.jsp" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Make_Offer.css" type="text/css">
<style><%@include file="css/Make_Offer.css"%></style>
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
</head>
<body>
<form name="Make_Offer" action="Make_Offer" method="post">
 
		
	<div class="offer">
		<div class="head">
			<label class="makeoffer">MAKE OFFER</label>
		 </div>
		 <table class="tableclass">
		 	<thead>
		 		<tr>
		 			<th>Model</th>
		 			<td> <%= session.getAttribute("brand") %> </td>
				</tr>
				<tr>
		 			<th>Name</th>
		 			<td><%= session.getAttribute("car_name") %></td>
		 		</tr>
		 		<tr>
		 			<th>Year</th>
		 			<td><%= session.getAttribute("reg_year") %></td>
		 		</tr>
		 		<tr>
		 			<th>Owner</th>
		 			<td><%= session.getAttribute("owner") %></td>
		 		</tr>
		 	</thead>
		 </table>
	
		 <hr class="line">
		 <label class="price">Original Price</label><br>
		 <label class="pricee"><%= session.getAttribute("price") %></label>
		 <hr class="line">
		 <label class="price">Your Offer Price</label><br>
		 <input type="text" class="offerbox" placeholder="" name="offer_price">
		 <hr class="line">
		 <input type="submit" name="submit" value="Send" class="buttonclass">
	</div>
</form>
</body>
</html>