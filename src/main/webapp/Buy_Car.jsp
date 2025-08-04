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
<link rel="stylesheet" href="css/Buy_Car.css" type="text/css">
<style><%@include file="css/Buy_Car.css"%></style>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<style><%@include file="css/View_All.css"%></style>
</head>
<body>
	<form name="Buy_Car" action="Buy_Car" method="post"><br>
	
	
		<div class="main1">
			<select  class="model" name="brand">
				<option value="brand">Brand</option>
				<option value="Maruti Suzuki">Maruti Suzuki</option>
				<option value="Hyundai">Hyundai</option>
				<option value="Tata">Tata</option>
				<option value="Mahindra">Mahindra</option>
				<option value="Toyota">Toyota</option>
				<option value="Ford">Ford</option>
				<option value="Mercedes">Mercedes</option>
				<option value="Audi">Audi</option>
				<option value="BMW">BMW</option>
				<option value="Range Rover">Range Rover</option>
				<option value="Kia">Kia</option>
				<option value="Morris Garage">Morris Garage</option>	
			</select>
			
			<select  class="model" name="reg_year">
				<option value="">Year of Registeration</option>
				<option value="2012">2012</option>
				<option value="2013">2013</option>
				<option value="2014">2014</option>
				<option value="2015">2015</option>
				<option value="2016">2016</option>
				<option value="2017">2017</option>
				<option value="2018">2018</option>
				<option value="2019">2019</option>
				<option value="2020">2020</option>
				<option value="2021">2021</option>
				<option value="2022">2022</option>
				<option value="2023">2023</option>
				<option value="2024">2024</option>
			</select>
			
			<select  class="model" name="fuel">
				<option value="">Fuel</option>
				<option value="petrol">Petrol</option>
				<option value="Diesel">Diesel</option>
				<option value="petrol cng">Petrol CNG</option>
				<option value="petrol lpg">Petrol LPG</option>
				<option value="electric">Electric</option>
			</select>
			<select   class="model" name="transmission">
				<option value="">Transmission</option>
				<option value="Manual">Manual</option>
				<option value="Automatic">Automatic</option>
			</select>
			<select   class="model" name="owner">
				<option value="">Owner</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">4+</option>
			</select>
			<select  class="model" name="location">
				<option value="">City</option>
				<option value="Karad">Karad</option>
				<option value="Satara">Satara</option>
				<option value="Sangli">Sangli</option>
				<option value="Kolhapur">Kolhapur</option>
				<option value="Pune">Pune</option>
				<option value="Mumbai">Mumbai</option>
			</select>
			
			<input type="text" class="model" placeholder="Price" name="price">
			
			<input type="submit" value="Search" class="search" name="submit">
			<input type="submit" value="View All" class="search" name="submit">
		</div><br><br>
		
		</form>
		
		<br><br>
		
		<%
	Connection cn=null;
	Statement st=null;
	Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Car_Marketplace","root","root");
    st=cn.createStatement();
    
    String sql="select * from sell_car where status ='Available'";
    ResultSet rs=st.executeQuery(sql);
    while(rs.next())
    {
	
	%>	
	<form name="View_All" action="View_All" method="post"> 

		<input type="hidden" name="sell_id"	value="<%= rs.getString("sell_id") %>"> 
		<input type="hidden" name="seller_name"	value="<%= rs.getString("seller_name") %>"> 
		<input type="hidden" name="brand"	value="<%= rs.getString("brand") %>"> 
		<input type="hidden" name="car_name"	value="<%= rs.getString("car_name") %>"> 
		<input type="hidden" name="reg_year"	value="<%= rs.getString("reg_year") %>"> 
		<input type="hidden" name="owner"	value="<%= rs.getString("owner") %>"> 
		<input type="hidden" name="seller_id"	value="<%= rs.getString("seller_id") %>"> 
		<input type="hidden" name="price"	value="<%= rs.getString("price") %>"> 
		<input type="hidden" name="insurance"	value="<%= rs.getString("insurance") %>"> 
		<input type="hidden" name="location"	value="<%= rs.getString("location") %>"> 
		<input type="hidden" name="fuel"	value="<%= rs.getString("fuel") %>"> 
		<input type="hidden" name="transmission"	value="<%= rs.getString("transmission") %>"> 
		<input type="hidden" name="kilometer"	value="<%= rs.getString("kilometer") %>"> 
		<input type="hidden" name="photo_1"	value="<%= rs.getString("photo_1") %>"> 
		<input type="hidden" name="photo_2"	value="<%= rs.getString("photo_2") %>"> 
		<input type="hidden" name="photo_3"	value="<%= rs.getString("photo_3") %>"> 
		<input type="hidden" name="photo_4"	value="<%= rs.getString("photo_4") %>"> 
		<input type="hidden" name="photo_5"	value="<%= rs.getString("photo_5") %>"> 
		<input type="hidden" name="photo_6"	value="<%= rs.getString("photo_6") %>"> 
		<input type="hidden" name="rcbook"	value="<%= rs.getString("rcbook") %>"> 
		<input type="hidden" name="seller_email"	value="<%= rs.getString("seller_email") %>"> 
		<input type="hidden" name="seller_contact"	value="<%= rs.getString("seller_contact") %>"> 
		<input type="hidden" name="seller_city"	value="<%= rs.getString("seller_city") %>"> 
	
		<div class="main">
			<div class="col-sm-5">
				<img src="images/<%=rs.getString("photo_1")%>" class="img">
			</div>
			<div class="col-sm-4">
				<label class="descrip"><%=rs.getString("brand")%> <%=rs.getString("car_name")%></label><br>
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
			
			<div class="col-sm-3">
				<div class="col-sm-10">
					<input type="submit" class="button" value="View Details" name="submit">
					<input type="submit" class="buttons" value="Make Offer" name="submit">
					<input type="submit" class="buttonss" value="Advance Booking" name="submit">
				</div>
				<div class="col-sm-2">
					<button type="submit" value="" name="submit" style="background: none; border: none;"> <i class="fa fa-heart-o" aria-hidden="true" style="font-size:25px; color:crimson;"></i> </button>
				</div>
				
				
			</div>
		</div>
		
	</form>
	<%
    	}
	%>
	
	 
</body>
</html>