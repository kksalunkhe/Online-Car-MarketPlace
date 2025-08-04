<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="User_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Sell_Car.css" type="text/css">
<style><%@include file="css/Sell_Car.css"%></style>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<script type="text/javascript" src="css/validation.js"></script>
</head>
<body>
	<form name="Sell_Car" action="Sell_Car" method="post">
		<div class="maindiv">
			<br>
			<center><label class="main">SELL YOUR CAR</label></center> <br>
			
			<div class="row">
				<div class="col-sm-4">
					<select name="brand" class="models">
						<option value="">Brand</option>
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
				</div>
				<div class="col-sm-4">
					<input type="text" class="models" placeholder=" Name of Car" name="car_name"  onkeypress="return isString(event)" required>
				</div>
				<div class="col-sm-4">	
					<select name="reg_year" class="models">
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
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-4">
					<select name="fuel" class="model">
						<option value="">Fuel</option>
						<option value="petrol">Petrol</option>
						<option value="Diesel">Diesel</option>
						<option value="petrol cng">Petrol CNG</option>
						<option value="petrol lpg">Petrol LPG</option>
						<option value="electric">Electric</option>
					</select>
				</div>
				<div class="col-sm-4">
					<select name="insurance" class="model">
						<option value="">Insurance</option>
						<option value="Yes">YES</option>
						<option value="No">NO</option>
					</select>
				</div>
				<div class="col-sm-4">
					<input type="text" class="model" placeholder="KM Driven" name="kilometer" required onkeypress="return isNumber(event)">
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-4">
					<select name="transmission" class="model">
						<option value="">Transmission</option>
						<option value="Manual">Manual</option>
						<option value="Automatic">Automatic</option>
					</select>
				</div>
			<div class="col-sm-4">
				<select name="location" class="model">
					<option value="">Current Location</option>
					<option value="Karad">Karad</option>
					<option value="Satara">Satara</option>
					<option value="Sangli">Sangli</option>
					<option value="Kolhapur">Kolhapur</option>
					<option value="Pune">Pune</option>
					<option value="Mumbai">Mumbai</option>
				</select>
			</div>
				<div class="col-sm-4">
					<input type="text" class="model" placeholder="Price" name="price" onkeypress="return isNumber(event)" required>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-4">
					<label class="photo">Add Photos:</label><br><br>
					<div class="row">
						<div class="col-sm-6">
							<input type="file" class="file" name="photo1">
						</div>
						<div class="col-sm-6">
							<input type="file" class="file" name="photo2"></div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<input type="file" class="file" name="photo3">
							</div>
							<div class="col-sm-6">
								<input type="file" class="file" name="photo4">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<input type="file" class="file" name="photo5">
							</div>
							<div class="col-sm-6">
								<input type="file" class="file" name="photo6">
							</div>
						</div>
					</div>
					
				 <div class="col-sm-4">
					<label class="description"> Description:</label> <br><br>
					<input type="text" class="descrip" name="description" required>	
				</div>
				<div class="col-sm-4">
					<label class="owner">No. of Owners:</label><br><br>
					<input type="radio" name="owner" value="1" class="own" style="margin-left: 50px;"><span style="color:white;">1</span><br>
					<input type="radio" name="owner" value="2" class="own" style="margin-left: 50px;"><span style="color:white;">2</span><br>
					<input type="radio" name="owner" value="3" class="own" style="margin-left: 50px;"><span style="color:white;">3</span><br>
					<input type="radio" name="owner" value="4" class="own" style="margin-left: 50px;"><span style="color:white;">4</span><br>
					<input type="radio" name="owner" value="5" class="own" style="margin-left: 50px;"><span style="color:white;">4+</span><br> 
				</div>
			</div>
			
			
			<div class="row">
				<div class="col-sm-4">
					<label class="photo">Add RC:</label><br>
					<div class="row">
						<div class="col-sm-6">
							<input type="file" class="file" name="rcbook" required>
						</div>
						<div class="col-sm-6"></div>
					</div>
				</div>
				<div class="col-sm-4">
					
				</div>
				<div class="col-sm-4">
					<input type="submit" class="button" value="ADD" name="submit">
				</div>
			</div>
			
		
		
		</div>

	
	</form>
</body>
</html>