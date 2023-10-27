CREATE DATABASE  IF NOT EXISTS `evecosystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `evecosystem`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: evecosystem
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
-- Table structure for table `car_info`
--

DROP TABLE IF EXISTS `car_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_info` (
  `car_id` int NOT NULL,
  `battery_life` float DEFAULT NULL,
  `consumption` float DEFAULT NULL,
  `current_charge` int DEFAULT NULL,
  `sources` varchar(60) DEFAULT NULL,
  `destination` varchar(60) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  CONSTRAINT `chk_float_range` CHECK (((`battery_life` >= 0.0) and (`battery_life` <= 100.0)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_info`
--

LOCK TABLES `car_info` WRITE;
/*!40000 ALTER TABLE `car_info` DISABLE KEYS */;
INSERT INTO `car_info` VALUES (1,40,1,10,'Mayfield Gardens,Gurgaon','Lajpat Nagar',29.8);
/*!40000 ALTER TABLE `car_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chargers`
--

DROP TABLE IF EXISTS `chargers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chargers` (
  `charger_id` int NOT NULL,
  `availability` varchar(1) DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL,
  `Location` varchar(60) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `isStation` tinyint(1) DEFAULT NULL,
  `station_available` tinyint(1) DEFAULT NULL,
  `time_to_get` int DEFAULT NULL,
  `rate` int DEFAULT NULL,
  PRIMARY KEY (`charger_id`),
  CONSTRAINT `chk_char_raange` CHECK (((`type` = _utf8mb4'Docket') or (`type` = _utf8mb4'Device'))),
  CONSTRAINT `chk_char_range` CHECK (((`availability` = _utf8mb4'Y') or (`availability` = _utf8mb4'N')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chargers`
--

LOCK TABLES `chargers` WRITE;
/*!40000 ALTER TABLE `chargers` DISABLE KEYS */;
INSERT INTO `chargers` VALUES (1,'N','Device','Mayfield Gardens,Gurgaon',28.42715072631836,77.061767578125,0,0,0,0),(2,'Y','Device','Kirti Nagar',28.449602127075195,77.03964233398438,1,1,0,10),(3,'Y','Docket','Jharsa Road',28.443974,77.058194,1,1,0,11),(4,'Y','Docket','Sector 44',28.45433,77.074157,1,1,0,5),(5,'Y','Device','Harjan Basti',28.47287,77.06184,1,1,0,35),(6,'Y','Device','Sikanderpur',28.480084,77.109771,1,1,0,10),(7,'Y','Device','Qutab Garh',28.573052,77.164092,1,1,0,17),(8,'Y','Docket','Smriti Vatika',28.588735,77.170348,1,1,0,23),(9,'Y','Device','Chhattarpur',28.506536,77.175029,1,1,0,40),(10,'Y','Docket','Sri Aurobindo Marg',28.552096,77.204539,1,1,0,20),(11,'Y','Device','AIIMS',28.56778,77.20794,1,1,0,15),(12,'Y','Docket','Mahatma Gandhi Road',28.569659,77.204784,1,1,0,32),(13,'Y','Docket','South Extension I',28.568761,77.222008,1,1,0,25),(14,'N','Device','Lajpat Nagar',28.564962,77.24033,0,0,0,0);
/*!40000 ALTER TABLE `chargers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `device_id` int NOT NULL,
  `ssid` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'MiniCharger1','12345678'),(2,'MiniCharger2','12345678');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edge`
--

DROP TABLE IF EXISTS `edge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edge` (
  `edge_id` int NOT NULL,
  `src_pt` varchar(45) DEFAULT NULL,
  `dst_pt` varchar(45) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  PRIMARY KEY (`edge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edge`
--

LOCK TABLES `edge` WRITE;
/*!40000 ALTER TABLE `edge` DISABLE KEYS */;
INSERT INTO `edge` VALUES (1,'Mayfield Gardens,Gurgaon','Kirti Nagar',4.8),(2,'Mayfield Gardens,Gurgaon','Jharsa Road',3.3),(3,'Mayfield Gardens,Gurgaon','Sector 44',4.6),(4,'Sector 44','Sikanderpur',5.6),(5,'Sikanderpur','Chhattarpur',7.8),(6,'Chhattarpur','Sri Aurobindo Marg',6.3),(7,'Sri Aurobindo Marg','AIIMS',1.8),(8,'AIIMS','South Extension I',1.8),(9,'Kirti Nagar','Harjan Basti',4.3),(10,'Jharsa Road','Harjan Basti',4.5),(11,'Harjan Basti','Qutab Garh',18.3),(12,'Harjan Basti','Smriti Vatika',19.8),(13,'Qutab Garh','Mahatma Gandhi Road',5.8),(14,'Smriti Vatika','Mahatma Gandhi Road',5.6),(15,'Mahatma Gandhi Road','South Extension I',1.8),(16,'South Extension I','Lajpat Nagar',1.9);
/*!40000 ALTER TABLE `edge` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27 16:44:57
