
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>

<%@include file="User_header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Show_My_Cars.css" type="text/css">
<style><%@include file="css/Show_My_Cars.css"%></style>
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
    
    String sql="select * from sell_car where seller_id='"+session.getAttribute("user_id")+"'";
    ResultSet rs=st.executeQuery(sql);
    while(rs.next())
    {
	
	%>	
	<form name="Show_My_Cars" action="Show_My_Cars" method="post">
		<input type="hidden" name="sell_id"	value="<%= rs.getString("sell_id") %>"> 
		<input type="hidden" name="brand"	value="<%= rs.getString("brand") %>"> 
		<input type="hidden" name="car_name"	value="<%= rs.getString("car_name") %>"> 
		<input type="hidden" name="reg_year"	value="<%= rs.getString("reg_year") %>"> 
		<input type="hidden" name="owner"	value="<%= rs.getString("owner") %>"> 
		<input type="hidden" name="insurance"	value="<%= rs.getString("insurance") %>"> 
		<input type="hidden" name="location"	value="<%= rs.getString("location") %>"> 
		<input type="hidden" name="fuel"	value="<%= rs.getString("fuel") %>"> 
		<input type="hidden" name="transmission"	value="<%= rs.getString("transmission") %>"> 
		<input type="hidden" name="kilometer"	value="<%= rs.getString("kilometer") %>"> 
		<input type="hidden" name="photo_1"	value="<%= rs.getString("photo_1") %>">
		<input type="hidden" name="photo_1"	value="<%= rs.getString("photo_2") %>">
		<input type="hidden" name="photo_1"	value="<%= rs.getString("photo_3") %>">
		<input type="hidden" name="photo_1"	value="<%= rs.getString("photo_4") %>">
		<input type="hidden" name="photo_1"	value="<%= rs.getString("photo_5") %>">
		<input type="hidden" name="photo_1"	value="<%= rs.getString("photo_6") %>">
		<input type="hidden" name="rcbook"	value="<%= rs.getString("rcbook") %>">
		
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
				
				<input type="submit" class="buttonss" value="View Details" name="submit"><br>
				<input type="submit" class="buttons" value="Update" name="submit"><br>
				<input type="submit" class="button" value="Delete" name="submit">
				
			</div>
			<div class="col-sm-2">
				<button type="submit" value="" name="submit" style="background:none; border:none;"><i class="fa fa-bell" aria-hidden="true" style="font-size:20px; color:gray;"></i></button>

			</div>
			
			
		</div>
		
	</div>
	
	</form>
	<%
    	}
	%>	
			
		

</body>
</html>