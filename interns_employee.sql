CREATE DATABASE  IF NOT EXISTS `interns` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `interns`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: interns
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmpID` int unsigned NOT NULL AUTO_INCREMENT,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `Sex` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Salary` double DEFAULT NULL,
  `Mgrld` int DEFAULT NULL,
  `DeptID` int NOT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Abirami','Bob','10-Jan-90','Female','abirami@hcl.com',1000,2,10),(2,'Bhuvi','Rob','10-Feb-91','Female','Bhuvi@cyz',500,3,20),(3,'Chandrima','Derek','10-Mar-92','Female','@abc.com',2000,4,30),(4,'Debasis','Pringle','10-Apr-93','Male','Debasis@hcl.com',3000,5,40),(5,'Enigma','Gefree','10-May-95','Female','enigma@gmail.com',4500,6,10),(6,'Funnel','Samas','10-Jun-99','Male','funnel@hcl.com',5500,7,20),(7,'Gabriel','Lal','10-Jul-97','Male','gabriel@xyz.com',6500,8,30),(8,'Hari','Fedrik','10-Aug-98','Male','hari@hcl.com',7900,9,40),(9,'Inis','Gunjan','10-Sep-99','Female','inia@hcl.com',8900,10,10),(10,'Jaisna','Singh','10-Oct-00','Female','jasina@hcl.com',1000,NULL,20),(11,'Yash','Bob','10-Jan-90','Female','abirami@hcl.com',1000,2,10),(12,'Bharat','Rob','10-Feb-91','Female','bhuvi@hcl.com',500,2,20),(13,'Krish','Derek','10-Mar-92','female','@abc.com',2000,3,30),(14,'karina','Pringle ','10-Apr-93','Male','Debasis@hcl.com',3000,3,40),(15,'King','Gefree','10-May-95','Female','Enigma@gmail.com',4500,8,10),(16,'George','Samas','10-Jun-99','Male','funnel@hcl.com',5500,8,20),(17,'Patric','Lal','10-Jul-97','Male','gabriel@xyz.com',6500,9,40),(18,'Peter','Fedrik','10-Aug-98','Male','Hari@hcl.com',7900,9,40),(19,'Mirande','Gunjan','10-Sep-99','female','inia@hcl.com',8900,10,10);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-06 15:15:13
