-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `admin`
--
DROP LIBRARY IF EXISTS;
CREATE DATABASE LIBRARY;
USE LIBRARY;

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` varchar(50) NOT NULL,
  `pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('dipanshu','96501'),('vishal','demigod');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_list`
--

DROP TABLE IF EXISTS `book_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_list` (
  `Book_Id` varchar(60) NOT NULL,
  `Book_Name` varchar(60) DEFAULT NULL,
  `Author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Book_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_list`
--

LOCK TABLES `book_list` WRITE;
/*!40000 ALTER TABLE `book_list` DISABLE KEYS */;
INSERT INTO `book_list` VALUES ('B1','Harry Potter','J.k.rowling'),('B10','Inside the Whale and Other Essays','George Orwell'),('B12','Between the Acts','Virginia Woolf '),('B13','OSWAAL IP','bill'),('B2','Harry Potter and the Deathly Hallows ','J.K.Rowling'),('B3','Harry Potter and the Chamber of Secrets','J.K.Rowling'),('B4','Harry Potter and the Half-Blood Prince ','J.K.Rowling'),('B5','1984 ','George Orwell'),('B6','Pride and Prejudice','Jane Austen'),('B7','Down and Out in Paris and London','George Orwell'),('B8','Burmese Days','George Orwell'),('B9','Coming Up for Air','George Orwell');
/*!40000 ALTER TABLE `book_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Customer_Id` varchar(60) NOT NULL,
  `Customer_Name` varchar(60) DEFAULT NULL,
  `BooksIssued` int(60) DEFAULT NULL,
  PRIMARY KEY (`Customer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('1','japleen',0),('2','shelly',0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issued`
--

DROP TABLE IF EXISTS `issued`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issued` (
  `Book_Id` varchar(60) DEFAULT NULL,
  `IssuedQuantity` int(60) DEFAULT NULL,
  UNIQUE KEY `Book_Id` (`Book_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issued`
--

LOCK TABLES `issued` WRITE;
/*!40000 ALTER TABLE `issued` DISABLE KEYS */;
INSERT INTO `issued` VALUES ('B1',0),('B2',0),('B3',0),('B4',0),('B5',0),('B6',0),('B7',0),('B8',0),('B9',0),('B10',0),('B11',0),('B12',0);
/*!40000 ALTER TABLE `issued` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `Book_Id` varchar(60) DEFAULT NULL,
  `Quantity` int(60) DEFAULT NULL,
  UNIQUE KEY `Book_Id` (`Book_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES ('B1',10),('B2',15),('B3',11),('B4',13),('B5',12),('B6',16),('B7',17),('B8',18),('B9',19),('B10',20),('B11',21),('B12',22);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-22 18:12:07
