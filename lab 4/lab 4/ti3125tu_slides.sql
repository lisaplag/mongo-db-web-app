CREATE DATABASE  IF NOT EXISTS `ti3125tu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ti3125tu`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ti3125tu
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `DeptName` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`DeptName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('Administration','Bond Street','London'),('Distribution','Pond Road','Brighton'),('Planning','Bond Street','London'),('Production','Rue Victor Hugo','Toulouse'),('Research','Sunset Street','San Joné');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `FirstName` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Surname` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dept` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Office` int(11) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `City` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FirstName`,`Surname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('Alice','Jackson','Production',20,46,'Toulouse'),('Charles','Brown','Planning',14,80,'London'),('Charles','White','Production',20,36,'Toulouse'),('Gus','Green','Administration',20,40,'Oxford'),('Jackson','Neri','Distribution',16,45,'Dover'),('Laurence','Chen','Planning',7,73,'Worthing'),('Mary','Brown','Administration',10,45,'London'),('Pauline','Bradshaw','Administration',75,40,'Brighton');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `CodeP` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NameP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Size` int(11) DEFAULT NULL,
  `Storehouse` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CodeP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P1','Sweater','Red',40,'Amsterdam'),('P2','Jeans','Green',48,'Den Haag'),('P3','Shirt','Blue',48,'Rotterdam'),('P4','Shirt','Blue',44,'Amsterdam'),('P5','Skirt','Blue',40,'Den Haag'),('P6','Coat','Red',42,'Amsterdam');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier` (
  `CodeS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NameS` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Shareholders` int(11) DEFAULT NULL,
  `Office` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CodeS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('S1','John',2,'Amsterdam'),('S2','Victor',1,'Den Haag'),('S3','Anna',3,'Den Haag'),('S4','Angela',2,'Amsterdam'),('S5','Paul',3,'Utrecht');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supply` (
  `CodeS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CodeP` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`CodeS`,`CodeP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES ('S1','P1',300),('S1','P2',200),('S1','P3',400),('S1','P4',200),('S1','P5',100),('S1','P6',100),('S2','P1',300),('S2','P2',400),('S3','P2',200),('S4','P3',200),('S4','P4',300),('S4','P5',400);
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-10 19:09:51
