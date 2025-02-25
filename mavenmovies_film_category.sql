-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mavenmovies
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `film_category`
--

DROP TABLE IF EXISTS `film_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_category` (
  `film_id` smallint unsigned NOT NULL,
  `category_id` tinyint unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`film_id`,`category_id`),
  KEY `fk_film_category_category` (`category_id`),
  CONSTRAINT `fk_film_category_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_film_category_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_category`
--

LOCK TABLES `film_category` WRITE;
/*!40000 ALTER TABLE `film_category` DISABLE KEYS */;
INSERT INTO `film_category` VALUES (1,6,'2006-02-14 23:37:09'),(2,11,'2006-02-14 23:37:09'),(3,6,'2006-02-14 23:37:09'),(4,11,'2006-02-14 23:37:09'),(5,8,'2006-02-14 23:37:09'),(6,9,'2006-02-14 23:37:09'),(7,5,'2006-02-14 23:37:09'),(8,11,'2006-02-14 23:37:09'),(9,11,'2006-02-14 23:37:09'),(10,15,'2006-02-14 23:37:09'),(11,9,'2006-02-14 23:37:09'),(12,12,'2006-02-14 23:37:09'),(13,11,'2006-02-14 23:37:09'),(14,4,'2006-02-14 23:37:09'),(15,9,'2006-02-14 23:37:09'),(16,9,'2006-02-14 23:37:09'),(17,12,'2006-02-14 23:37:09'),(18,2,'2006-02-14 23:37:09'),(19,1,'2006-02-14 23:37:09'),(20,12,'2006-02-14 23:37:09'),(21,1,'2006-02-14 23:37:09'),(22,13,'2006-02-14 23:37:09'),(23,2,'2006-02-14 23:37:09'),(24,11,'2006-02-14 23:37:09'),(25,13,'2006-02-14 23:37:09'),(26,14,'2006-02-14 23:37:09'),(27,15,'2006-02-14 23:37:09'),(28,5,'2006-02-14 23:37:09'),(29,1,'2006-02-14 23:37:09'),(30,11,'2006-02-14 23:37:09'),(31,8,'2006-02-14 23:37:09'),(32,13,'2006-02-14 23:37:09'),(33,7,'2006-02-14 23:37:09'),(34,11,'2006-02-14 23:37:09'),(35,11,'2006-02-14 23:37:09'),(36,2,'2006-02-14 23:37:09'),(37,4,'2006-02-14 23:37:09'),(38,1,'2006-02-14 23:37:09'),(39,14,'2006-02-14 23:37:09'),(40,6,'2006-02-14 23:37:09'),(41,16,'2006-02-14 23:37:09'),(42,15,'2006-02-14 23:37:09'),(43,8,'2006-02-14 23:37:09'),(44,14,'2006-02-14 23:37:09'),(45,13,'2006-02-14 23:37:09'),(46,10,'2006-02-14 23:37:09'),(47,9,'2006-02-14 23:37:09'),(48,3,'2006-02-14 23:37:09'),(49,14,'2006-02-14 23:37:09'),(50,8,'2006-02-14 23:37:09'),(51,12,'2006-02-14 23:37:09'),(52,9,'2006-02-14 23:37:09'),(53,8,'2006-02-14 23:37:09'),(54,12,'2006-02-14 23:37:09'),(55,14,'2006-02-14 23:37:09'),(56,1,'2006-02-14 23:37:09'),(57,16,'2006-02-14 23:37:09'),(58,6,'2006-02-14 23:37:09'),(59,3,'2006-02-14 23:37:09'),(60,4,'2006-02-14 23:37:09'),(61,7,'2006-02-14 23:37:09'),(62,6,'2006-02-14 23:37:09'),(63,8,'2006-02-14 23:37:09'),(64,7,'2006-02-14 23:37:09'),(65,11,'2006-02-14 23:37:09'),(66,3,'2006-02-14 23:37:09'),(67,1,'2006-02-14 23:37:09'),(68,3,'2006-02-14 23:37:09'),(69,14,'2006-02-14 23:37:09'),(70,2,'2006-02-14 23:37:09'),(71,8,'2006-02-14 23:37:09'),(72,6,'2006-02-14 23:37:09'),(73,14,'2006-02-14 23:37:09'),(74,12,'2006-02-14 23:37:09'),(75,16,'2006-02-14 23:37:09'),(76,12,'2006-02-14 23:37:09'),(77,13,'2006-02-14 23:37:09'),(78,2,'2006-02-14 23:37:09'),(79,7,'2006-02-14 23:37:09'),(80,8,'2006-02-14 23:37:09'),(81,14,'2006-02-14 23:37:09'),(82,8,'2006-02-14 23:37:09'),(83,8,'2006-02-14 23:37:09'),(84,16,'2006-02-14 23:37:09'),(85,6,'2006-02-14 23:37:09'),(86,12,'2006-02-14 23:37:09'),(87,16,'2006-02-14 23:37:09'),(88,16,'2006-02-14 23:37:09'),(89,2,'2006-02-14 23:37:09'),(90,13,'2006-02-14 23:37:09'),(91,4,'2006-02-14 23:37:09'),(92,11,'2006-02-14 23:37:09'),(93,13,'2006-02-14 23:37:09'),(94,8,'2006-02-14 23:37:09'),(95,13,'2006-02-14 23:37:09'),(96,13,'2006-02-14 23:37:09'),(97,1,'2006-02-14 23:37:09'),(98,7,'2006-02-14 23:37:09'),(99,5,'2006-02-14 23:37:09'),(100,9,'2006-02-14 23:37:09'),(101,6,'2006-02-14 23:37:09'),(102,15,'2006-02-14 23:37:09'),(103,16,'2006-02-14 23:37:09'),(104,9,'2006-02-14 23:37:09'),(105,1,'2006-02-14 23:37:09'),(106,10,'2006-02-14 23:37:09'),(107,7,'2006-02-14 23:37:09'),(108,13,'2006-02-14 23:37:09'),(109,13,'2006-02-14 23:37:09'),(110,3,'2006-02-14 23:37:09'),(111,1,'2006-02-14 23:37:09'),(112,9,'2006-02-14 23:37:09'),(113,15,'2006-02-14 23:37:09'),(114,14,'2006-02-14 23:37:09'),(115,1,'2006-02-14 23:37:09'),(116,4,'2006-02-14 23:37:09'),(117,10,'2006-02-14 23:37:09'),(118,2,'2006-02-14 23:37:09'),(119,5,'2006-02-14 23:37:09'),(120,15,'2006-02-14 23:37:09'),(121,2,'2006-02-14 23:37:09'),(122,11,'2006-02-14 23:37:09'),(123,16,'2006-02-14 23:37:09'),(124,3,'2006-02-14 23:37:09'),(125,16,'2006-02-14 23:37:09'),(126,1,'2006-02-14 23:37:09'),(127,5,'2006-02-14 23:37:09'),(128,9,'2006-02-14 23:37:09'),(129,6,'2006-02-14 23:37:09'),(130,1,'2006-02-14 23:37:09'),(131,4,'2006-02-14 23:37:09'),(132,14,'2006-02-14 23:37:09'),(133,12,'2006-02-14 23:37:09'),(134,2,'2006-02-14 23:37:09'),(135,15,'2006-02-14 23:37:09'),(136,13,'2006-02-14 23:37:09'),(137,14,'2006-02-14 23:37:09'),(138,14,'2006-02-14 23:37:09'),(139,8,'2006-02-14 23:37:09'),(140,14,'2006-02-14 23:37:09'),(141,10,'2006-02-14 23:37:09'),(142,6,'2006-02-14 23:37:09'),(143,7,'2006-02-14 23:37:09'),(144,13,'2006-02-14 23:37:09'),(145,8,'2006-02-14 23:37:09'),(146,7,'2006-02-14 23:37:09'),(147,8,'2006-02-14 23:37:09'),(148,9,'2006-02-14 23:37:09'),(149,3,'2006-02-14 23:37:09'),(150,6,'2006-02-14 23:37:09'),(151,14,'2006-02-14 23:37:09'),(152,3,'2006-02-14 23:37:09'),(153,14,'2006-02-14 23:37:09'),(154,2,'2006-02-14 23:37:09'),(155,13,'2006-02-14 23:37:09'),(156,6,'2006-02-14 23:37:09'),(157,3,'2006-02-14 23:37:09'),(158,12,'2006-02-14 23:37:09'),(159,5,'2006-02-14 23:37:09'),(160,2,'2006-02-14 23:37:09'),(161,12,'2006-02-14 23:37:09'),(162,1,'2006-02-14 23:37:09'),(163,13,'2006-02-14 23:37:09'),(164,6,'2006-02-14 23:37:09'),(165,14,'2006-02-14 23:37:09'),(166,4,'2006-02-14 23:37:09'),(167,16,'2006-02-14 23:37:09'),(168,3,'2006-02-14 23:37:09'),(169,16,'2006-02-14 23:37:09'),(170,9,'2006-02-14 23:37:09'),(171,11,'2006-02-14 23:37:09'),(172,7,'2006-02-14 23:37:09'),(173,7,'2006-02-14 23:37:09'),(174,12,'2006-02-14 23:37:09'),(175,8,'2006-02-14 23:37:09'),(176,15,'2006-02-14 23:37:09'),(177,14,'2006-02-14 23:37:09'),(178,5,'2006-02-14 23:37:09'),(179,7,'2006-02-14 23:37:09'),(180,4,'2006-02-14 23:37:09'),(181,16,'2006-02-14 23:37:09'),(182,5,'2006-02-14 23:37:09'),(183,8,'2006-02-14 23:37:09'),(184,4,'2006-02-14 23:37:09'),(185,9,'2006-02-14 23:37:09'),(186,7,'2006-02-14 23:37:09'),(187,15,'2006-02-14 23:37:09'),(188,5,'2006-02-14 23:37:09'),(189,10,'2006-02-14 23:37:09'),(190,4,'2006-02-14 23:37:09'),(191,3,'2006-02-14 23:37:09'),(192,9,'2006-02-14 23:37:09'),(193,2,'2006-02-14 23:37:09'),(194,1,'2006-02-14 23:37:09'),(195,14,'2006-02-14 23:37:09'),(196,4,'2006-02-14 23:37:09'),(197,15,'2006-02-14 23:37:09'),(198,9,'2006-02-14 23:37:09'),(199,6,'2006-02-14 23:37:09'),(200,10,'2006-02-14 23:37:09'),(201,9,'2006-02-14 23:37:09'),(202,5,'2006-02-14 23:37:09'),(203,14,'2006-02-14 23:37:09'),(204,7,'2006-02-14 23:37:09'),(205,1,'2006-02-14 23:37:09'),(206,6,'2006-02-14 23:37:09'),(207,9,'2006-02-14 23:37:09'),(208,2,'2006-02-14 23:37:09'),(209,7,'2006-02-14 23:37:09'),(210,1,'2006-02-14 23:37:09'),(211,10,'2006-02-14 23:37:09'),(212,1,'2006-02-14 23:37:09'),(213,8,'2006-02-14 23:37:09'),(214,3,'2006-02-14 23:37:09'),(215,10,'2006-02-14 23:37:09'),(216,13,'2006-02-14 23:37:09'),(217,10,'2006-02-14 23:37:09'),(218,7,'2006-02-14 23:37:09'),(219,6,'2006-02-14 23:37:09'),(220,12,'2006-02-14 23:37:09'),(221,6,'2006-02-14 23:37:09'),(222,11,'2006-02-14 23:37:09'),(223,2,'2006-02-14 23:37:09'),(224,16,'2006-02-14 23:37:09'),(225,7,'2006-02-14 23:37:09'),(226,13,'2006-02-14 23:37:09'),(227,10,'2006-02-14 23:37:09'),(228,4,'2006-02-14 23:37:09'),(229,1,'2006-02-14 23:37:09'),(230,7,'2006-02-14 23:37:09'),(231,8,'2006-02-14 23:37:09'),(232,10,'2006-02-14 23:37:09'),(233,16,'2006-02-14 23:37:09'),(234,14,'2006-02-14 23:37:09'),(235,14,'2006-02-14 23:37:09'),(236,10,'2006-02-14 23:37:09'),(237,15,'2006-02-14 23:37:09'),(238,3,'2006-02-14 23:37:09'),(239,2,'2006-02-14 23:37:09'),(240,14,'2006-02-14 23:37:09'),(241,2,'2006-02-14 23:37:09'),(242,5,'2006-02-14 23:37:09'),(243,2,'2006-02-14 23:37:09'),(244,12,'2006-02-14 23:37:09'),(245,2,'2006-02-14 23:37:09'),(246,9,'2006-02-14 23:37:09'),(247,5,'2006-02-14 23:37:09'),(248,6,'2006-02-14 23:37:09'),(249,4,'2006-02-14 23:37:09'),(250,1,'2006-02-14 23:37:09'),(251,13,'2006-02-14 23:37:09'),(252,1,'2006-02-14 23:37:09'),(253,1,'2006-02-14 23:37:09'),(254,15,'2006-02-14 23:37:09'),(255,12,'2006-02-14 23:37:09'),(256,15,'2006-02-14 23:37:09'),(257,16,'2006-02-14 23:37:09'),(258,11,'2006-02-14 23:37:09'),(259,2,'2006-02-14 23:37:09'),(260,15,'2006-02-14 23:37:09'),(261,6,'2006-02-14 23:37:09'),(262,8,'2006-02-14 23:37:09'),(263,15,'2006-02-14 23:37:09'),(264,10,'2006-02-14 23:37:09'),(265,5,'2006-02-14 23:37:09'),(266,4,'2006-02-14 23:37:09'),(267,13,'2006-02-14 23:37:09'),(268,2,'2006-02-14 23:37:09'),(269,8,'2006-02-14 23:37:09'),(270,13,'2006-02-14 23:37:09'),(271,1,'2006-02-14 23:37:09'),(272,7,'2006-02-14 23:37:09'),(273,8,'2006-02-14 23:37:09'),(274,6,'2006-02-14 23:37:09'),(275,11,'2006-02-14 23:37:09'),(276,5,'2006-02-14 23:37:09'),(277,11,'2006-02-14 23:37:09'),(278,12,'2006-02-14 23:37:09'),(279,15,'2006-02-14 23:37:09'),(280,3,'2006-02-14 23:37:09'),(281,10,'2006-02-14 23:37:09'),(282,7,'2006-02-14 23:37:09'),(283,13,'2006-02-14 23:37:09'),(284,12,'2006-02-14 23:37:09'),(285,14,'2006-02-14 23:37:09'),(286,16,'2006-02-14 23:37:09'),(287,1,'2006-02-14 23:37:09'),(288,16,'2006-02-14 23:37:09'),(289,13,'2006-02-14 23:37:09'),(290,9,'2006-02-14 23:37:09'),(291,15,'2006-02-14 23:37:09'),(292,1,'2006-02-14 23:37:09'),(293,15,'2006-02-14 23:37:09'),(294,16,'2006-02-14 23:37:09'),(295,6,'2006-02-14 23:37:09'),(296,14,'2006-02-14 23:37:09'),(297,4,'2006-02-14 23:37:09'),(298,14,'2006-02-14 23:37:09'),(299,16,'2006-02-14 23:37:09'),(300,2,'2006-02-14 23:37:09'),(301,11,'2006-02-14 23:37:09'),(302,10,'2006-02-14 23:37:09'),(303,1,'2006-02-14 23:37:09'),(304,3,'2006-02-14 23:37:09'),(305,13,'2006-02-14 23:37:09'),(306,10,'2006-02-14 23:37:09'),(307,16,'2006-02-14 23:37:09'),(308,5,'2006-02-14 23:37:09'),(309,8,'2006-02-14 23:37:09'),(310,10,'2006-02-14 23:37:09'),(311,9,'2006-02-14 23:37:09'),(312,14,'2006-02-14 23:37:09'),(313,11,'2006-02-14 23:37:09'),(314,2,'2006-02-14 23:37:09'),(315,8,'2006-02-14 23:37:09'),(316,10,'2006-02-14 23:37:09'),(317,5,'2006-02-14 23:37:09'),(318,1,'2006-02-14 23:37:09'),(319,14,'2006-02-14 23:37:09'),(320,13,'2006-02-14 23:37:09'),(321,13,'2006-02-14 23:37:09'),(322,15,'2006-02-14 23:37:09'),(323,15,'2006-02-14 23:37:09'),(324,5,'2006-02-14 23:37:09'),(325,2,'2006-02-14 23:37:09'),(326,2,'2006-02-14 23:37:09'),(327,1,'2006-02-14 23:37:09'),(328,3,'2006-02-14 23:37:09'),(329,1,'2006-02-14 23:37:09'),(330,2,'2006-02-14 23:37:09'),(331,10,'2006-02-14 23:37:09'),(332,5,'2006-02-14 23:37:09'),(333,12,'2006-02-14 23:37:09'),(334,11,'2006-02-14 23:37:09'),(335,5,'2006-02-14 23:37:09'),(336,6,'2006-02-14 23:37:09'),(337,9,'2006-02-14 23:37:09'),(338,14,'2006-02-14 23:37:09'),(339,16,'2006-02-14 23:37:09'),(340,13,'2006-02-14 23:37:09'),(341,4,'2006-02-14 23:37:09'),(342,16,'2006-02-14 23:37:09'),(343,3,'2006-02-14 23:37:09'),(344,3,'2006-02-14 23:37:09'),(345,8,'2006-02-14 23:37:09'),(346,4,'2006-02-14 23:37:09'),(347,16,'2006-02-14 23:37:09'),(348,8,'2006-02-14 23:37:09'),(349,2,'2006-02-14 23:37:09'),(350,14,'2006-02-14 23:37:09'),(351,11,'2006-02-14 23:37:09'),(352,10,'2006-02-14 23:37:09'),(353,9,'2006-02-14 23:37:09'),(354,3,'2006-02-14 23:37:09'),(355,2,'2006-02-14 23:37:09'),(356,3,'2006-02-14 23:37:09'),(357,4,'2006-02-14 23:37:09'),(358,4,'2006-02-14 23:37:09'),(359,8,'2006-02-14 23:37:09'),(360,1,'2006-02-14 23:37:09'),(361,15,'2006-02-14 23:37:09'),(362,10,'2006-02-14 23:37:09'),(363,12,'2006-02-14 23:37:09'),(364,13,'2006-02-14 23:37:09'),(365,5,'2006-02-14 23:37:09'),(366,7,'2006-02-14 23:37:09'),(367,14,'2006-02-14 23:37:09'),(368,7,'2006-02-14 23:37:09'),(369,14,'2006-02-14 23:37:09'),(370,3,'2006-02-14 23:37:09'),(371,1,'2006-02-14 23:37:09'),(372,15,'2006-02-14 23:37:09'),(373,3,'2006-02-14 23:37:09'),(374,14,'2006-02-14 23:37:09'),(375,1,'2006-02-14 23:37:09'),(376,9,'2006-02-14 23:37:09'),(377,8,'2006-02-14 23:37:09'),(378,12,'2006-02-14 23:37:09'),(379,7,'2006-02-14 23:37:09'),(380,9,'2006-02-14 23:37:09'),(381,10,'2006-02-14 23:37:09'),(382,10,'2006-02-14 23:37:09'),(383,15,'2006-02-14 23:37:09'),(384,12,'2006-02-14 23:37:09'),(385,5,'2006-02-14 23:37:09'),(386,16,'2006-02-14 23:37:09'),(387,10,'2006-02-14 23:37:09'),(388,5,'2006-02-14 23:37:09'),(389,15,'2006-02-14 23:37:09'),(390,14,'2006-02-14 23:37:09'),(391,8,'2006-02-14 23:37:09'),(392,3,'2006-02-14 23:37:09'),(393,6,'2006-02-14 23:37:09'),(394,14,'2006-02-14 23:37:09'),(395,1,'2006-02-14 23:37:09'),(396,7,'2006-02-14 23:37:09'),(397,14,'2006-02-14 23:37:09'),(398,12,'2006-02-14 23:37:09'),(399,9,'2006-02-14 23:37:09'),(400,6,'2006-02-14 23:37:09'),(401,7,'2006-02-14 23:37:09'),(402,2,'2006-02-14 23:37:09'),(403,7,'2006-02-14 23:37:09'),(404,5,'2006-02-14 23:37:09'),(405,16,'2006-02-14 23:37:09'),(406,10,'2006-02-14 23:37:09'),(407,6,'2006-02-14 23:37:09'),(408,10,'2006-02-14 23:37:09'),(409,3,'2006-02-14 23:37:09'),(410,5,'2006-02-14 23:37:09'),(411,12,'2006-02-14 23:37:09'),(412,6,'2006-02-14 23:37:09'),(413,5,'2006-02-14 23:37:09'),(414,9,'2006-02-14 23:37:09'),(415,11,'2006-02-14 23:37:09'),(416,9,'2006-02-14 23:37:09'),(417,1,'2006-02-14 23:37:09'),(418,7,'2006-02-14 23:37:09'),(419,8,'2006-02-14 23:37:09'),(420,15,'2006-02-14 23:37:09'),(421,9,'2006-02-14 23:37:09'),(422,14,'2006-02-14 23:37:09'),(423,3,'2006-02-14 23:37:09'),(424,3,'2006-02-14 23:37:09'),(425,4,'2006-02-14 23:37:09'),(426,12,'2006-02-14 23:37:09'),(427,6,'2006-02-14 23:37:09'),(428,8,'2006-02-14 23:37:09'),(429,15,'2006-02-14 23:37:09'),(430,2,'2006-02-14 23:37:09'),(431,9,'2006-02-14 23:37:09'),(432,4,'2006-02-14 23:37:09'),(433,2,'2006-02-14 23:37:09'),(434,16,'2006-02-14 23:37:09'),(435,9,'2006-02-14 23:37:09'),(436,13,'2006-02-14 23:37:09'),(437,8,'2006-02-14 23:37:09'),(438,10,'2006-02-14 23:37:09'),(439,7,'2006-02-14 23:37:09'),(440,9,'2006-02-14 23:37:09'),(441,6,'2006-02-14 23:37:09'),(442,8,'2006-02-14 23:37:09'),(443,5,'2006-02-14 23:37:09'),(444,5,'2006-02-14 23:37:09'),(445,4,'2006-02-14 23:37:09'),(446,15,'2006-02-14 23:37:09'),(447,10,'2006-02-14 23:37:09'),(448,13,'2006-02-14 23:37:09'),(449,14,'2006-02-14 23:37:09'),(450,3,'2006-02-14 23:37:09'),(451,16,'2006-02-14 23:37:09'),(452,9,'2006-02-14 23:37:09'),(453,15,'2006-02-14 23:37:09'),(454,12,'2006-02-14 23:37:09'),(455,9,'2006-02-14 23:37:09'),(456,2,'2006-02-14 23:37:09'),(457,6,'2006-02-14 23:37:09'),(458,8,'2006-02-14 23:37:09'),(459,9,'2006-02-14 23:37:09'),(460,9,'2006-02-14 23:37:09'),(461,2,'2006-02-14 23:37:09'),(462,12,'2006-02-14 23:37:09'),(463,15,'2006-02-14 23:37:09'),(464,2,'2006-02-14 23:37:09'),(465,13,'2006-02-14 23:37:09'),(466,6,'2006-02-14 23:37:09'),(467,9,'2006-02-14 23:37:09'),(468,3,'2006-02-14 23:37:09'),(469,4,'2006-02-14 23:37:09'),(470,2,'2006-02-14 23:37:09'),(471,4,'2006-02-14 23:37:09'),(472,16,'2006-02-14 23:37:09'),(473,7,'2006-02-14 23:37:09'),(474,15,'2006-02-14 23:37:09'),(475,11,'2006-02-14 23:37:09'),(476,8,'2006-02-14 23:37:09'),(477,12,'2006-02-14 23:37:09'),(478,5,'2006-02-14 23:37:09'),(479,8,'2006-02-14 23:37:09'),(480,4,'2006-02-14 23:37:09'),(481,13,'2006-02-14 23:37:09'),(482,4,'2006-02-14 23:37:09'),(483,10,'2006-02-14 23:37:09'),(484,4,'2006-02-14 23:37:09'),(485,3,'2006-02-14 23:37:09'),(486,9,'2006-02-14 23:37:09'),(487,4,'2006-02-14 23:37:09'),(488,15,'2006-02-14 23:37:09'),(489,2,'2006-02-14 23:37:09'),(490,13,'2006-02-14 23:37:09'),(491,3,'2006-02-14 23:37:09'),(492,13,'2006-02-14 23:37:09'),(493,9,'2006-02-14 23:37:09'),(494,11,'2006-02-14 23:37:09'),(495,11,'2006-02-14 23:37:09'),(496,16,'2006-02-14 23:37:09'),(497,6,'2006-02-14 23:37:09'),(498,8,'2006-02-14 23:37:09'),(499,8,'2006-02-14 23:37:09'),(500,9,'2006-02-14 23:37:09'),(501,1,'2006-02-14 23:37:09'),(502,5,'2006-02-14 23:37:09'),(503,15,'2006-02-14 23:37:09'),(504,7,'2006-02-14 23:37:09'),(505,3,'2006-02-14 23:37:09'),(506,11,'2006-02-14 23:37:09'),(507,10,'2006-02-14 23:37:09'),(508,10,'2006-02-14 23:37:09'),(509,3,'2006-02-14 23:37:09'),(510,2,'2006-02-14 23:37:09'),(511,1,'2006-02-14 23:37:09'),(512,4,'2006-02-14 23:37:09'),(513,16,'2006-02-14 23:37:09'),(514,7,'2006-02-14 23:37:09'),(515,3,'2006-02-14 23:37:09'),(516,12,'2006-02-14 23:37:09'),(517,15,'2006-02-14 23:37:09'),(518,16,'2006-02-14 23:37:09'),(519,15,'2006-02-14 23:37:09'),(520,14,'2006-02-14 23:37:09'),(521,7,'2006-02-14 23:37:09'),(522,5,'2006-02-14 23:37:09'),(523,4,'2006-02-14 23:37:09'),(524,5,'2006-02-14 23:37:09'),(525,4,'2006-02-14 23:37:09'),(526,16,'2006-02-14 23:37:09'),(527,11,'2006-02-14 23:37:09'),(528,8,'2006-02-14 23:37:09'),(529,5,'2006-02-14 23:37:09'),(530,1,'2006-02-14 23:37:09'),(531,9,'2006-02-14 23:37:09'),(532,15,'2006-02-14 23:37:09'),(533,9,'2006-02-14 23:37:09'),(534,8,'2006-02-14 23:37:09'),(535,11,'2006-02-14 23:37:09'),(536,4,'2006-02-14 23:37:09'),(537,4,'2006-02-14 23:37:09'),(538,13,'2006-02-14 23:37:09'),(539,7,'2006-02-14 23:37:09'),(540,12,'2006-02-14 23:37:09'),(541,2,'2006-02-14 23:37:09'),(542,1,'2006-02-14 23:37:09'),(543,16,'2006-02-14 23:37:09'),(544,6,'2006-02-14 23:37:09'),(545,9,'2006-02-14 23:37:09'),(546,10,'2006-02-14 23:37:09'),(547,3,'2006-02-14 23:37:09'),(548,4,'2006-02-14 23:37:09'),(549,1,'2006-02-14 23:37:09'),(550,8,'2006-02-14 23:37:09'),(551,13,'2006-02-14 23:37:09'),(552,6,'2006-02-14 23:37:09'),(553,3,'2006-02-14 23:37:09'),(554,4,'2006-02-14 23:37:09'),(555,5,'2006-02-14 23:37:09'),(556,10,'2006-02-14 23:37:09'),(557,8,'2006-02-14 23:37:09'),(558,13,'2006-02-14 23:37:09'),(559,14,'2006-02-14 23:37:09'),(560,10,'2006-02-14 23:37:09'),(561,13,'2006-02-14 23:37:09'),(562,12,'2006-02-14 23:37:09'),(563,10,'2006-02-14 23:37:09'),(564,2,'2006-02-14 23:37:09'),(565,9,'2006-02-14 23:37:09'),(566,9,'2006-02-14 23:37:09'),(567,9,'2006-02-14 23:37:09'),(568,5,'2006-02-14 23:37:09'),(569,2,'2006-02-14 23:37:09'),(570,15,'2006-02-14 23:37:09'),(571,6,'2006-02-14 23:37:09'),(572,14,'2006-02-14 23:37:09'),(573,3,'2006-02-14 23:37:09'),(574,1,'2006-02-14 23:37:09'),(575,6,'2006-02-14 23:37:09'),(576,6,'2006-02-14 23:37:09'),(577,15,'2006-02-14 23:37:09'),(578,4,'2006-02-14 23:37:09'),(579,1,'2006-02-14 23:37:09'),(580,13,'2006-02-14 23:37:09'),(581,12,'2006-02-14 23:37:09'),(582,2,'2006-02-14 23:37:09'),(583,2,'2006-02-14 23:37:09'),(584,9,'2006-02-14 23:37:09'),(585,7,'2006-02-14 23:37:09'),(586,1,'2006-02-14 23:37:09'),(587,6,'2006-02-14 23:37:09'),(588,3,'2006-02-14 23:37:09'),(589,6,'2006-02-14 23:37:09'),(590,13,'2006-02-14 23:37:09'),(591,10,'2006-02-14 23:37:09'),(592,12,'2006-02-14 23:37:09'),(593,11,'2006-02-14 23:37:09'),(594,1,'2006-02-14 23:37:09'),(595,9,'2006-02-14 23:37:09'),(596,10,'2006-02-14 23:37:09'),(597,10,'2006-02-14 23:37:09'),(598,15,'2006-02-14 23:37:09'),(599,15,'2006-02-14 23:37:09'),(600,11,'2006-02-14 23:37:09'),(601,16,'2006-02-14 23:37:09'),(602,14,'2006-02-14 23:37:09'),(603,8,'2006-02-14 23:37:09'),(604,5,'2006-02-14 23:37:09'),(605,9,'2006-02-14 23:37:09'),(606,15,'2006-02-14 23:37:09'),(607,9,'2006-02-14 23:37:09'),(608,3,'2006-02-14 23:37:09'),(609,16,'2006-02-14 23:37:09'),(610,8,'2006-02-14 23:37:09'),(611,4,'2006-02-14 23:37:09'),(612,15,'2006-02-14 23:37:09'),(613,5,'2006-02-14 23:37:09'),(614,10,'2006-02-14 23:37:09'),(615,2,'2006-02-14 23:37:09'),(616,6,'2006-02-14 23:37:09'),(617,8,'2006-02-14 23:37:09'),(618,7,'2006-02-14 23:37:09'),(619,15,'2006-02-14 23:37:09'),(620,14,'2006-02-14 23:37:09'),(621,8,'2006-02-14 23:37:09'),(622,6,'2006-02-14 23:37:09'),(623,9,'2006-02-14 23:37:09'),(624,10,'2006-02-14 23:37:09'),(625,14,'2006-02-14 23:37:09'),(626,3,'2006-02-14 23:37:09'),(627,6,'2006-02-14 23:37:09'),(628,15,'2006-02-14 23:37:09'),(629,6,'2006-02-14 23:37:09'),(630,7,'2006-02-14 23:37:09'),(631,15,'2006-02-14 23:37:09'),(632,13,'2006-02-14 23:37:09'),(633,4,'2006-02-14 23:37:09'),(634,8,'2006-02-14 23:37:09'),(635,13,'2006-02-14 23:37:09'),(636,12,'2006-02-14 23:37:09'),(637,14,'2006-02-14 23:37:09'),(638,5,'2006-02-14 23:37:09'),(639,8,'2006-02-14 23:37:09'),(640,9,'2006-02-14 23:37:09'),(641,9,'2006-02-14 23:37:09'),(642,16,'2006-02-14 23:37:09'),(643,7,'2006-02-14 23:37:09'),(644,2,'2006-02-14 23:37:09'),(645,16,'2006-02-14 23:37:09'),(646,10,'2006-02-14 23:37:09'),(647,12,'2006-02-14 23:37:09'),(648,16,'2006-02-14 23:37:09'),(649,2,'2006-02-14 23:37:09'),(650,6,'2006-02-14 23:37:09'),(651,2,'2006-02-14 23:37:09'),(652,4,'2006-02-14 23:37:09'),(653,11,'2006-02-14 23:37:09'),(654,10,'2006-02-14 23:37:09'),(655,14,'2006-02-14 23:37:09'),(656,16,'2006-02-14 23:37:09'),(657,5,'2006-02-14 23:37:09'),(658,11,'2006-02-14 23:37:09'),(659,1,'2006-02-14 23:37:09'),(660,5,'2006-02-14 23:37:09'),(661,9,'2006-02-14 23:37:09'),(662,7,'2006-02-14 23:37:09'),(663,4,'2006-02-14 23:37:09'),(664,1,'2006-02-14 23:37:09'),(665,11,'2006-02-14 23:37:09'),(666,7,'2006-02-14 23:37:09'),(667,15,'2006-02-14 23:37:09'),(668,15,'2006-02-14 23:37:09'),(669,9,'2006-02-14 23:37:09'),(670,6,'2006-02-14 23:37:09'),(671,15,'2006-02-14 23:37:09'),(672,5,'2006-02-14 23:37:09'),(673,12,'2006-02-14 23:37:09'),(674,9,'2006-02-14 23:37:09'),(675,13,'2006-02-14 23:37:09'),(676,15,'2006-02-14 23:37:09'),(677,13,'2006-02-14 23:37:09'),(678,15,'2006-02-14 23:37:09'),(679,8,'2006-02-14 23:37:09'),(680,5,'2006-02-14 23:37:09'),(681,15,'2006-02-14 23:37:09'),(682,8,'2006-02-14 23:37:09'),(683,7,'2006-02-14 23:37:09'),(684,10,'2006-02-14 23:37:09'),(685,13,'2006-02-14 23:37:09'),(686,13,'2006-02-14 23:37:09'),(687,6,'2006-02-14 23:37:09'),(688,3,'2006-02-14 23:37:09'),(689,9,'2006-02-14 23:37:09'),(690,2,'2006-02-14 23:37:09'),(691,15,'2006-02-14 23:37:09'),(692,2,'2006-02-14 23:37:09'),(693,2,'2006-02-14 23:37:09'),(694,4,'2006-02-14 23:37:09'),(695,8,'2006-02-14 23:37:09'),(696,2,'2006-02-14 23:37:09'),(697,1,'2006-02-14 23:37:09'),(698,6,'2006-02-14 23:37:09'),(699,10,'2006-02-14 23:37:09'),(700,8,'2006-02-14 23:37:09'),(701,10,'2006-02-14 23:37:09'),(702,11,'2006-02-14 23:37:09'),(703,2,'2006-02-14 23:37:09'),(704,5,'2006-02-14 23:37:09'),(705,9,'2006-02-14 23:37:09'),(706,7,'2006-02-14 23:37:09'),(707,1,'2006-02-14 23:37:09'),(708,6,'2006-02-14 23:37:09'),(709,7,'2006-02-14 23:37:09'),(710,8,'2006-02-14 23:37:09'),(711,14,'2006-02-14 23:37:09'),(712,6,'2006-02-14 23:37:09'),(713,6,'2006-02-14 23:37:09'),(714,14,'2006-02-14 23:37:09'),(715,8,'2006-02-14 23:37:09'),(716,11,'2006-02-14 23:37:09'),(717,1,'2006-02-14 23:37:09'),(718,12,'2006-02-14 23:37:09'),(719,15,'2006-02-14 23:37:09'),(720,13,'2006-02-14 23:37:09'),(721,12,'2006-02-14 23:37:09'),(722,11,'2006-02-14 23:37:09'),(723,14,'2006-02-14 23:37:09'),(724,8,'2006-02-14 23:37:09'),(725,4,'2006-02-14 23:37:09'),(726,9,'2006-02-14 23:37:09'),(727,8,'2006-02-14 23:37:09'),(728,7,'2006-02-14 23:37:09'),(729,15,'2006-02-14 23:37:09'),(730,13,'2006-02-14 23:37:09'),(731,4,'2006-02-14 23:37:09'),(732,1,'2006-02-14 23:37:09'),(733,15,'2006-02-14 23:37:09'),(734,6,'2006-02-14 23:37:09'),(735,3,'2006-02-14 23:37:09'),(736,8,'2006-02-14 23:37:09'),(737,11,'2006-02-14 23:37:09'),(738,9,'2006-02-14 23:37:09'),(739,7,'2006-02-14 23:37:09'),(740,11,'2006-02-14 23:37:09'),(741,12,'2006-02-14 23:37:09'),(742,10,'2006-02-14 23:37:09'),(743,2,'2006-02-14 23:37:09'),(744,4,'2006-02-14 23:37:09'),(745,15,'2006-02-14 23:37:09'),(746,10,'2006-02-14 23:37:09'),(747,10,'2006-02-14 23:37:09'),(748,1,'2006-02-14 23:37:09'),(749,11,'2006-02-14 23:37:09'),(750,13,'2006-02-14 23:37:09'),(751,13,'2006-02-14 23:37:09'),(752,12,'2006-02-14 23:37:09'),(753,8,'2006-02-14 23:37:09'),(754,5,'2006-02-14 23:37:09'),(755,3,'2006-02-14 23:37:09'),(756,5,'2006-02-14 23:37:09'),(757,6,'2006-02-14 23:37:09'),(758,7,'2006-02-14 23:37:09'),(759,13,'2006-02-14 23:37:09'),(760,13,'2006-02-14 23:37:09'),(761,3,'2006-02-14 23:37:09'),(762,10,'2006-02-14 23:37:09'),(763,15,'2006-02-14 23:37:09'),(764,15,'2006-02-14 23:37:09'),(765,5,'2006-02-14 23:37:09'),(766,7,'2006-02-14 23:37:09'),(767,12,'2006-02-14 23:37:09'),(768,3,'2006-02-14 23:37:09'),(769,9,'2006-02-14 23:37:09'),(770,9,'2006-02-14 23:37:09'),(771,7,'2006-02-14 23:37:09'),(772,7,'2006-02-14 23:37:09'),(773,15,'2006-02-14 23:37:09'),(774,5,'2006-02-14 23:37:09'),(775,7,'2006-02-14 23:37:09'),(776,6,'2006-02-14 23:37:09'),(777,15,'2006-02-14 23:37:09'),(778,8,'2006-02-14 23:37:09'),(779,15,'2006-02-14 23:37:09'),(780,8,'2006-02-14 23:37:09'),(781,10,'2006-02-14 23:37:09'),(782,15,'2006-02-14 23:37:09'),(783,16,'2006-02-14 23:37:09'),(784,16,'2006-02-14 23:37:09'),(785,16,'2006-02-14 23:37:09'),(786,3,'2006-02-14 23:37:09'),(787,16,'2006-02-14 23:37:09'),(788,6,'2006-02-14 23:37:09'),(789,9,'2006-02-14 23:37:09'),(790,7,'2006-02-14 23:37:09'),(791,6,'2006-02-14 23:37:09'),(792,9,'2006-02-14 23:37:09'),(793,1,'2006-02-14 23:37:09'),(794,1,'2006-02-14 23:37:09'),(795,8,'2006-02-14 23:37:09'),(796,15,'2006-02-14 23:37:09'),(797,12,'2006-02-14 23:37:09'),(798,14,'2006-02-14 23:37:09'),(799,11,'2006-02-14 23:37:09'),(800,11,'2006-02-14 23:37:09'),(801,3,'2006-02-14 23:37:09'),(802,1,'2006-02-14 23:37:09'),(803,7,'2006-02-14 23:37:09'),(804,11,'2006-02-14 23:37:09'),(805,2,'2006-02-14 23:37:09'),(806,13,'2006-02-14 23:37:09'),(807,10,'2006-02-14 23:37:09'),(808,4,'2006-02-14 23:37:09'),(809,15,'2006-02-14 23:37:09'),(810,8,'2006-02-14 23:37:09'),(811,16,'2006-02-14 23:37:09'),(812,6,'2006-02-14 23:37:09'),(813,15,'2006-02-14 23:37:09'),(814,5,'2006-02-14 23:37:09'),(815,4,'2006-02-14 23:37:09'),(816,2,'2006-02-14 23:37:09'),(817,14,'2006-02-14 23:37:09'),(818,7,'2006-02-14 23:37:09'),(819,12,'2006-02-14 23:37:09'),(820,2,'2006-02-14 23:37:09'),(821,9,'2006-02-14 23:37:09'),(822,8,'2006-02-14 23:37:09'),(823,1,'2006-02-14 23:37:09'),(824,8,'2006-02-14 23:37:09'),(825,1,'2006-02-14 23:37:09'),(826,16,'2006-02-14 23:37:09'),(827,7,'2006-02-14 23:37:09'),(828,4,'2006-02-14 23:37:09'),(829,8,'2006-02-14 23:37:09'),(830,11,'2006-02-14 23:37:09'),(831,14,'2006-02-14 23:37:09'),(832,8,'2006-02-14 23:37:09'),(833,3,'2006-02-14 23:37:09'),(834,6,'2006-02-14 23:37:09'),(835,10,'2006-02-14 23:37:09'),(836,15,'2006-02-14 23:37:09'),(837,5,'2006-02-14 23:37:09'),(838,1,'2006-02-14 23:37:09'),(839,14,'2006-02-14 23:37:09'),(840,10,'2006-02-14 23:37:09'),(841,15,'2006-02-14 23:37:09'),(842,10,'2006-02-14 23:37:09'),(843,4,'2006-02-14 23:37:09'),(844,15,'2006-02-14 23:37:09'),(845,9,'2006-02-14 23:37:09'),(846,13,'2006-02-14 23:37:09'),(847,13,'2006-02-14 23:37:09'),(848,16,'2006-02-14 23:37:09'),(849,2,'2006-02-14 23:37:09'),(850,1,'2006-02-14 23:37:09'),(851,15,'2006-02-14 23:37:09'),(852,3,'2006-02-14 23:37:09'),(853,3,'2006-02-14 23:37:09'),(854,11,'2006-02-14 23:37:09'),(855,6,'2006-02-14 23:37:09'),(856,11,'2006-02-14 23:37:09'),(857,5,'2006-02-14 23:37:09'),(858,5,'2006-02-14 23:37:09'),(859,2,'2006-02-14 23:37:09'),(860,14,'2006-02-14 23:37:09'),(861,10,'2006-02-14 23:37:09'),(862,4,'2006-02-14 23:37:09'),(863,14,'2006-02-14 23:37:09'),(864,3,'2006-02-14 23:37:09'),(865,2,'2006-02-14 23:37:09'),(866,8,'2006-02-14 23:37:09'),(867,8,'2006-02-14 23:37:09'),(868,16,'2006-02-14 23:37:09'),(869,1,'2006-02-14 23:37:09'),(870,11,'2006-02-14 23:37:09'),(871,5,'2006-02-14 23:37:09'),(872,16,'2006-02-14 23:37:09'),(873,3,'2006-02-14 23:37:09'),(874,4,'2006-02-14 23:37:09'),(875,15,'2006-02-14 23:37:09'),(876,11,'2006-02-14 23:37:09'),(877,12,'2006-02-14 23:37:09'),(878,16,'2006-02-14 23:37:09'),(879,12,'2006-02-14 23:37:09'),(880,2,'2006-02-14 23:37:09'),(881,11,'2006-02-14 23:37:09'),(882,7,'2006-02-14 23:37:09'),(883,3,'2006-02-14 23:37:09'),(884,12,'2006-02-14 23:37:09'),(885,11,'2006-02-14 23:37:09'),(886,2,'2006-02-14 23:37:09'),(887,2,'2006-02-14 23:37:09'),(888,6,'2006-02-14 23:37:09'),(889,3,'2006-02-14 23:37:09'),(890,15,'2006-02-14 23:37:09'),(891,4,'2006-02-14 23:37:09'),(892,2,'2006-02-14 23:37:09'),(893,14,'2006-02-14 23:37:09'),(894,16,'2006-02-14 23:37:09'),(895,4,'2006-02-14 23:37:09'),(896,3,'2006-02-14 23:37:09'),(897,7,'2006-02-14 23:37:09'),(898,15,'2006-02-14 23:37:09'),(899,4,'2006-02-14 23:37:09'),(900,9,'2006-02-14 23:37:09'),(901,2,'2006-02-14 23:37:09'),(902,15,'2006-02-14 23:37:09'),(903,16,'2006-02-14 23:37:09'),(904,11,'2006-02-14 23:37:09'),(905,5,'2006-02-14 23:37:09'),(906,5,'2006-02-14 23:37:09'),(907,7,'2006-02-14 23:37:09'),(908,9,'2006-02-14 23:37:09'),(909,11,'2006-02-14 23:37:09'),(910,7,'2006-02-14 23:37:09'),(911,1,'2006-02-14 23:37:09'),(912,14,'2006-02-14 23:37:09'),(913,13,'2006-02-14 23:37:09'),(914,16,'2006-02-14 23:37:09'),(915,1,'2006-02-14 23:37:09'),(916,2,'2006-02-14 23:37:09'),(917,15,'2006-02-14 23:37:09'),(918,3,'2006-02-14 23:37:09'),(919,10,'2006-02-14 23:37:09'),(920,13,'2006-02-14 23:37:09'),(921,12,'2006-02-14 23:37:09'),(922,11,'2006-02-14 23:37:09'),(923,7,'2006-02-14 23:37:09'),(924,14,'2006-02-14 23:37:09'),(925,6,'2006-02-14 23:37:09'),(926,6,'2006-02-14 23:37:09'),(927,1,'2006-02-14 23:37:09'),(928,3,'2006-02-14 23:37:09'),(929,9,'2006-02-14 23:37:09'),(930,14,'2006-02-14 23:37:09'),(931,16,'2006-02-14 23:37:09'),(932,5,'2006-02-14 23:37:09'),(933,13,'2006-02-14 23:37:09'),(934,10,'2006-02-14 23:37:09'),(935,13,'2006-02-14 23:37:09'),(936,12,'2006-02-14 23:37:09'),(937,13,'2006-02-14 23:37:09'),(938,5,'2006-02-14 23:37:09'),(939,5,'2006-02-14 23:37:09'),(940,15,'2006-02-14 23:37:09'),(941,10,'2006-02-14 23:37:09'),(942,7,'2006-02-14 23:37:09'),(943,6,'2006-02-14 23:37:09'),(944,7,'2006-02-14 23:37:09'),(945,6,'2006-02-14 23:37:09'),(946,8,'2006-02-14 23:37:09'),(947,9,'2006-02-14 23:37:09'),(948,13,'2006-02-14 23:37:09'),(949,10,'2006-02-14 23:37:09'),(950,4,'2006-02-14 23:37:09'),(951,4,'2006-02-14 23:37:09'),(952,6,'2006-02-14 23:37:09'),(953,2,'2006-02-14 23:37:09'),(954,13,'2006-02-14 23:37:09'),(955,3,'2006-02-14 23:37:09'),(956,10,'2006-02-14 23:37:09'),(957,9,'2006-02-14 23:37:09'),(958,7,'2006-02-14 23:37:09'),(959,3,'2006-02-14 23:37:09'),(960,6,'2006-02-14 23:37:09'),(961,9,'2006-02-14 23:37:09'),(962,4,'2006-02-14 23:37:09'),(963,2,'2006-02-14 23:37:09'),(964,1,'2006-02-14 23:37:09'),(965,11,'2006-02-14 23:37:09'),(966,6,'2006-02-14 23:37:09'),(967,14,'2006-02-14 23:37:09'),(968,1,'2006-02-14 23:37:09'),(969,7,'2006-02-14 23:37:09'),(970,4,'2006-02-14 23:37:09'),(971,9,'2006-02-14 23:37:09'),(972,14,'2006-02-14 23:37:09'),(973,6,'2006-02-14 23:37:09'),(974,13,'2006-02-14 23:37:09'),(975,8,'2006-02-14 23:37:09'),(976,10,'2006-02-14 23:37:09'),(977,16,'2006-02-14 23:37:09'),(978,5,'2006-02-14 23:37:09'),(979,7,'2006-02-14 23:37:09'),(980,12,'2006-02-14 23:37:09'),(981,16,'2006-02-14 23:37:09'),(982,1,'2006-02-14 23:37:09'),(983,12,'2006-02-14 23:37:09'),(984,9,'2006-02-14 23:37:09'),(985,14,'2006-02-14 23:37:09'),(986,2,'2006-02-14 23:37:09'),(987,12,'2006-02-14 23:37:09'),(988,16,'2006-02-14 23:37:09'),(989,16,'2006-02-14 23:37:09'),(990,11,'2006-02-14 23:37:09'),(991,1,'2006-02-14 23:37:09'),(992,6,'2006-02-14 23:37:09'),(993,3,'2006-02-14 23:37:09'),(994,13,'2006-02-14 23:37:09'),(995,11,'2006-02-14 23:37:09'),(996,6,'2006-02-14 23:37:09'),(997,12,'2006-02-14 23:37:09'),(998,11,'2006-02-14 23:37:09'),(999,3,'2006-02-14 23:37:09'),(1000,5,'2006-02-14 23:37:09');
/*!40000 ALTER TABLE `film_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-20 11:15:09
