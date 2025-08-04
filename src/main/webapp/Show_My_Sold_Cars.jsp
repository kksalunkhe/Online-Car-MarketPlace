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
<link rel="stylesheet" href="css/Show_My_Sold_Cars.css" type="text/css">
<style><%@include file="css/Show_My_Sold_Cars.css"%></style>
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
    
    String sql="select * from car_booking where seller_id='"+session.getAttribute("user_id")+"' ";
    
    ResultSet rs=st.executeQuery(sql);
    while(rs.next())
    {
	
	%>	
	
	<form name="View_All" action="View_All" method="post">	

	
	<div class="row">
		<div class="col-sm-6">
			<div class="main">
				<div class="col-sm-6">
					<img src="images/<%=rs.getString("photo_1")%>" class="img" name>
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
							<label class="price1"><%=rs.getString("klm")%></label><br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="second"><br>
				<b class="sold">Customer Details</b><br><br>
				
				<div class="row">
					<div class="col-sm-4">
						<label class="row1">Customer Name</label><br>
						<label class="des"><%=rs.getString("customer_name")%></label>
					</div>
					<div class="col-sm-4">
						<label class="rows">Customer ID</label><br>
						<label class="dess"><%=rs.getString("user_id")%></label>
					</div>
					<div class="col-sm-4">
						<label class="row1">Selling Date</label><br>
						<label class="des"><%=rs.getString("payment_date")%></label>
					</div>
				</div><br>
				
				<div class="row">
					<div class="col-sm-4">
						<label class="row2">Contact Number</label><br>
						<label class="des"><%=rs.getString("customer_contact")%></label>
					</div>
					<div class="col-sm-4">
						<label class="rows">Email</label><br>
						<label class="dess"><%=rs.getString("customer_email")%></label>
					</div>
					<div class="col-sm-4">
						<label class="row2">City</label><br>
						<label class="des"><%=rs.getString("city")%></label>
					</div>
				</div><br>
				
				<div class="row">
					<div class="col-sm-4">
						<label class="row3">Original Price</label><br>
						<label class="des"><%=rs.getString("price")%></label>
					</div>
					<div class="col-sm-4">
						<label class="rows">Final Deal Amount</label><br>
						<label class="dess"><%=rs.getString("price")%></label>
					</div>
					<div class="col-sm-4">
						<label class="row3">Booking Amount</label><br>
						<label class="des"><%=rs.getString("payment_amount")%></label>
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