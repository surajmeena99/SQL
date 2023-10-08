-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: assignment_db
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cnm` int NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `sno_fk` int DEFAULT NULL,
  PRIMARY KEY (`cnm`),
  KEY `sno_fk` (`sno_fk`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`sno_fk`) REFERENCES `salesperson` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (201,'Hoffman','London',100,1001),(202,'Giovanne','Roe',200,1003),(203,'Liu','San Jose',300,1002),(204,'Grass','Barcelona',100,1002),(206,'Clemens','London',300,1007),(207,'Pereira','Roe',100,1004);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(40) DEFAULT NULL,
  `Last_name` varchar(40) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Joining_date` datetime DEFAULT NULL,
  `Department` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John','Abraham',1000000,'2013-01-01 00:00:00','Banking'),(2,'Michael','Clarke',800000,'2013-01-01 00:00:00','Insurance'),(3,'Roy','Thomas',700000,'2013-02-01 00:00:00','Banking'),(4,'Tom','Jose',600000,'2013-02-01 00:00:00','Insurance'),(5,'Jerry','Pinto',650000,'2013-02-01 00:00:00','Insurance'),(6,'Philip','Nathew',750000,'2013-01-01 00:00:00','Services'),(7,'TestName1','123',650000,'2013-01-01 00:00:00','Services'),(8,'TestName2','Lname%',600000,'2013-02-01 00:00:00','Insurance');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `Rollnu` int DEFAULT NULL,
  `S_code` varchar(20) DEFAULT NULL,
  `Marks` int DEFAULT NULL,
  `P_code` varchar(20) DEFAULT NULL,
  KEY `Rollnu` (`Rollnu`),
  CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`Rollnu`) REFERENCES `student` (`Rollnu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'CS11',50,'CS'),(1,'CS12',60,'CS'),(2,'EC101',66,'EC'),(2,'EC102',70,'EC'),(3,'EC101',45,'EC'),(3,'EC102',50,'EC');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incentive`
--

DROP TABLE IF EXISTS `incentive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incentive` (
  `Employee_ref_id` int DEFAULT NULL,
  `Incentive_date` date DEFAULT NULL,
  `Incentive_amount` int DEFAULT NULL,
  KEY `Employee_ref_id` (`Employee_ref_id`),
  CONSTRAINT `incentive_ibfk_1` FOREIGN KEY (`Employee_ref_id`) REFERENCES `employee` (`Employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incentive`
--

LOCK TABLES `incentive` WRITE;
/*!40000 ALTER TABLE `incentive` DISABLE KEYS */;
INSERT INTO `incentive` VALUES (1,'2013-02-01',5000),(2,'2013-02-01',3000),(3,'2013-02-01',4000),(1,'2013-02-01',4500),(2,'2013-01-01',3500);
/*!40000 ALTER TABLE `incentive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesperson`
--

DROP TABLE IF EXISTS `salesperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesperson` (
  `sno` int NOT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `comm` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesperson`
--

LOCK TABLES `salesperson` WRITE;
/*!40000 ALTER TABLE `salesperson` DISABLE KEYS */;
INSERT INTO `salesperson` VALUES (1001,'Peel','London',0.12),(1002,'Serres','San Jose',0.13),(1003,'Axelrod','New York',0.10),(1004,'Motika','London',0.11),(1007,'Rafkin','Barcelona',0.15);
/*!40000 ALTER TABLE `salesperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Rollnu` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Rollnu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Jay','Computer Science'),(2,'Suhani','Electronic and Com'),(3,'Kriti','Electronic and Com');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `viewtable`
--

DROP TABLE IF EXISTS `viewtable`;
/*!50001 DROP VIEW IF EXISTS `viewtable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewtable` AS SELECT 
 1 AS `Employee_id`,
 1 AS `First_name`,
 1 AS `Last_name`,
 1 AS `Salary`,
 1 AS `Joining_date`,
 1 AS `Department`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `viewtable`
--

/*!50001 DROP VIEW IF EXISTS `viewtable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewtable` AS select `employee`.`Employee_id` AS `Employee_id`,`employee`.`First_name` AS `First_name`,`employee`.`Last_name` AS `Last_name`,`employee`.`Salary` AS `Salary`,`employee`.`Joining_date` AS `Joining_date`,`employee`.`Department` AS `Department` from `employee` */;
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

-- Dump completed on 2023-10-09  0:09:24
