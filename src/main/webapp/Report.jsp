<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Report.css" type="text/css">
<style><%@include file="css/Report.css"%></style>
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
</head>

<body>
	<form action="view_report.jsp">
	<div class="box21"><br>
		<div class="col-sm-4">
			<lable class="text">Full Report</lable>
			<input type="submit" class="buttons" value="User List" name="submit"><br>
			<input type="submit" class="buttons" value="Sell Car List" name="submit"><br>
		    <input type="submit" class="buttons" value="Booking List" name="submit"><br>
		    <input type="submit" class="buttons" value="Payment List" name="submit"><br>
			<input type="submit" class="buttons" value="Make Offer" name="submit"><br>
		</div>
		
		<div class="col-sm-4">
			<lable class="texts">Id Wise Report</lable> <br>
	         <input type="text" class="textbox" name="id" placeholder=" Enter ID"><br>
	   		 <input type="submit" class="buttons" name="submit" value="Id wise User List" >
	   		 <input type="submit" class="buttons" name="submit" value="Id wise Sell Car list" ><br>
	    	
		</div>
		
		<div class="col-sm-4">
			<lable class="textss">Date Wise Report</lable><br>
	       
	    	
	    	<input type="text" class="textbox" name="date1" placeholder=" Enter Start Date e.g. dd/MM/yyyy"><br>
	       
	        <input type="text" class="textbox" name="date2"  placeholder=" Enter End Date e.g. dd/MM/yyyy"><br>
	       
		    <input type="submit" class="buttons" name="submit" value="Date wise Sell Car list"  >
			    
		    <input type="submit" class="buttons" name="submit" value="Date wise Booking list" >
		</div>
	
		
	</div>
	</form>
</body>
</html>