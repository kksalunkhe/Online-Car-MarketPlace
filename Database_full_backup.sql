-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: online_car_marketplace
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sell_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_booking`
--

DROP TABLE IF EXISTS `car_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_booking` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) DEFAULT NULL,
  `photo_1` varchar(200) DEFAULT NULL,
  `brand` varchar(200) DEFAULT NULL,
  `car_name` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `reg_year` varchar(200) DEFAULT NULL,
  `fuel` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `klm` varchar(200) DEFAULT NULL,
  `sell_id` varchar(200) DEFAULT NULL,
  `seller_id` varchar(200) DEFAULT NULL,
  `seller_name` varchar(200) DEFAULT NULL,
  `payment_date` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `payment_amount` varchar(200) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `customer_contact` varchar(200) DEFAULT NULL,
  `customer_email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_booking`
--

LOCK TABLES `car_booking` WRITE;
/*!40000 ALTER TABLE `car_booking` DISABLE KEYS */;
INSERT INTO `car_booking` VALUES (1,'6','fronx-exterior-left-front-three-quarter-2.jpeg','Maruti Suzuki','Fronx','800000','2022','electric','Pune','65000','8','1','Sujit Vikas Bharate','08/03/2024','9156093193','sujitbharate2003@gmail.com','Satara','5000','Rahul Maruti Lad','7755992342','rahullad@gmail.com'),(2,'1','exter-exterior-left-front-three-quarter-3.jpeg','Hyundai','Exter','700000','2020','Diesel','Sangli','65000','4','3','Darshan Bajarang Maske','08/03/2024','9021009720','mdarshan479@gmail.com','Sangli','5000','Sujit Vikas Bharate','9156093193','sujitbharate2003@gmail.com'),(3,'5','2022-ertiga-left-front-three-quarter.jpeg','Maruti Suzuki','Ertiga','1100000','2019','petrol cng','Pune','1020000','5','4','Harshan Mohan More','08/03/2024','7020029011','harshmore9011@gmail.com','Sangli','5000','Tejas Rajendra Salunkhe','9284780510','tejassalunkhe0510@gmail.com'),(4,'7','scorpio-n-exterior-left-front-three-quarter.jpeg','Mahindra','Scorpio N','2015000','2023','Diesel','Sangli','50000','2','5','Tejas Rajendra Salunkhe','08/03/2024','9284780510','tejassalunkhe0510@gmail.com','Sangli','5000','Rohit Tanaji Gholap','9373664098','rohitgholap1404@gmail.com'),(5,'6','verna-facelift-exterior-left-front-three-quarter.jpeg','Hyundai','Verna','1400000','2022','petrol','Satara','150000','6','7','Rohit Tanaji Gholap','08/03/2024','9373664098','rohitgholap1404@gmail.com','Satara','5000','Rahul Maruti Lad','7755992342','rahullad@gmail.com'),(6,'1','sonet-exterior-left-front-three-quarter.jpeg','Kia','Sonet','1500000','2021','Diesel','Mumbai','70000','7','8','Kajal Ashok Pawar','08/03/2024','7821006327','kajalpawar2001@gmail.com','Sangli','5000','Sujit Vikas Bharate','9156093193','sujitbharate2003@gmail.com'),(7,'12','creta-exterior-front-view.jpeg','Hyundai','Creta','1650000','2023','petrol','Sangli','43000','9','9','Sanika Balaso Karande','08/03/2024','7821006327','sanikakarande53@gmail.com','Sangli','5000','Balkrishna Mohan Topinkatti ','7666473416','krishnatkd02@gmail.com'),(8,'9','hector-exterior-left-front-three-quarter.jpeg','Morris Garage','Hector','2400000','2024','petrol','Karad','50000','1','1','Sujit Vikas Bharate','08/03/2024','9156093193','sujitbharate2003@gmail.com','Satara','5000','Sanika Balaso Karande','7821006327','sanikakarande53@gmail.com'),(9,'1','thar-right-front-three-quarter-5.jpeg','Mahindra','Thar','1225000','2022','Diesel','Sangli','67000','10','11','Prashant Haibati Salunkhe','08/03/2024','9552681804','prashantsalunkhe80207@gmail.com','Sangli','5000','Sujit Vikas Bharate','9156093193','sujitbharate2003@gmail.com'),(10,'5','urban-cruiser-hyryder-exterior-left-front-three-quarter-2.jpeg','Toyota','Hyryder','1200000','2022','petrol','Kolhapur','21500','3','6','Rahul Maruti Lad','08/03/2024','7755992342','rahullad@gmail.com','Kolhapur','5000','Tejas Rajendra Salunkhe','9284780510','tejassalunkhe0510@gmail.com'),(11,'8','grand-vitara-exterior-left-front-three-quarter-3.jpeg','Maruti Suzuki','Grand Vitara','1425000','2021','petrol cng','Mumbai','87000','11','6','Rahul Maruti Lad','09/03/2024','7755992342','rahullad@gmail.com','Kolhapur','5000','Kajal Ashok Pawar','7821006327','kajalpawar2001@gmail.com');
/*!40000 ALTER TABLE `car_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `sell_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,2,1),(2,1,5);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make_offer`
--

DROP TABLE IF EXISTS `make_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `make_offer` (
  `offer_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sell_id` int(11) DEFAULT NULL,
  `offer_price` varchar(45) DEFAULT NULL,
  `offer_status` varchar(45) DEFAULT NULL,
  `seller_id` varchar(45) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make_offer`
--

LOCK TABLES `make_offer` WRITE;
/*!40000 ALTER TABLE `make_offer` DISABLE KEYS */;
INSERT INTO `make_offer` VALUES (1,5,1,'2350000','Accepted','1','Tejas Rajendra Salunkhe'),(2,6,8,'720000','Rejected','1','Rahul Maruti Lad'),(3,8,1,'2350000','Accepted','1','Kajal Ashok Pawar'),(4,8,10,'1100000','Rejected','11','Kajal Ashok Pawar'),(5,11,9,'1575000','Not Checked','9','Prashant Haibati Salunkhe'),(6,1,10,'1200000','Accepted','11','Sujit Vikas Bharate'),(7,12,3,'1150000','Not Checked','6','Balkrishna Mohan Topinkatti '),(8,4,9,'1550000','Not Checked','9','Harshan Mohan More'),(9,3,1,'2175000','Rejected','1','Darshan Bajarang Maske'),(10,7,10,'1210000','Accepted','11','Rohit Tanaji Gholap');
/*!40000 ALTER TABLE `make_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_amount` varchar(45) DEFAULT NULL,
  `payment_date` varchar(45) DEFAULT NULL,
  `card_number` varchar(45) DEFAULT NULL,
  `card_expiry` varchar(45) DEFAULT NULL,
  `cvc` varchar(45) DEFAULT NULL,
  `card_name` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `sell_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'5000','08/03/2024','8897156234592216','1024','567','Rahul Maruti Lad','rahul@gmail.com','6','8'),(2,'5000','08/03/2024','7662189960256554','0225','155','Sujit Vikas Bharate','sujitbharate2003@gmail.com','1','4'),(3,'5000','08/03/2024','9850105795065484','0523','487','Tejas Rajendra Salunkhe','tejas@gmail.com','5','5'),(4,'5000','08/03/2024','9888764584948947','2626','101','Rohit tanaji gholap','rohitgholap14@gmail.com','7','2'),(5,'5000','08/03/2024','5654794694289013','1523','232','Rahul Maruti Lad','rahul@gmail.com','6','6'),(6,'5000','08/03/2024','9156098783154164','0123','560','Sujit Vikas Bharate','sujitbharate2003@gmail.com','1','7'),(7,'5000','08/03/2024','7845416513183203','2222','548','Balkrishna Mohan Topinkatti','krishnatkd@gmail.com','12','9'),(8,'5000','08/03/2024','9898794194657899','0524','111','Sanika Balaso Karande','sanikakarande53@gmail.com','9','1'),(9,'5000','08/03/2024','9156487891654894','0902','9156','Sujit Vikas Bharate','sujitbharate2003@gmail.com','1','10'),(10,'5000','08/03/2024','9898501501548949','0723','4456','Tejas Rajendra Salunkhe','tejas@gmail.com','5','3'),(11,'5000','09/03/2024','1234123412341234','1212','123','Kajal Ashok Pawar','kajal@gmail.com','8','11');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sell_car`
--

DROP TABLE IF EXISTS `sell_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sell_car` (
  `sell_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) DEFAULT NULL,
  `seller_name` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `car_name` varchar(45) DEFAULT NULL,
  `reg_year` varchar(15) DEFAULT NULL,
  `fuel` varchar(45) DEFAULT NULL,
  `insurance` varchar(20) DEFAULT NULL,
  `kilometer` varchar(45) DEFAULT NULL,
  `transmission` varchar(20) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `owner` varchar(15) DEFAULT NULL,
  `photo_1` varchar(500) DEFAULT NULL,
  `photo_2` varchar(500) DEFAULT NULL,
  `photo_3` varchar(500) DEFAULT NULL,
  `photo_4` varchar(500) DEFAULT NULL,
  `photo_5` varchar(500) DEFAULT NULL,
  `photo_6` varchar(500) DEFAULT NULL,
  `rcbook` varchar(500) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `admin_msg` varchar(45) DEFAULT NULL,
  `sell_date` varchar(45) DEFAULT NULL,
  `seller_email` varchar(200) DEFAULT NULL,
  `seller_contact` varchar(200) DEFAULT NULL,
  `seller_city` varchar(200) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sell_car`
--

LOCK TABLES `sell_car` WRITE;
/*!40000 ALTER TABLE `sell_car` DISABLE KEYS */;
INSERT INTO `sell_car` VALUES (1,1,'Sujit Vikas Bharate','Morris Garage','Hector','2024','petrol','yes','50000','Automatic','Karad','1','hector-exterior-left-front-three-quarter.jpeg','hector-exterior-front-view.jpeg','hector-exterior-left-rear-three-quarter.jpeg','hector-exterior-left-side-view.jpeg','hector-exterior-rear-view.jpeg','hector-interior-dashboard.jpeg','hector-exterior-right-front-three-quarter-75.jpeg','Seat:4+1, Fuel tank:45lit, Engine size:4562cc, Mileage:22km/lit, Ground clearance:210mm','2400000',NULL,'07/03/2024','sujitbharate2003@gmail.com','9156093193','Satara','Not Available'),(2,5,'Tejas Rajendra Salunkhe','Mahindra','Scorpio N','2023','Diesel','Yes','50000','Manual','Sangli','2','scorpio-n-exterior-left-front-three-quarter.jpeg','scorpio-n-exterior-front-view.jpeg','scorpio-n-exterior-left-rear-three-quarter.jpeg','scorpio-n-exterior-left-side-view-2.jpeg','scorpio-n-exterior-rear-view.jpeg','scorpio-n-interior-dashboard.jpeg','scorpio-n-right-front-three-quarter-5.jpeg','Seat:6+1, fuel:57lit, Mileage:12km/lit, Engine size:2184cc, Ground clearance:187mm','2015000',NULL,'07/03/2024','tejassalunkhe0510@gmail.com','9284780510','Sangli','Not Available'),(3,6,'Rahul Maruti Lad','Toyota','Hyryder','2022','petrol','No','21500','Automatic','Kolhapur','2','urban-cruiser-hyryder-exterior-left-front-three-quarter-2.jpeg','urban-cruiser-hyryder-exterior-front-view-2.jpeg','urban-cruiser-hyryder-exterior-left-rear-three-quarter-2.jpeg','urban-cruiser-hyryder-exterior-left-side-view-2.jpeg','urban-cruiser-hyryder-exterior-rear-view-2.jpeg','urban-cruiser-hyryder-interior-dashboard-2.jpeg','urban-cruiser-hyryder-right-front-three-quarter.jpeg','Seat:4+1, Fuel tank:45lit, Engine size:1497cc, Mileage:18km/lit, Ground clearance:155mm','1200000',NULL,'07/03/2024','rahullad@gmail.com','7755992342','Kolhapur','Not Available'),(4,3,'Darshan Bajarang Maske','Hyundai','Exter','2020','Diesel','Yes','65000','Manual','Sangli','3','exter-exterior-left-front-three-quarter-3.jpeg','exter-exterior-front-view-4.jpeg','exter-exterior-left-rear-three-quarter.jpeg','exter-exterior-left-side-view.jpeg','exter-exterior-rear-view-4.jpeg','exter-exterior-right-front-three-quarter-29.jpeg','exter-interior-dashboard-2.jpeg','Seat:4+1, Fuel tank:37lit, Engine size:1197cc, Mileage:24km/lit, Ground clearance:185mm','700000',NULL,'07/03/2024','mdarshan479@gmail.com','9021009720','Sangli','Not Available'),(5,4,'Harshan Mohan More','Maruti Suzuki','Ertiga','2019','petrol cng','No','1020000','Manual','Pune','4','2022-ertiga-left-front-three-quarter.jpeg','ertiga-exterior-front-view.jpeg','ertiga-exterior-left-rear-three-quarter.jpeg','ertiga-exterior-left-side-view.jpeg','ertiga-exterior-rear-view.jpeg','ertiga-interior-dashboard.jpeg','ertiga-right-front-three-quarter-3.jpeg','First owner best maintained used car. Location Pune. For more information call on 7020029011','1100000',NULL,'07/03/2024','harshmore9011@gmail.com','7020029011','Sangli','Not Available'),(6,7,'Rohit Tanaji Gholap','Hyundai','Verna','2022','petrol','Yes','150000','Automatic','Satara','1','verna-facelift-exterior-left-front-three-quarter.jpeg','verna-facelift-exterior-front-view.jpeg','verna-facelift-exterior-left-rear-three-quarter.jpeg','verna-facelift-exterior-left-side-view-2.jpeg','verna-facelift-interior-dashboard.jpeg','verna-facelift-exterior-rear-view.jpeg','verna-facelift-interior-infotainment-system.jpeg','Seat:4+1, Fuel tank:45lit, Engine size:1197cc, Mileage:18km/lit, Ground clearance:155mm','1400000',NULL,'07/03/2024','rohitgholap1404@gmail.com','9373664098','Satara','Not Available'),(7,8,'Kajal Ashok Pawar','Kia','Sonet','2021','Diesel','Yes','70000','Manual','Mumbai','2','sonet-exterior-left-front-three-quarter.jpeg','sonet-exterior-front-view.jpeg','sonet-exterior-left-rear-three-quarter.jpeg','sonet-exterior-left-side-view.jpeg','sonet-exterior-rear-view.jpeg','sonet-interior-dashboard.jpeg','sonet-facelift-exterior-right-front-three-quarter-8.jpeg','Seat:4+1, Fuel tank:45lit, Engine size:1497cc, Mileage:18km/lit, Ground clearance:155mm','1500000',NULL,'07/03/2024','kajalpawar2001@gmail.com','7821006327','Sangli','Not Available'),(8,1,'Sujit Vikas Bharate','Maruti Suzuki','Fronx','2022','electric','Yes','65000','Manual','Pune','1','fronx-exterior-left-front-three-quarter-2.jpeg','fronx-exterior-front-view-2.jpeg','fronx-exterior-left-rear-three-quarter-2.jpeg','fronx-exterior-left-side-view-2.jpeg','fronx-exterior-rear-view-2.jpeg','fronx-interior-dashboard-2.jpeg','fronx-interior-dashboard-switches.jpeg','Seat:4+1, Fuel tank:37lit, Engine size:1197cc, Mileage:24km/lit, Ground clearance:185mm','800000',NULL,'07/03/2024','sujitbharate2003@gmail.com','9156093193','Satara','Not Available'),(9,9,'Sanika Balaso Karande','Hyundai','Creta','2023','petrol','Yes','43000','Manual','Sangli','1','creta-exterior-front-view.jpeg','creta-exterior-left-front-three-quarter.jpeg','creta-exterior-left-rear-three-quarter.jpeg','creta-exterior-left-side-view.jpeg','creta-exterior-rear-view.jpeg','creta-exterior-right-front-three-quarter-4.png','creta-interior-dashboard.jpeg','Seat:4+1, Fuel tank:37lit, Engine size:1197cc, Mileage:24km/lit, Ground clearance:185mm','1650000',NULL,'08/03/2024','sanikakarande53@gmail.com','7821006327','Sangli','Not Available'),(10,11,'Prashant Haibati Salunkhe','Mahindra','Thar','2022','Diesel','No','67000','Automatic','Sangli','2','thar-right-front-three-quarter-5.jpeg','thar-exterior-front-view.jpeg','thar-exterior-left-rear-three-quarter.jpeg','thar-exterior-rear-view.jpeg','thar-interior-ac-controls.jpeg','thar-interior-infotainment-system.jpeg','thar-interior-instrument-cluster.jpeg','First owner best maintained used car. Location Sangli. New Tiers.','1225000',NULL,'08/03/2024','prashantsalunkhe80207@gmail.com','9552681804','Sangli','Not Available'),(11,6,'Rahul Maruti Lad','Maruti Suzuki','Grand Vitara','2021','petrol cng','No','87000','Manual','Mumbai','2','grand-vitara-exterior-left-front-three-quarter-3.jpeg','grand-vitara-exterior-front-view.jpeg','grand-vitara-exterior-left-front-three-quarter-39.jpeg','grand-vitara-exterior-left-side-view.jpeg','grand-vitara-exterior-rear-view.jpeg','grand-vitara-interior-dashboard-2.jpeg','grand-vitara-exterior-right-front-three-quarter-4.jpeg','Best Condition. ','1425000',NULL,'08/03/2024','rahullad@gmail.com','7755992342','Kolhapur','Not Available');
/*!40000 ALTER TABLE `sell_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_signup`
--

DROP TABLE IF EXISTS `user_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_signup` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `cpassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_signup`
--

LOCK TABLES `user_signup` WRITE;
/*!40000 ALTER TABLE `user_signup` DISABLE KEYS */;
INSERT INTO `user_signup` VALUES (1,'Sujit Vikas Bharate','sujitbharate2003@gmail.com',9156093193,'2003-02-09','Satara','Male','93193','93193'),(2,'Sujit Vikas Bharate','sujitbharate2003@gmail.com',9156093193,'2003-02-09','Satara','Male','93193','93193'),(3,'Darshan Bajarang Maske','mdarshan479@gmail.com',9021009720,'2002-04-12','Sangli','Male','darshan','darshan'),(4,'Harshan Mohan More','harshmore9011@gmail.com',7020029011,'2003-04-07','Sangli','Male','harsh','harsh'),(5,'Tejas Rajendra Salunkhe','tejassalunkhe0510@gmail.com',9284780510,'2003-07-05','Sangli','Male','tejas','tejas'),(6,'Rahul Maruti Lad','rahullad@gmail.com',7755992342,'2002-02-15','Kolhapur','Male','rahul','rahul'),(7,'Rohit Tanaji Gholap','rohitgholap1404@gmail.com',9373664098,'2004-01-14','Satara','Male','rohit','rohit'),(8,'Kajal Ashok Pawar','kajalpawar2001@gmail.com',7821006327,'2001-04-14','Sangli','female','kajal','kajal'),(9,'Sanika Balaso Karande','sanikakarande53@gmail.com',7821006327,'2003-02-15','Sangli','female','sanika','sanika'),(10,'Sanika Balaso Karande','sanikakarande53@gmail.com',7821006327,'2003-02-15','Sangli','female','sanika','sanika'),(11,'Prashant Haibati Salunkhe','prashantsalunkhe80207@gmail.com',9552681804,'2004-05-01','Sangli','Male','prashant','prashant'),(12,'Balkrishna Mohan Topinkatti ','krishnatkd02@gmail.com',7666473416,'2003-09-17','Solapur','Male','balkrishna','balkrishna');
/*!40000 ALTER TABLE `user_signup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-09 14:16:04
