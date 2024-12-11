-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inventory
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `item_number` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `price` double(50,2) NOT NULL,
  `total_amount` double(50,2) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currentstock`
--

DROP TABLE IF EXISTS `currentstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currentstock` (
  `productcode` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`productcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currentstock`
--

LOCK TABLES `currentstock` WRITE;
/*!40000 ALTER TABLE `currentstock` DISABLE KEYS */;
INSERT INTO `currentstock` (`productcode`, `quantity`) VALUES ('PRO101',100),('PRO102',5),('PRO103',5),('PRO104',5),('PRO105',10),('PRO106',8),('PRO107',5),('PRO108',85),('PRO109',5),('PRO110',0),('PRO111',3),('PRO112',5);
/*!40000 ALTER TABLE `currentstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `customercode` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `customercode_UNIQUE` (`customercode`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`cid`, `customercode`, `fullname`, `location`, `phone`) VALUES (2,'CUS101','Januarius','Accra','0249779023'),(3,'CUS102','Januarius1','Accra','0249779023'),(4,'CUS103','Januarius12','Accra','0249779023'),(5,'CUS104','Jay','Ho','0506814799'),(6,'CUS105','John Doe','Toronto','1234567890'),(7,'CUS106','Jane Smith','Vancouver','0987654321'),(8,'CUS107','Michael Johnson','Montreal','1231231234'),(9,'CUS108','Emily Davis','Calgary','3213214321'),(10,'CUS109','Chris Brown','Ottawa','4564567890'),(11,'CUS110','Anna Taylor','Quebec City','7897891234'),(12,'CUS111','James Wilson','Winnipeg','6546541230'),(13,'CUS112','Nathaniel','Etobicoke','0249978524');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_sales_performance`
--

DROP TABLE IF EXISTS `product_sales_performance`;
/*!50001 DROP VIEW IF EXISTS `product_sales_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_sales_performance` AS SELECT 
 1 AS `productcode`,
 1 AS `productname`,
 1 AS `total_quantity_sold`,
 1 AS `total_revenue`,
 1 AS `remaining_stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `productcode` varchar(45) NOT NULL,
  `productname` varchar(45) NOT NULL,
  `costprice` double NOT NULL,
  `sellprice` double NOT NULL,
  `brand` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `productcode_UNIQUE` (`productcode`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`pid`, `productcode`, `productname`, `costprice`, `sellprice`, `brand`) VALUES (148,'PRO101','Iphone 16 Pro Max',5000,7000,'Iphone'),(149,'PRO102','Laptop',500,750,'Dell'),(150,'PRO103','Smartphone',300,450,'Samsung'),(151,'PRO104','Tablet',250,400,'Apple'),(152,'PRO105','Smartwatch',100,150,'Garmin'),(153,'PRO106','Headphones',50,100,'Sony'),(154,'PRO107','Wireless Mouse',10,20,'Logitech'),(155,'PRO108','Keyboard',20,40,'Microsoft'),(156,'PRO109','Portable Speaker',30,60,'Bose'),(157,'PRO110','External Hard Drive',80,120,'Seagate'),(158,'PRO111','Smart TV',350,500,'LG'),(159,'PRO112','Ipone 14 Pro Max',1000,1500,'iphone');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseinfo`
--

DROP TABLE IF EXISTS `purchaseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseinfo` (
  `purchaseID` int NOT NULL AUTO_INCREMENT,
  `suppliercode` varchar(45) NOT NULL,
  `productcode` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `totalcost` double NOT NULL,
  PRIMARY KEY (`purchaseID`)
) ENGINE=InnoDB AUTO_INCREMENT=1041 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseinfo`
--

LOCK TABLES `purchaseinfo` WRITE;
/*!40000 ALTER TABLE `purchaseinfo` DISABLE KEYS */;
INSERT INTO `purchaseinfo` (`purchaseID`, `suppliercode`, `productcode`, `date`, `quantity`, `totalcost`) VALUES (1015,'SUP102','pro107','Tue Dec 10 00:00:00 EST 2024',100,50000),(1016,'SUP101','pro101','Tue Dec 10 00:00:00 EST 2024',15,75000),(1017,'SUP102','pro101','Tue Dec 10 00:00:00 EST 2024',150,750000),(1018,'SUP101','pro101','Mon Dec 09 12:41:43 EST 2024',50,250000),(1019,'SUP102','PRO102','2024-12-10',10,7500),(1020,'SUP103','PRO103','2024-12-10',15,6750),(1021,'SUP104','PRO104','2024-12-11',20,5000),(1022,'SUP105','PRO105','2024-12-12',25,3750),(1023,'SUP106','PRO106','2024-12-13',50,5000),(1024,'SUP107','PRO107','2024-12-14',30,600),(1025,'SUP108','PRO108','2024-12-15',40,1600),(1026,'SUP109','PRO109','2024-12-16',20,1200),(1027,'SUP110','PRO110','2024-12-17',10,1200),(1028,'SUP111','PRO111','2024-12-18',5,2500),(1029,'SUP102','PRO102','2024-12-10',10,7500),(1030,'SUP103','PRO103','2024-12-10',15,6750),(1031,'SUP104','PRO104','2024-12-11',20,5000),(1032,'SUP105','PRO105','2024-12-12',25,3750),(1033,'SUP106','PRO106','2024-12-09',50,5000),(1034,'SUP107','PRO107','2024-12-08',30,600),(1035,'SUP108','PRO108','2024-12-08',40,1600),(1036,'SUP109','PRO109','2024-12-07',20,1200),(1037,'SUP110','PRO110','2024-12-06',10,1200),(1038,'SUP111','PRO111','2024-12-09',5,2500),(1039,'SUP101','pro112','Tue Dec 10 18:15:25 EST 2024',50,50000),(1040,'SUP107','PRO108','Tue Dec 10 00:00:00 EST 2024',45,900);
/*!40000 ALTER TABLE `purchaseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `revenue_by_customer`
--

DROP TABLE IF EXISTS `revenue_by_customer`;
/*!50001 DROP VIEW IF EXISTS `revenue_by_customer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `revenue_by_customer` AS SELECT 
 1 AS `customercode`,
 1 AS `total_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `salesinfo`
--

DROP TABLE IF EXISTS `salesinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesinfo` (
  `salesid` int NOT NULL AUTO_INCREMENT,
  `date` varchar(45) NOT NULL,
  `productcode` varchar(45) NOT NULL,
  `customercode` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `revenue` double NOT NULL,
  `soldby` varchar(45) NOT NULL,
  PRIMARY KEY (`salesid`)
) ENGINE=InnoDB AUTO_INCREMENT=2050 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesinfo`
--

LOCK TABLES `salesinfo` WRITE;
/*!40000 ALTER TABLE `salesinfo` DISABLE KEYS */;
INSERT INTO `salesinfo` (`salesid`, `date`, `productcode`, `customercode`, `quantity`, `revenue`, `soldby`) VALUES (2028,'Tue Dec 10 12:31:05 EST 2024','pro101','cus101',1,7000,'Januarius'),(2034,'Tue Dec 10 12:38:16 EST 2024','pro101','cus104',20,140000,'Januarius'),(2035,'Tue Dec 10 12:38:16 EST 2024','pro101','cus104',10,70000,'Januarius'),(2036,'Tue Dec 10 12:38:16 EST 2024','pro101','cus104',70,490000,'Januarius'),(2037,'2024-12-10','PRO102','SUP102',5,3750,'Januarius'),(2038,'2024-12-09','PRO103','SUP103',10,4500,'Januarius'),(2039,'2024-12-08','PRO104','SUP104',15,6000,'Januarius'),(2040,'2024-12-07','PRO105','SUP105',20,3000,'Januarius'),(2041,'2024-12-06','PRO106','SUP106',30,3000,'Januarius'),(2042,'2024-12-05','PRO107','SUP107',25,500,'Januarius'),(2043,'2024-12-04','PRO108','SUP108',40,1600,'Januarius'),(2044,'2024-12-03','PRO109','SUP109',15,900,'Januarius'),(2045,'2024-12-02','PRO110','SUP110',10,1200,'Januarius'),(2046,'2024-12-01','PRO111','SUP111',5,2500,'Januarius'),(2047,'Tue Dec 10 00:00:00 EST 2024','PRO111','CUS105',2,1000,'Januarius'),(2048,'Tue Dec 10 18:18:07 EST 2024','pro112','cus112',50,75000,'Januarius'),(2049,'Tue Dec 10 21:17:16 EST 2024','PRO106','CUS106',12,1200,'Januarius');
/*!40000 ALTER TABLE `salesinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `stock_overview`
--

DROP TABLE IF EXISTS `stock_overview`;
/*!50001 DROP VIEW IF EXISTS `stock_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stock_overview` AS SELECT 
 1 AS `productcode`,
 1 AS `productname`,
 1 AS `total_purchased`,
 1 AS `total_sold`,
 1 AS `current_stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `suppliercode` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `suppliercode_UNIQUE` (`suppliercode`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` (`sid`, `suppliercode`, `fullname`, `location`, `mobile`) VALUES (410,'SUP101','Jay','Toronto','0249779023'),(411,'SUP102','Adom K Ventures','Brampton','055448863'),(422,'SUP103','XYZ Ltd','Vancouver','0987654321'),(423,'SUP104','LMN Industries','Montreal','1231231234'),(424,'SUP105','OPQ Enterprises','Calgary','3213214321'),(425,'SUP106','RST Supplies','Ottawa','4564567890'),(426,'SUP107','UVW Corporation','Quebec City','7897891234'),(427,'SUP108','EFG Solutions','Winnipeg','6546541230'),(428,'SUP109','HIJ Manufacturing','Halifax','9879876543'),(429,'SUP110','KLM Technologies','Edmonton','3453456789'),(430,'SUP111','NOP Services','Victoria','8768765432'),(431,'SUP112','Jerry',' Scarbourouh','0245879545');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_purchases_by_supplier`
--

DROP TABLE IF EXISTS `total_purchases_by_supplier`;
/*!50001 DROP VIEW IF EXISTS `total_purchases_by_supplier`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_purchases_by_supplier` AS SELECT 
 1 AS `suppliercode`,
 1 AS `total_quantity_purchased`,
 1 AS `total_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_sales_by_product`
--

DROP TABLE IF EXISTS `total_sales_by_product`;
/*!50001 DROP VIEW IF EXISTS `total_sales_by_product`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_sales_by_product` AS SELECT 
 1 AS `productcode`,
 1 AS `total_quantity_sold`,
 1 AS `total_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `userlogs`
--

DROP TABLE IF EXISTS `userlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogs` (
  `username` varchar(45) NOT NULL,
  `in_time` varchar(45) NOT NULL,
  `out_time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogs`
--

LOCK TABLES `userlogs` WRITE;
/*!40000 ALTER TABLE `userlogs` DISABLE KEYS */;
INSERT INTO `userlogs` (`username`, `in_time`, `out_time`) VALUES ('aduser1','2021-09-01T04:46:55.125709800','2021-09-01T04:47:01.801381'),('root','2021-09-01T05:02:43.010014','2021-09-01T05:02:50.224787400'),('stduser1','2021-09-01T05:04:57.690182100','2021-09-01T05:05:04.294274300'),('root','2021-09-01T05:05:12.269897600','2021-09-01T05:05:16.866792500'),('root','2021-09-01T05:10:08.728527600','2021-09-01T05:10:16.926883100'),('root','2021-09-01T06:19:09.326477200','2021-09-01T06:19:21.641620900'),('emp1','2021-09-01T06:19:34.536411800','2021-09-01T06:19:43.517392100'),('root','2021-09-01T06:19:46.811400900','2021-09-01T06:20:10.879660700'),('root','2021-09-01T14:59:48.661066400','2021-09-01T15:02:09.761864900'),('root','2021-09-01T15:09:02.964317400','2021-09-01T15:09:14.141324800'),('root','2021-09-01T15:09:27.889908500','2021-09-01T15:09:48.262387'),('root','2021-09-01T15:38:48.557639300','2021-09-01T15:40:00.527183800'),('root','2021-09-01T15:40:22.622326','2021-09-01T15:41:06.461438500'),('root','2021-09-01T15:44:26.195028100','2021-09-01T15:44:33.071448800'),('root','2021-09-02T01:42:52.417989900','2021-09-02T01:42:55.226675900'),('root','2021-09-02T01:43:12.226339400','2021-09-02T01:43:15.818776'),('aduser1','2021-09-03T02:12:41.021781900','2021-09-03T02:19:11.829873500'),('root','2024-12-09T01:12:19.003676700','2024-12-09T01:14:37.128318500'),('aduser1','2024-12-09T01:15:34.492630700','2024-12-09T01:26:03.217799200'),('emp1','2024-12-09T08:19:30.470606100','2024-12-09T08:21:25.150195900'),('root','2024-12-09T10:10:17.395617900','2024-12-09T10:10:23.463647400'),('root','2024-12-09T22:34:11.366843','2024-12-09T22:52:43.125295100'),('root','2024-12-09T22:53:07.083478900','2024-12-09T23:26:50.434790800'),('root','2024-12-09T23:52:28.097802500','2024-12-09T23:53:28.999290700'),('root','2024-12-09T23:55:54.998422900','2024-12-09T23:57:24.163623'),('root','2024-12-09T23:58:12.615740200','2024-12-10T00:14:57.347210500'),('root','2024-12-10T00:15:56.111472500','2024-12-10T00:21:31.399192600'),('root','2024-12-10T00:28:00.376460700','2024-12-10T00:37:51.721351700'),('root','2024-12-10T00:50:21.565484900','2024-12-10T01:15:30.676441400'),('root','2024-12-10T00:37:57.698870600','2024-12-10T01:15:40.826017400'),('Januarius','2024-12-10T01:17:59.228724','2024-12-10T01:28:13.977738400'),('Januarius','2024-12-10T01:29:56.055074100','2024-12-10T01:30:22.684882700'),('Januarius','2024-12-10T01:31:36.483418','2024-12-10T01:31:48.727866500'),('Januarius','2024-12-10T01:32:36.929961','2024-12-10T01:32:51.090601400'),('Januarius','2024-12-10T01:34:17.412361200','2024-12-10T01:34:30.304074800'),('Januarius','2024-12-10T01:35:56.768529900','2024-12-10T01:36:03.000682600'),('Januarius','2024-12-10T01:37:01.032851100','2024-12-10T01:43:59.580869400'),('Januarius','2024-12-10T01:44:13.416818600','2024-12-10T01:45:17.257334500'),('Januarius','2024-12-10T01:45:29.561628200','2024-12-10T01:45:42.335051200'),('Januarius','2024-12-10T01:48:35.198512100','2024-12-10T01:48:44.833591400'),('Januarius','2024-12-10T01:51:07.785968300','2024-12-10T02:13:19.264428100'),('Januarius','2024-12-10T02:13:38.232849300','2024-12-10T02:15:55.274576600'),('Januarius','2024-12-10T02:16:02.428439700','2024-12-10T02:18:19.133025300'),('Januarius','2024-12-10T02:19:40.162441100','2024-12-10T02:22:17.603956100'),('Januarius','2024-12-10T02:33:45.554869900','2024-12-10T02:35:22.338869100'),('Januarius','2024-12-10T02:35:36.678326800','2024-12-10T02:50:23.635816700'),('Januarius','2024-12-10T10:49:36.755498','2024-12-10T10:50:24.152796300'),('Januarius','2024-12-10T10:51:04.157329700','2024-12-10T10:51:22.042496400'),('Januarius','2024-12-10T10:53:39.990853','2024-12-10T10:53:44.605773200'),('Januarius','2024-12-10T10:54:27.238256800','2024-12-10T10:55:54.774731500'),('Januarius','2024-12-10T10:58:41.136809400','2024-12-10T10:59:30.134843500'),('Januarius','2024-12-10T10:59:38.798108200','2024-12-10T11:00:15.321757700'),('Januarius','2024-12-10T11:14:51.285290100','2024-12-10T11:15:34.123869600'),('Januarius','2024-12-10T11:17:11.312884100','2024-12-10T11:18:08.153337700'),('Januarius','2024-12-10T11:18:18.478981300','2024-12-10T11:18:56.974184800'),('Januarius','2024-12-10T11:19:46.979215400','2024-12-10T11:22:17.435433800'),('Januarius','2024-12-10T11:22:31.805815300','2024-12-10T11:22:53.916649300'),('Januarius','2024-12-10T11:05:20.306775400','2024-12-10T11:23:42.978672900'),('Januarius','2024-12-10T11:24:03.785290600','2024-12-10T11:24:19.188421300'),('Januarius','2024-12-10T11:25:04.521444500','2024-12-10T11:25:50.501067100'),('Jay','2024-12-10T11:25:57.674934500','2024-12-10T11:26:20.264433100'),('Januarius','2024-12-10T11:27:42.760839300','2024-12-10T11:28:16.527877700'),('Jay','2024-12-10T11:28:22.680345300','2024-12-10T11:33:02.689842700'),('Januarius','2024-12-10T11:33:09.951180900','2024-12-10T12:23:29.978942100'),('Januarius','2024-12-10T12:25:55.129213400','2024-12-10T12:28:30.532757100'),('Januarius','2024-12-10T12:29:31.541184200','2024-12-10T12:37:03.067489200'),('Januarius','2024-12-10T12:37:16.412705700','2024-12-10T14:11:37.201133500'),('Januarius','2024-12-10T14:11:45.683683','2024-12-10T15:20:43.125820100'),('Jay','2024-12-10T15:21:07.610029500','2024-12-10T17:11:08.623354900'),('Januarius','2024-12-10T17:11:24.684820900','2024-12-10T18:03:54.490755900'),('Januarius','2024-12-10T18:11:06.887213900','2024-12-10T18:20:56.034690200'),('Jay','2024-12-10T18:21:07.939454200','2024-12-10T19:44:08.910184800'),('Jay','2024-12-10T20:43:18.250269200','2024-12-10T20:44:16.068879600'),('Januarius','2024-12-10T20:48:52.392930100','2024-12-10T21:31:04.957223600'),('Jay','2024-12-10T21:31:59.729144800','2024-12-10T21:38:45.772174200'),('Jay','2024-12-10T22:11:55.405107100','2024-12-10T22:12:02.126239600');
/*!40000 ALTER TABLE `userlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `usertype` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `location`, `phone`, `username`, `password`, `usertype`) VALUES (38,'Januarius','Toronto','0249779023','Januarius','Januarius','ADMINISTRATOR'),(43,'Jay','Alberta','4376695187','Jay','Jay','EMPLOYEE'),(44,'Jerry ','Scaboruogh','0254786456','Jerry','Jerry','ADMINISTRATOR'),(45,'Issaka Mohammed','Scarbourough','436558897','Issaka','Issaka','EMPLOYEE');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `product_sales_performance`
--

/*!50001 DROP VIEW IF EXISTS `product_sales_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `product_sales_performance` AS select `p`.`productcode` AS `productcode`,`p`.`productname` AS `productname`,coalesce(`s`.`total_quantity_sold`,0) AS `total_quantity_sold`,coalesce(`s`.`total_revenue`,0) AS `total_revenue`,`cs`.`quantity` AS `remaining_stock` from ((`products` `p` left join (select `salesinfo`.`productcode` AS `productcode`,sum(`salesinfo`.`quantity`) AS `total_quantity_sold`,sum(`salesinfo`.`revenue`) AS `total_revenue` from `salesinfo` group by `salesinfo`.`productcode`) `s` on((`p`.`productcode` = `s`.`productcode`))) left join `currentstock` `cs` on((`p`.`productcode` = `cs`.`productcode`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `revenue_by_customer`
--

/*!50001 DROP VIEW IF EXISTS `revenue_by_customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `revenue_by_customer` AS select `salesinfo`.`customercode` AS `customercode`,sum(`salesinfo`.`revenue`) AS `total_revenue` from `salesinfo` group by `salesinfo`.`customercode` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stock_overview`
--

/*!50001 DROP VIEW IF EXISTS `stock_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `stock_overview` AS select `p`.`productcode` AS `productcode`,`p`.`productname` AS `productname`,ifnull(sum(`pur`.`quantity`),0) AS `total_purchased`,ifnull(sum(`sales`.`quantity`),0) AS `total_sold`,(ifnull(sum(`pur`.`quantity`),0) - ifnull(sum(`sales`.`quantity`),0)) AS `current_stock` from ((`products` `p` left join `purchaseinfo` `pur` on((`p`.`productcode` = `pur`.`productcode`))) left join `salesinfo` `sales` on((`p`.`productcode` = `sales`.`productcode`))) group by `p`.`productcode`,`p`.`productname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_purchases_by_supplier`
--

/*!50001 DROP VIEW IF EXISTS `total_purchases_by_supplier`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `total_purchases_by_supplier` AS select `purchaseinfo`.`suppliercode` AS `suppliercode`,sum(`purchaseinfo`.`quantity`) AS `total_quantity_purchased`,sum(`purchaseinfo`.`totalcost`) AS `total_cost` from `purchaseinfo` group by `purchaseinfo`.`suppliercode` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_sales_by_product`
--

/*!50001 DROP VIEW IF EXISTS `total_sales_by_product`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `total_sales_by_product` AS select `salesinfo`.`productcode` AS `productcode`,sum(`salesinfo`.`quantity`) AS `total_quantity_sold`,sum(`salesinfo`.`revenue`) AS `total_revenue` from `salesinfo` group by `salesinfo`.`productcode` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11 17:19:12
