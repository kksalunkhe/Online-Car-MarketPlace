<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="Admin_Header.jsp" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Admin_View_Specific_Car.css" type="text/css">
<style><%@include file="css/Admin_View_Specific_Car.css"%></style>
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
    
    String sql="select * from sell_car where sell_id  = '"+session.getAttribute("sell_id")+"'";
    ResultSet rs=st.executeQuery(sql);
    if(rs.next())
    {
	
	%>	
	<form name="Admin_View_Specific_Car" action="Admin_View_Specific_Car" method="post">
		<input type="hidden" name="sell_id"	value="<%= rs.getString("sell_id") %>"> 
		<input type="hidden" name="brand" value="<%= rs.getString("brand") %>"> 
		<input type="hidden" name="car_name" value="<%= rs.getString("car_name") %>"> 
		<input type="hidden" name="reg_year" value="<%= rs.getString("reg_year") %>"> 
		<input type="hidden" name="owner" value="<%= rs.getString("owner") %>"> 
		<input type="hidden" name="owner" value="<%= rs.getString("owner") %>"> 
		<input type="hidden" name="price" value="<%= rs.getString("price") %>"> 
		<input type="hidden" name="insurance" value="<%= rs.getString("insurance") %>"> 
		<input type="hidden" name="location" value="<%= rs.getString("location") %>"> 
		<input type="hidden" name="fuel" value="<%= rs.getString("fuel") %>"> 
		<input type="hidden" name="transmission" value="<%= rs.getString("transmission") %>"> 
		<input type="hidden" name="kilometer" value="<%= rs.getString("kilometer") %>"> 
		<input type="hidden" name="photo_1"	value="<%= rs.getString("photo_1") %>"> 
		<input type="hidden" name="photo_2"	value="<%= rs.getString("photo_2") %>"> 
		<input type="hidden" name="photo_3"	value="<%= rs.getString("photo_3") %>"> 
		<input type="hidden" name="photo_4"	value="<%= rs.getString("photo_4") %>"> 
		<input type="hidden" name="photo_5"	value="<%= rs.getString("photo_5") %>"> 
		<input type="hidden" name="photo_6"	value="<%= rs.getString("photo_6") %>"> 
		<input type="hidden" name="rcbook"	value="<%= rs.getString("rcbook") %>"> 

	
	
		<div class="col-sm-5">
			<div class="first">
				<img src="images/<%=rs.getString("photo_1")%>" class="imageclass">
					<div class="row">
						<div class="col-sm-4">
							<img src="images/<%=rs.getString("photo_2")%>" class="image1">
						</div>
						<div class="col-sm-4">
							<img src="images/<%=rs.getString("photo_3")%>" class="image2">
						</div>
						<div class="col-sm-4">
							<img src="images/<%=rs.getString("photo_4")%>" class="image3">
						</div>
					</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="second">
				<i class="fa fa-inr" aria-hidden="true" style="font-size:30px; color:crimson; margin-left:25px; "></i>
				<label class="price"><%=rs.getString("price")%></label>
				<div class="details">
					<label class="car">CAR DETAILS</label>
					<table class="tableclass">
						<thead>
							<tr>
								<th>Brand</th>
								<td><%=rs.getString("brand")%></td>
							</tr>
							<tr>
								<th>Car Name</th>
								<td><%=rs.getString("car_name")%></td>
							</tr>
							<tr>
								<th>Year</th>
								<td><%=rs.getString("reg_year")%></td>
							</tr>
							<tr>
								<th>Owner</th>
								<td><%=rs.getString("owner")%></td>
							</tr>
							<tr>
								<th>Insurance</th>
								<td><%=rs.getString("insurance")%></td>
							</tr>
							<tr>
								<th>Location</th>
								<td><%=rs.getString("location")%></td>
							</tr>
							<tr>
								<th>Fuel</th>
								<td><%=rs.getString("fuel")%></td>
							</tr>
							<tr>
								<th>Transmission</th>
								<td><%=rs.getString("transmission")%></td>
							</tr>
							<tr>
								<th>Running</th>
								<td><%=rs.getString("kilometer")%></td>
							</tr>
							<tr>
								<th>Description</th>
								<td><%=rs.getString("description")%></td>
							</tr>
							
						</thead>
					</table>
					
				</div>
				<center><label class="msg">Send Message to Seller </label></center>
					<select class="message" name="admin_msg">
						<option value="Send Message to Seller" name="admin_msg"></option>
						<option value="Wrong Brand Name" name="admin_msg">Wrong Brand Name</option>
						<option value="Wrong Car Name" name="admin_msg">Wrong Car Name</option>
						<option value="Wrong Details" name="admin_msg">Wrong Details</option>
						<option value="Wrong Details" name="admin_msg">Wrong Photos</option>
					</select>
					<input type="submit" class="button" value="Send" name="submit"> 
			</div>
		</div>
	</form>
	<%
    }
	%>

</body>
</html>