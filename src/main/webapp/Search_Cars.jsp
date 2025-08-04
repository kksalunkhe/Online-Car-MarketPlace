<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="User_header.jsp" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Search_Cars.css" type="text/css">
<style><%@include file="css/Search_Cars.css"%></style>
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
    
    String sql="select * from sell_car where status ='Available' && (brand ='"+session.getAttribute("brand")+"' || reg_year = '"+session.getAttribute("reg_year")+"' || fuel = '"+session.getAttribute("fuel")+"' || transmission = '"+session.getAttribute("transmission")+"' || owner = '"+session.getAttribute("owner")+"' || location = '"+session.getAttribute("location")+"' || price = '"+session.getAttribute("price")+"')  ";
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
					<i class="fa fa-heart-o" aria-hidden="true" style="font-size:25px; color:crimson;"> </i>
				</div>
			</div>
		</div>
		
	</form>
	<%
    	}
	%>
</body>
</html>