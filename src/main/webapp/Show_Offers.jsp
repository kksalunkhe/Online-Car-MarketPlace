<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="User_header.jsp" %>    
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Show_Offers.css" type="text/css">
<style><%@include file="css/Show_Offers.css"%></style>
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
</head>
<body>


	<%
	Connection cn=null;
	Statement st=null;
	Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Car_Marketplace","root","root");
    st=cn.createStatement();
    
    String sql="SELECT sell_car.seller_id, sell_car.seller_name, sell_car.brand, sell_car.car_name, sell_car.reg_year, sell_car.fuel, sell_car.insurance, sell_car.kilometer, sell_car.transmission, sell_car.location, sell_car.owner, sell_car.photo_1, sell_car.rcbook, sell_car.description, sell_car.price, sell_car.admin_msg, sell_car.sell_date, sell_car.seller_email, sell_car.seller_contact, sell_car.seller_city,make_offer.user_id,make_offer.offer_price,make_offer.offer_id,make_offer.customer_name from sell_car join make_offer on make_offer.sell_id = sell_car.sell_id where sell_car.seller_id='"+session.getAttribute("user_id")+"' ";
    ResultSet rs=st.executeQuery(sql);
    
    while(rs.next())
    {
	
	%>	
	
	<form name="Show_Offers" action="Show_Offers" method="post">
		<input type="hidden" name="offer_id" value="<%=rs.getString("offer_id")%> ">

	
	<div class="row">
		<div class="col-sm-6"><br>
			<div class="main">
				<div class="col-sm-6">
					<img src="images/<%=rs.getString("photo_1")%>" class="img">
				</div>
				<div class="col-sm-6"><br>
					<label class="descrip"><%=rs.getString("brand")%>  &nbsp; <%=rs.getString("car_name")%></label><br>
					<i class="fa fa-inr" aria-hidden="true" style="color:crimson; font-size:20px;"></i>
					<label class="price"><%=rs.getString("price")%></label><br><br>
					<div class="row">
						<div class="col-sm-6">
							<label class="title">Model Year</label><br>
							<label class="price1"><%=rs.getString("reg_year")%></label><br>
						</div>
						<div class="col-sm-6">
							<label class="title">Fuel Type</label><br>
							<label class="price1"><%=rs.getString("fuel")%></label><br>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<label class="title">Location</label><br>
							<i class="fa fa-map-marker" aria-hidden="true" style="color:crimson; font-size:20px;"></i>
							<label class="price1"><%=rs.getString("location")%></label>
						</div>
						<div class="col-sm-6">
							<label class="title">Kilometer</label><br>
							<label class="price1"><%=rs.getString("kilometer")%></label><br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="second"><br>
				<b class="sold">Offer Request</b><br><br>
				
				<div class="row">
					<div class="col-sm-4">
						<label class="row1">Customer Name</label><br>
						<label class="des"><%=rs.getString("customer_name")%></label>
					</div>
					<div class="col-sm-4">
						<label class="rows">Original Price</label><br>
						<label class="dess"><%=rs.getString("price")%></label>
					</div>
					<div class="col-sm-4">
						<label class="rowss">Offer Price</label><br>
						<label class="desss"><%=rs.getString("offer_price")%></label>
					</div>
				</div><br>
				
				<div class="row">
					<div class="col-sm-4">
						<label class="row2">Customer ID</label><br>
						<label class="des"><%=rs.getString("user_id")%></label>
					</div>
					<div class="col-sm-4">
						 <input type="submit" class="buttonclass" value="Accept" name="submit">
					</div>
					<div class="col-sm-4">
						
						<input type="submit" class="buttonclass" value="Reject" name="submit">
					</div> 
				</div><br>
				
				<div class="row">
					<div class="col-sm-4">
						
					</div>
					<div class="col-sm-4">
						
					</div>
					<div class="col-sm-4">
						
					</div>
				</div>
				
			</div>
		</div>
	</div>
	</form>
	<%
    	}
	%>

</body>
</html>