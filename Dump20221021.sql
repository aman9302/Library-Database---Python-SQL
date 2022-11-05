CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `book_list`
--

DROP TABLE IF EXISTS `book_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_list` (
  `book_id` int DEFAULT NULL,
  `book_name` text,
  `author` text,
  `edition` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `MyUnknownColumn` text,
  `MyUnknownColumn_[0]` text,
  `MyUnknownColumn_[1]` text,
  `MyUnknownColumn_[2]` text,
  `MyUnknownColumn_[3]` text,
  `MyUnknownColumn_[4]` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_list`
--

LOCK TABLES `book_list` WRITE;
/*!40000 ALTER TABLE `book_list` DISABLE KEYS */;
INSERT INTO `book_list` VALUES (100000001,'The History of Tom Jones a Foundling ','Henry Fielding',1,150,1,'','','','','',''),(100000002,'Pride and Prejudice','Jane Austen',3,155,1,'','','','','',''),(100000003,'The Red and the Black','Stendhal',2,409,1,'','','','','',''),(100000004,'Le Pere Goriot','Honore de Balzac',3,950,1,'','','','','',''),(100000005,'David Copperfield','Charles Dickens',2,195,1,'','','','','',''),(100000006,'Madame Bovary','Gustave Flaubert',3,175,1,'','','','','',''),(100000007,'Moby Dick','Herman Melville',3,250,1,'','','','','',''),(100000008,'Wuthering Heights','Emily Bronte',2,139,1,'','','','','',''),(100000009,'The Brothers Karamazov','Dostoevsky',3,1683,1,'','','','','',''),(100000010,'War and Peace','Tolstoy',1,369,1,'','','','','',''),(100000011,'To Kill a Mockingbird','Harper Lee',2,284,1,'','','','','',''),(100000012,'Hitchhikers Guide to the Galaxy','Douglas Adams',1,370,1,'','','','','','');
/*!40000 ALTER TABLE `book_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow_record`
--

DROP TABLE IF EXISTS `borrow_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrow_record` (
  `book_id` int NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `stu_roll` int NOT NULL,
  `stu_name` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `issue_date` date NOT NULL,
  `return_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow_record`
--

LOCK TABLES `borrow_record` WRITE;
/*!40000 ALTER TABLE `borrow_record` DISABLE KEYS */;
INSERT INTO `borrow_record` VALUES (100000001,'The History of Tom Jones, a Foundling ',100004,'Aman','CAC','Novel','2009-03-22','2016-03-22'),(100000002,'Pride and Prejudice',100007,'Ishaan','CAC','Novel','2014-03-22','2021-03-22'),(100000004,'Le Pere Goriot',100003,'Adhavan','CAC','Novel','2015-03-22','2022-03-22'),(100000005,'David Copperfield',100003,'Adhavan','CAC','Novel','2017-03-22','2024-03-22'),(100000006,'Madame Bovary',100008,'Nandita','IADP','Novel','2018-03-22','2025-03-22'),(100000008,'Wuthering Heights',100005,'Vivek','Faculty','Novel','2018-03-22','2025-03-22'),(100000011,'To Kill a Mockingbird',100009,'Aman','CAC','Novel','2019-03-22','2026-03-22'),(100000012,'Hitchhikers Guide to the Galaxy',100002,'Soham','CAC','Novel','2020-03-22','2027-03-22');
/*!40000 ALTER TABLE `borrow_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21 14:40:39
