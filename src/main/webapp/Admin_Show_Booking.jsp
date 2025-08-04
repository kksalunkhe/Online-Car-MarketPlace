<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@include file="Admin_Header.jsp" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Admin_Show_Booking.css" type="text/css">
<style><%@include file="css/Admin_Show_Booking.css"%></style>
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
</head>
<body>

	<table class="tableclass">
		<thead>
			<tr>
				<th>Booking ID</th>
				<th>Customer ID</th>
				<th>Customer Name</th>
				<th>Sell ID</th>
				<th>Seller Name</th>
				<th>Car Brand</th>
				<th>Car Name</th>
				<th>Registeration Year</th>
				<th>Fuel</th>
				<th>Insurance</th>
				<th>Kilometer</th>
				<th>Transmission</th>
				<th>Location</th>
				<th>Owner</th>
				<th>Final Price</th>
				<th>Payment ID</th>
				<th>Payment Amount</th>
				<th>Payment Date</th>
			</tr>
		</thead>
		<tbody>

	<%
	Connection cn=null;
	Statement st=null;
	Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Car_Marketplace","root","root");
    st=cn.createStatement();
    String sql="SELECT  booking.booking_id, booking.user_id, booking.sell_id, booking.payment_id, sell_car.sell_id, sell_car.seller_id, sell_car.brand, sell_car.car_name, sell_car.reg_year, sell_car.fuel, sell_car.insurance, sell_car.kilometer, sell_car.transmission, sell_car.location, sell_car.owner, sell_car.price, user_signup.customer_id, user_signup.customer_name, user_signup.email, user_signup.contact, user_signup.dob, user_signup.city, user_signup.gender, user_signup.password, user_signup.cpassword, payment.payment_id, payment.payment_amount, payment.payment_date, payment.user_id, payment.sell_id, make_offer.offer_id, make_offer.user_id, make_offer.sell_id, make_offer.offer_price from sell_car JOIN user_signup ON sell_car.seller_id = user_signup.customer_id JOIN booking ON sell_car.seller_name = user_signup.customer_name ";

    ResultSet rs=st.executeQuery(sql);
    if(rs.next())
    {
	

	    
	
	%>	
			<tr>
				<td><%=rs.getString("booking_id")%></td>
				<td><%=rs.getString("customer_id")%></td>
				<td><%=rs.getString("customer_name")%></td>
				<td><%=rs.getString("sell_id")%></td>
				<td><%=rs.getString("seller_name")%></td>
				<td><%=rs.getString("brand")%></td>
				<td><%=rs.getString("car_name")%></td>
				<td><%=rs.getString("customer_id")%></td>
				<td><%=rs.getString("reg_year")%></td>
				<td><%=rs.getString("insurance")%></td>
				<td><%=rs.getString("kilometer")%></td>
				<td><%=rs.getString("transmission")%></td>
				<td><%=rs.getString("location")%></td>
				<td><%=rs.getString("owner")%></td>
				<td><%=rs.getString("offer_price")%> || <%=rs.getString("price")%></td>
				<td><%=rs.getString("payment_id")%></td>
				<td><%=rs.getString("payment_amount")%></td>
				<td><%=rs.getString("payment_date")%></td>
			</tr>
		
		<%
	    }
		%>
		
		</tbody>
		</table>
	
</body>
</html>