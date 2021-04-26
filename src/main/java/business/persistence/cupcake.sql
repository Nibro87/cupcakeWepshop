-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: cupcake
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `bottom`
--

DROP TABLE IF EXISTS `bottom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bottom` (
  `bottom_id` int NOT NULL AUTO_INCREMENT,
  `bottom` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`bottom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottom`
--

LOCK TABLES `bottom` WRITE;
/*!40000 ALTER TABLE `bottom` DISABLE KEYS */;
INSERT INTO `bottom` VALUES (1,'Chocolate',5),(2,'Vanilla',5),(3,'Numeg',5),(4,'Pistacio',6),(5,'Almond',7);
/*!40000 ALTER TABLE `bottom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupcake_entry`
--

DROP TABLE IF EXISTS `cupcake_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cupcake_entry` (
  `cupcake_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `number` int DEFAULT NULL,
  `bottom_id` int DEFAULT NULL,
  `topping_id` int DEFAULT NULL,
  PRIMARY KEY (`cupcake_id`),
  KEY `fk_cupcake_order1_idx` (`order_id`),
  KEY `fk_cupcake_bottom1_idx` (`bottom_id`),
  KEY `fk_cupcake_topping1_idx` (`topping_id`),
  CONSTRAINT `fk_cupcake_bottom1` FOREIGN KEY (`bottom_id`) REFERENCES `bottom` (`bottom_id`),
  CONSTRAINT `fk_cupcake_order1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `fk_cupcake_topping1` FOREIGN KEY (`topping_id`) REFERENCES `topping` (`topping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupcake_entry`
--

LOCK TABLES `cupcake_entry` WRITE;
/*!40000 ALTER TABLE `cupcake_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `cupcake_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `finished` tinyint DEFAULT NULL,
  `ordertime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `paid` tinyint DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_user1_idx` (`user_id`),
  CONSTRAINT `fk_order_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topping`
--

DROP TABLE IF EXISTS `topping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topping` (
  `topping_id` int NOT NULL AUTO_INCREMENT,
  `topping` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`topping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topping`
--

LOCK TABLES `topping` WRITE;
/*!40000 ALTER TABLE `topping` DISABLE KEYS */;
INSERT INTO `topping` VALUES (1,'Chocolate',5),(2,'Blueberry',5),(3,'Rasberry',5),(4,'Crispy',6),(5,'Strawberry',6),(6,'Rum/Raisin',7),(7,'Orange',8),(8,'Blue cheese',9);
/*!40000 ALTER TABLE `topping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `saldo` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ole@ole.dk','ole','employee',0),(2,'barbie@world.dk','123','customer',100),(3,'ken@world.dk','123','customer',1000),(4,'ruimin@avenger.dk','ruimin','employee',50000),(5,'nicholas@nicholas.dk','nicholas','employee',0),(6,'jon@wall.sn','jon','customer',200),(7,'aria@winterfall.sn','aria','customer',100),(8,'alice@wonderland.dk','alice','customer',500),(9,'peter@neverland.dk','peter','customer',0),(10,'hook@neverland.dk','hook','customer',NULL),(11,'frodo@shire.dk','frodo','customer',NULL),(12,'frodo@shire.dk','frodo','customer',NULL);
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

-- Dump completed on 2021-04-26 12:29:36
