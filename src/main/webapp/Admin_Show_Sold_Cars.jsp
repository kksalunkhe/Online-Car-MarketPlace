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
<link rel="stylesheet" href="css/Admin_Show_Sold_Cars.css" type="text/css">
<style><%@include file="css/Admin_Show_Sold_Cars.css"%></style>
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
</head>
<body>
	
	<table class="tableclass">
			<thead>
				<tr>
					<th>Sell ID</th>
					<th>Seller Name</th>
					<th>Customer Name</th>
					<th>Car Brand</th>
					<th>Car Name</th>
					<th>Registeration Year</th>
					<th>Fuel</th>
					<th>Kilometer</th>
					<th>Location</th>
					<th>Final Price</th>
					<th>Advance Amount</th>
					<th>Sold Date</th>
				</tr>
			</thead>
			<tbody>
			
					
		<%
		Connection cn=null;
		Statement st=null;
		Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Car_Marketplace","root","root");
        st=cn.createStatement();
        String sql="SELECT * from car_booking";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
		
		
        {
		
		%>
			<tr>
				<td><%=rs.getString("sell_id")%></td>
				<td><%=rs.getString("seller_name")%></td>
				<td><%=rs.getString("customer_name")%></td>
				<td><%=rs.getString("brand")%></td>
				<td><%=rs.getString("car_name")%></td>
				<td><%=rs.getString("reg_year")%></td>
				<td><%=rs.getString("fuel")%></td>
				<td><%=rs.getString("klm")%></td>
				<td><%=rs.getString("location")%></td>
				<td><%=rs.getString("price")%></td>
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