-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `npat`
--

DROP TABLE IF EXISTS `npat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `animal` varchar(100) NOT NULL,
  `thing` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npat`
--

LOCK TABLES `npat` WRITE;
/*!40000 ALTER TABLE `npat` DISABLE KEYS */;
INSERT INTO `npat` VALUES (3,'Shruti','Aurangabad','Lion','Pen'),(17,'Aayush','Nagpur','Raccoon','Gulabjamun'),(24,'Abhijeet','Amravati','Cheetah','Iphone'),(28,'Pratiksha','Pune','Panda','Perk'),(35,'Snehal','Nashik','Rabbit','Pencil'),(36,'Shweta','Nashik','Squirrel','Music'),(37,'Sudeeksha','Nagpur','Cat','Purse'),(38,'Siddhi','Nashik','Horse','Eraser'),(39,'Roshni','Nashik','Bear','Book'),(40,'Neha','Lucknow','Bear','Lipbalm'),(41,'Shubham','Nagpur','Dog','Spectacles'),(42,'Radha','Pune','Mouse','Dance'),(43,'Vedshree','Puntamba','Monkey','Bag'),(44,'Tejas','Nashik','Monkey','Bicycle'),(45,'Pratik','Germany','Giraffe','Macbook'),(46,'Manas','Mumbai','Dog','Cycle'),(47,'Komal','Nashik','Sparrow','Dress'),(48,'Anamika','Nowhere','Tiger','Lipstick'),(49,'Krutika','Chalisgaon','Deer','Paper'),(50,'Chaitanya','Nashik','Lion','Computer'),(51,'Aakash','Akola','Leopard','Laptop'),(52,'Aishwarya','US','Bunny','Coffee'),(53,'Madhuri','Baroda','Fox','Book'),(54,'Swapna','Pune','cat','pen');
/*!40000 ALTER TABLE `npat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'p'),(2,'s'),(3,'s'),(4,'s'),(5,'s');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-18 18:31:59
