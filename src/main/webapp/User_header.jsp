<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/User_header.css" type="text/css">
<style><%@include file="css/User_header.css"%></style>
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
</head>
<body>
	<nav>
		<label class="name">Car Marketplace</label>
	     <ul>
	     	 <li><a href="Home_Page.jsp">Home</a></li>
		     <li><a href="Sell_Car.jsp">Sell Car</a></li>
		     <li><a href="Buy_Car.jsp">Buy Car</a></li>
		     <li><a href="Cart.jsp">Cart</a></li>
		    
		     <li class="dropdown">
			 <a href="#" class="dropbtn">More &nbsp;<i class="fa fa-caret-down" aria-hidden="true"></i></a>
			 <div class="dropdown-content">
				<a href="Show_My_Cars.jsp">Show my cars</a>
			    <a href="Show_My_Sold_Cars.jsp">Show my sold cars</a>
			    <a href="Show_My_Booking_Details.jsp">Show Bookings</a>
			    <a href="Show_Offers.jsp">Show offer request</a>
			    <a href="My_Offer_Status.jsp">Show offer response</a>
			 </div>
			 </li>
			  <li><a href="About_us.jsp">About us</a></li>
			   		
	    	 <a href="User_Login.jsp"><i class="fa fa-sign-in" aria-hidden="true" style="font-size: 25px;  color: white;  float: right; margin: 17px 0 0 10px;"></i> </a> 
	     </ul>
	</nav>
	
</body>
</html>