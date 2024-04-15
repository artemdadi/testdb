-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: testdb
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
-- Table structure for table `nl_houses`
--

DROP TABLE IF EXISTS `nl_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nl_houses` (
  `ID_NL_HOUSES` int NOT NULL AUTO_INCREMENT,
  `NL_HOUSES_SHORT` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID_NL_HOUSES`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nl_houses`
--

LOCK TABLES `nl_houses` WRITE;
/*!40000 ALTER TABLE `nl_houses` DISABLE KEYS */;
INSERT INTO `nl_houses` VALUES (1,'Частный дом'),(2,'Квартира'),(3,'Коттедж');
/*!40000 ALTER TABLE `nl_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nl_log`
--

DROP TABLE IF EXISTS `nl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nl_log` (
  `ID_NL_LOG` int NOT NULL AUTO_INCREMENT,
  `NL_LOG_DATE` date NOT NULL,
  `NL_LOG_TIME` time NOT NULL,
  `NL_LOG_IP` varchar(255) NOT NULL,
  `NL_LOG_IUD` varchar(255) NOT NULL,
  `NL_LOG_TABLE_NAME` varchar(255) NOT NULL,
  `ID_NL_USER` int NOT NULL,
  PRIMARY KEY (`ID_NL_LOG`) USING BTREE,
  KEY `ID_NL_USER` (`ID_NL_USER`) USING BTREE,
  CONSTRAINT `NL_LOG_IBFK_1` FOREIGN KEY (`ID_NL_USER`) REFERENCES `nl_user` (`ID_NL_USER`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nl_log`
--

LOCK TABLES `nl_log` WRITE;
/*!40000 ALTER TABLE `nl_log` DISABLE KEYS */;
INSERT INTO `nl_log` VALUES (1,'2024-04-14','11:03:59','::1','edit','NL_PROP_RESALE',1),(2,'2024-04-14','11:05:07','::1','add','NL_HOUSES',1),(3,'2024-04-14','11:07:25','::1','add','NL_VIEW',1),(4,'2024-04-14','11:07:34','::1','add','NL_MATERIAL',1),(5,'2024-04-14','11:14:29','::1','add','NL_PROP_RESALE',1),(6,'2024-04-14','11:16:27','::1','add','NL_PROP_RESALE',1),(7,'2024-04-14','11:16:51','::1','add','NL_PROP_RESALE',1),(8,'2024-04-14','11:18:05','::1','add','NL_PROP_RESALE',1),(9,'2024-04-14','22:31:55','::1','edit','NL_PROP_RESALE',1),(10,'2024-04-14','22:33:06','::1','edit','NL_PROP_RESALE',1),(11,'2024-04-14','22:42:58','::1','edit','NL_PROP_RESALE',1),(12,'2024-04-14','22:52:11','::1','edit','NL_PROP_RESALE',1),(13,'2024-04-14','22:53:12','::1','edit','NL_PROP_RESALE',1),(14,'2024-04-14','22:53:47','::1','edit','NL_PROP_RESALE',1),(15,'2024-04-14','22:58:35','::1','edit','NL_PROP_RESALE',1),(16,'2024-04-14','23:09:13','::1','edit','NL_PROP_RESALE',1),(17,'2024-04-14','23:09:44','::1','edit','NL_PROP_RESALE',1),(18,'2024-04-14','23:17:54','::1','edit','NL_PROP_RESALE',1),(19,'2024-04-14','23:19:33','::1','edit','NL_PROP_RESALE',1),(20,'2024-04-14','23:20:40','::1','edit','NL_PROP_RESALE',1),(21,'2024-04-14','23:28:41','::1','edit','NL_PROP_RESALE',1),(22,'2024-04-14','23:31:02','::1','edit','NL_PROP_RESALE',1),(23,'2024-04-14','23:33:39','::1','edit','NL_PROP_RESALE',1),(24,'2024-04-15','11:24:43','::1','edit','NL_PROP_RESALE',1),(25,'2024-04-15','11:25:52','::1','edit','NL_PROP_RESALE',1),(26,'2024-04-15','12:25:19','::1','edit','NL_PROP_RESALE',1),(27,'2024-04-15','12:26:12','::1','edit','NL_PROP_RESALE',1),(28,'2024-04-15','12:26:53','::1','edit','NL_PROP_RESALE',1);
/*!40000 ALTER TABLE `nl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nl_log_detail`
--

DROP TABLE IF EXISTS `nl_log_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nl_log_detail` (
  `ID_NL_LOG_DETAIL` int NOT NULL AUTO_INCREMENT,
  `ID_NL_LOG` int NOT NULL,
  `NL_LOG_DETAIL_OLD` varchar(2550) NOT NULL,
  `NL_LOG_DETAIL_NEW` varchar(2550) NOT NULL,
  `NL_LOG_DETAIL_FIELD` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_NL_LOG_DETAIL`) USING BTREE,
  KEY `ID_NL_LOG` (`ID_NL_LOG`) USING BTREE,
  CONSTRAINT `NL_LOG_DETAIL_IBFK_1` FOREIGN KEY (`ID_NL_LOG`) REFERENCES `nl_log` (`ID_NL_LOG`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nl_log_detail`
--

LOCK TABLES `nl_log_detail` WRITE;
/*!40000 ALTER TABLE `nl_log_detail` DISABLE KEYS */;
INSERT INTO `nl_log_detail` VALUES (1,1,'3','3','ID_NL_PROP_RESALE'),(2,1,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(3,1,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(4,1,'1','1','NL_PROP_RESALE_FLOOR'),(5,1,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(6,1,'','','NL_PROP_RESALE_PHONE_OWNER'),(7,1,'','1','ID_NL_VIEW'),(8,1,'','1','ID_NL_HOUSES'),(9,1,'','2','ID_NL_MATERIAL'),(10,1,'1','1','ID_NL_USER'),(11,1,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(12,1,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(13,1,'%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%A5%D0%BE%D1%80%D0%BE%D1%88%D0%B0%D1%8F%20%D0%BA%D0%B2%D0%B0%D1%80%D1%82%D0%B8%D1%80%D0%B0%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%A5%D0%BE%D1%80%D0%BE%D1%88%D0%B0%D1%8F%20%D0%BA%D0%B2%D0%B0%D1%80%D1%82%D0%B8%D1%80%D0%B0%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(14,2,'','3','ID_NL_HOUSES'),(15,2,'','Коттедж','NL_HOUSES_SHORT'),(16,3,'','3','ID_NL_VIEW'),(17,3,'','В пустыню','NL_VIEW_SHORT'),(18,4,'','3','ID_NL_MATERIAL'),(19,4,'','Камень','NL_MATERIAL_SHORT'),(20,5,'','5','ID_NL_PROP_RESALE'),(21,5,'','234','NL_PROP_RESALE_AREA_FULL'),(22,5,'','Россия, Краснодарский край, Краснодар, Российская улица ','NL_PROP_RESALE_ADDRESS'),(23,5,'','2','NL_PROP_RESALE_FLOOR'),(24,5,'','2112351','NL_PROP_RESALE_COST_TOTAL'),(25,5,'','','NL_PROP_RESALE_PHONE_OWNER'),(26,5,'','3','ID_NL_VIEW'),(27,5,'','2','ID_NL_HOUSES'),(28,5,'','2','ID_NL_MATERIAL'),(29,5,'','1','ID_NL_USER'),(30,5,'','+79282601474','NL_PROP_RESALE_PHONE'),(31,5,'','[\"/img/prop_resale/PHOTO_URLS_5_240414_111408.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(32,5,'','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D0%A4%D0%AB%D0%92%22%7D%2C%7B%22attributes%22%3A%7B%22italic%22%3Atrue%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D0%B0%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22italic%22%3Atrue%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D0%B0%D1%8B%D0%B0%D0%B2%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22ordered%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D0%B0%D1%8B%D0%B2%D1%84%D0%BF%D1%80%D1%84%D0%B2%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22bold%22%3Atrue%2C%22script%22%3A%22super%22%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D0%B0%D1%8B%D1%84%D0%B2%D0%B0%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22ordered%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(33,6,'','5','ID_NL_PROP_RESALE'),(34,6,'','7283','NL_PROP_RESALE_AREA_FULL'),(35,6,'','Россия, Краснодарский край, Краснодар, Московская улица ','NL_PROP_RESALE_ADDRESS'),(36,6,'','1','NL_PROP_RESALE_FLOOR'),(37,6,'','35235234','NL_PROP_RESALE_COST_TOTAL'),(38,6,'','','NL_PROP_RESALE_PHONE_OWNER'),(39,6,'','1','ID_NL_VIEW'),(40,6,'','2','ID_NL_HOUSES'),(41,6,'','1','ID_NL_MATERIAL'),(42,6,'','1','ID_NL_USER'),(43,6,'','+79282601474','NL_PROP_RESALE_PHONE'),(44,6,'','[\"/img/prop_resale/PHOTO_URLS_5_240414_111557.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(45,6,'','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22strike%22%3Atrue%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D1%84%D0%B2%D1%8B%D0%B0%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22background%22%3A%22%23e60000%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%221234234123412314%22%7D%2C%7B%22attributes%22%3A%7B%22header%22%3A1%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(46,7,'','5','ID_NL_PROP_RESALE'),(47,7,'','728','NL_PROP_RESALE_AREA_FULL'),(48,7,'','Россия, Краснодарский край, Краснодар, Московская улица ','NL_PROP_RESALE_ADDRESS'),(49,7,'','1','NL_PROP_RESALE_FLOOR'),(50,7,'','35235234','NL_PROP_RESALE_COST_TOTAL'),(51,7,'','','NL_PROP_RESALE_PHONE_OWNER'),(52,7,'','1','ID_NL_VIEW'),(53,7,'','2','ID_NL_HOUSES'),(54,7,'','1','ID_NL_MATERIAL'),(55,7,'','1','ID_NL_USER'),(56,7,'','+79282601474','NL_PROP_RESALE_PHONE'),(57,7,'','[\"/img/prop_resale/PHOTO_URLS_5_240414_111557.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(58,7,'','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22strike%22%3Atrue%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D1%84%D0%B2%D1%8B%D0%B0%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22background%22%3A%22%23e60000%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%221234234123412314%22%7D%2C%7B%22attributes%22%3A%7B%22header%22%3A1%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(59,8,'','5','ID_NL_PROP_RESALE'),(60,8,'','728','NL_PROP_RESALE_AREA_FULL'),(61,8,'','Россия, Краснодарский край, Краснодар, Московская улица ','NL_PROP_RESALE_ADDRESS'),(62,8,'','1','NL_PROP_RESALE_FLOOR'),(63,8,'','35235234','NL_PROP_RESALE_COST_TOTAL'),(64,8,'','','NL_PROP_RESALE_PHONE_OWNER'),(65,8,'','1','ID_NL_VIEW'),(66,8,'','2','ID_NL_HOUSES'),(67,8,'','1','ID_NL_MATERIAL'),(68,8,'','1','ID_NL_USER'),(69,8,'','+79282601474','NL_PROP_RESALE_PHONE'),(70,8,'','[\"/img/prop_resale/PHOTO_URLS_5_240414_111557.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(71,8,'','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22strike%22%3Atrue%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D1%84%D0%B2%D1%8B%D0%B0%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22background%22%3A%22%23e60000%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%221234234123412314%22%7D%2C%7B%22attributes%22%3A%7B%22header%22%3A1%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(72,9,'3','3','ID_NL_PROP_RESALE'),(73,9,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(74,9,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(75,9,'1','1','NL_PROP_RESALE_FLOOR'),(76,9,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(77,9,'','','NL_PROP_RESALE_PHONE_OWNER'),(78,9,'1','1','ID_NL_VIEW'),(79,9,'1','1','ID_NL_HOUSES'),(80,9,'2','2','ID_NL_MATERIAL'),(81,9,'1','1','ID_NL_USER'),(82,9,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(83,9,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(84,9,'%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%A5%D0%BE%D1%80%D0%BE%D1%88%D0%B0%D1%8F%20%D0%BA%D0%B2%D0%B0%D1%80%D1%82%D0%B8%D1%80%D0%B0%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22123%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(85,10,'3','3','ID_NL_PROP_RESALE'),(86,10,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(87,10,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(88,10,'1','1','NL_PROP_RESALE_FLOOR'),(89,10,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(90,10,'','','NL_PROP_RESALE_PHONE_OWNER'),(91,10,'1','1','ID_NL_VIEW'),(92,10,'1','1','ID_NL_HOUSES'),(93,10,'2','2','ID_NL_MATERIAL'),(94,10,'1','1','ID_NL_USER'),(95,10,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(96,10,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(97,10,'%7B%22ops%22%3A%5B%7B%22insert%22%3A%22123%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22123afsdf%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(98,11,'3','3','ID_NL_PROP_RESALE'),(99,11,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(100,11,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(101,11,'1','1','NL_PROP_RESALE_FLOOR'),(102,11,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(103,11,'','','NL_PROP_RESALE_PHONE_OWNER'),(104,11,'1','1','ID_NL_VIEW'),(105,11,'1','1','ID_NL_HOUSES'),(106,11,'2','2','ID_NL_MATERIAL'),(107,11,'1','1','ID_NL_USER'),(108,11,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(109,11,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(110,11,'%7B%22ops%22%3A%5B%7B%22insert%22%3A%22123afsdf%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22123%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(111,12,'5','5','ID_NL_PROP_RESALE'),(112,12,'728.00','728','NL_PROP_RESALE_AREA_FULL'),(113,12,'Россия, Краснодарский край, Краснодар, Московская улица ','Россия, Краснодарский край, Краснодар, Московская улица ','NL_PROP_RESALE_ADDRESS'),(114,12,'1','1','NL_PROP_RESALE_FLOOR'),(115,12,'35235234','35235234','NL_PROP_RESALE_COST_TOTAL'),(116,12,'','','NL_PROP_RESALE_PHONE_OWNER'),(117,12,'1','1','ID_NL_VIEW'),(118,12,'2','2','ID_NL_HOUSES'),(119,12,'1','1','ID_NL_MATERIAL'),(120,12,'1','1','ID_NL_USER'),(121,12,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(122,12,'[\"/img/prop_resale/PHOTO_URLS_5_240414_111557.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_5_240414_111557.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(123,12,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22strike%22%3Atrue%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D1%84%D0%B2%D1%8B%D0%B0%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22background%22%3A%22%23e60000%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%221234234123412314%22%7D%2C%7B%22attributes%22%3A%7B%22header%22%3A1%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22Good%20view%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22ordered%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22background%22%3A%22%23e60000%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22Nice%20%20window%22%7D%2C%7B%22attributes%22%3A%7B%22header%22%3A1%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(124,13,'4','4','ID_NL_PROP_RESALE'),(125,13,'234.00','234','NL_PROP_RESALE_AREA_FULL'),(126,13,'Россия, Краснодарский край, Краснодар, Российская улица ','Россия, Краснодарский край, Краснодар, Российская улица ','NL_PROP_RESALE_ADDRESS'),(127,13,'2','2','NL_PROP_RESALE_FLOOR'),(128,13,'2112351','2112351','NL_PROP_RESALE_COST_TOTAL'),(129,13,'','','NL_PROP_RESALE_PHONE_OWNER'),(130,13,'3','3','ID_NL_VIEW'),(131,13,'2','2','ID_NL_HOUSES'),(132,13,'2','2','ID_NL_MATERIAL'),(133,13,'1','1','ID_NL_USER'),(134,13,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(135,13,'[\"/img/prop_resale/PHOTO_URLS_5_240414_111408.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_5_240414_111408.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(136,13,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D0%A4%D0%AB%D0%92%22%7D%2C%7B%22attributes%22%3A%7B%22italic%22%3Atrue%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D0%B0%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22italic%22%3Atrue%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D0%B0%D1%8B%D0%B0%D0%B2%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22ordered%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D0%B0%D1%8B%D0%B2%D1%84%D0%BF%D1%80%D1%84%D0%B2%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22bold%22%3Atrue%2C%22script%22%3A%22super%22%7D%2C%22insert%22%3A%22%D1%84%D1%8B%D0%B2%D0%B0%D1%8B%D1%84%D0%B2%D0%B0%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22ordered%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22color%22%3A%22%23ff9900%22%2C%22strike%22%3Atrue%7D%2C%22insert%22%3A%222%20doors%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22italic%22%3Atrue%2C%22background%22%3A%22%235c0000%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22A%20pool%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(137,14,'3','3','ID_NL_PROP_RESALE'),(138,14,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(139,14,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(140,14,'1','1','NL_PROP_RESALE_FLOOR'),(141,14,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(142,14,'','','NL_PROP_RESALE_PHONE_OWNER'),(143,14,'1','1','ID_NL_VIEW'),(144,14,'1','1','ID_NL_HOUSES'),(145,14,'2','2','ID_NL_MATERIAL'),(146,14,'1','1','ID_NL_USER'),(147,14,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(148,14,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(149,14,'%7B%22ops%22%3A%5B%7B%22insert%22%3A%22123%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%2C%22color%22%3A%22%23e60000%22%2C%22background%22%3A%22%23b2b200%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22Big%20house%22%7D%2C%7B%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(150,15,'3','3','ID_NL_PROP_RESALE'),(151,15,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(152,15,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(153,15,'1','1','NL_PROP_RESALE_FLOOR'),(154,15,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(155,15,'','','NL_PROP_RESALE_PHONE_OWNER'),(156,15,'1','1','ID_NL_VIEW'),(157,15,'1','1','ID_NL_HOUSES'),(158,15,'2','2','ID_NL_MATERIAL'),(159,15,'1','1','ID_NL_USER'),(160,15,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(161,15,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(162,15,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%2C%22color%22%3A%22%23e60000%22%2C%22background%22%3A%22%23b2b200%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22Big%20house%22%7D%2C%7B%22insert%22%3A%22%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%2C%22color%22%3A%22%23e60000%22%2C%22background%22%3A%22%23b2b200%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22Small%20house%22%7D%2C%7B%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(163,16,'3','3','ID_NL_PROP_RESALE'),(164,16,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(165,16,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(166,16,'1','1','NL_PROP_RESALE_FLOOR'),(167,16,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(168,16,'','','NL_PROP_RESALE_PHONE_OWNER'),(169,16,'1','1','ID_NL_VIEW'),(170,16,'1','1','ID_NL_HOUSES'),(171,16,'2','2','ID_NL_MATERIAL'),(172,16,'1','1','ID_NL_USER'),(173,16,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(174,16,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(175,16,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%2C%22color%22%3A%22%23e60000%22%2C%22background%22%3A%22%23b2b200%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22Small%20house%22%7D%2C%7B%22insert%22%3A%22%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22%D1%85%D0%BE%D1%80%D0%BE%D1%88%D0%B0%22%7D%2C%7B%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22%D0%BF%D0%BE%D0%B3%D0%BE%D0%B4%D0%B0%22%7D%2C%7B%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(176,17,'3','3','ID_NL_PROP_RESALE'),(177,17,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(178,17,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(179,17,'1','1','NL_PROP_RESALE_FLOOR'),(180,17,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(181,17,'','','NL_PROP_RESALE_PHONE_OWNER'),(182,17,'1','1','ID_NL_VIEW'),(183,17,'1','1','ID_NL_HOUSES'),(184,17,'2','2','ID_NL_MATERIAL'),(185,17,'1','1','ID_NL_USER'),(186,17,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(187,17,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(188,17,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22%D1%85%D0%BE%D1%80%D0%BE%D1%88%D0%B0%22%7D%2C%7B%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22%D0%BF%D0%BE%D0%B3%D0%BE%D0%B4%D0%B0%22%7D%2C%7B%22insert%22%3A%22%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(189,18,'3','3','ID_NL_PROP_RESALE'),(190,18,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(191,18,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(192,18,'1','1','NL_PROP_RESALE_FLOOR'),(193,18,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(194,18,'','','NL_PROP_RESALE_PHONE_OWNER'),(195,18,'1','1','ID_NL_VIEW'),(196,18,'1','1','ID_NL_HOUSES'),(197,18,'2','2','ID_NL_MATERIAL'),(198,18,'1','1','ID_NL_USER'),(199,18,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(200,18,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(201,18,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(202,19,'3','3','ID_NL_PROP_RESALE'),(203,19,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(204,19,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(205,19,'1','1','NL_PROP_RESALE_FLOOR'),(206,19,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(207,19,'','','NL_PROP_RESALE_PHONE_OWNER'),(208,19,'1','1','ID_NL_VIEW'),(209,19,'1','1','ID_NL_HOUSES'),(210,19,'2','2','ID_NL_MATERIAL'),(211,19,'1','1','ID_NL_USER'),(212,19,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(213,19,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(214,19,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol1%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(215,20,'3','3','ID_NL_PROP_RESALE'),(216,20,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(217,20,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(218,20,'1','1','NL_PROP_RESALE_FLOOR'),(219,20,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(220,20,'','','NL_PROP_RESALE_PHONE_OWNER'),(221,20,'1','1','ID_NL_VIEW'),(222,20,'1','1','ID_NL_HOUSES'),(223,20,'2','2','ID_NL_MATERIAL'),(224,20,'1','1','ID_NL_USER'),(225,20,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(226,20,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(227,20,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol1%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(228,21,'3','3','ID_NL_PROP_RESALE'),(229,21,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(230,21,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(231,21,'1','1','NL_PROP_RESALE_FLOOR'),(232,21,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(233,21,'','','NL_PROP_RESALE_PHONE_OWNER'),(234,21,'1','1','ID_NL_VIEW'),(235,21,'1','1','ID_NL_HOUSES'),(236,21,'2','2','ID_NL_MATERIAL'),(237,21,'1','1','ID_NL_USER'),(238,21,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(239,21,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(240,21,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(241,22,'3','3','ID_NL_PROP_RESALE'),(242,22,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(243,22,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(244,22,'1','1','NL_PROP_RESALE_FLOOR'),(245,22,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(246,22,'','','NL_PROP_RESALE_PHONE_OWNER'),(247,22,'1','1','ID_NL_VIEW'),(248,22,'1','1','ID_NL_HOUSES'),(249,22,'2','2','ID_NL_MATERIAL'),(250,22,'1','1','ID_NL_USER'),(251,22,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(252,22,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(253,22,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(254,23,'3','3','ID_NL_PROP_RESALE'),(255,23,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(256,23,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(257,23,'1','1','NL_PROP_RESALE_FLOOR'),(258,23,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(259,23,'','','NL_PROP_RESALE_PHONE_OWNER'),(260,23,'1','1','ID_NL_VIEW'),(261,23,'1','1','ID_NL_HOUSES'),(262,23,'2','2','ID_NL_MATERIAL'),(263,23,'1','1','ID_NL_USER'),(264,23,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(265,23,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(266,23,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(267,24,'3','3','ID_NL_PROP_RESALE'),(268,24,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(269,24,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(270,24,'1','1','NL_PROP_RESALE_FLOOR'),(271,24,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(272,24,'','','NL_PROP_RESALE_PHONE_OWNER'),(273,24,'1','1','ID_NL_VIEW'),(274,24,'1','1','ID_NL_HOUSES'),(275,24,'2','2','ID_NL_MATERIAL'),(276,24,'1','1','ID_NL_USER'),(277,24,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(278,24,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(279,24,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(280,25,'3','3','ID_NL_PROP_RESALE'),(281,25,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(282,25,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(283,25,'1','1','NL_PROP_RESALE_FLOOR'),(284,25,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(285,25,'','','NL_PROP_RESALE_PHONE_OWNER'),(286,25,'1','1','ID_NL_VIEW'),(287,25,'1','1','ID_NL_HOUSES'),(288,25,'2','2','ID_NL_MATERIAL'),(289,25,'1','1','ID_NL_USER'),(290,25,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(291,25,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(292,25,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(293,26,'3','3','ID_NL_PROP_RESALE'),(294,26,'555.00','555','NL_PROP_RESALE_AREA_FULL'),(295,26,'Россия, Краснодарский край, Анапа, Советская улица ','Россия, Краснодарский край, Анапа, Советская улица ','NL_PROP_RESALE_ADDRESS'),(296,26,'1','1','NL_PROP_RESALE_FLOOR'),(297,26,'1000000','1000000','NL_PROP_RESALE_COST_TOTAL'),(298,26,'','','NL_PROP_RESALE_PHONE_OWNER'),(299,26,'1','1','ID_NL_VIEW'),(300,26,'1','1','ID_NL_HOUSES'),(301,26,'2','2','ID_NL_MATERIAL'),(302,26,'1','1','ID_NL_USER'),(303,26,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(304,26,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(305,26,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22italic%22%3Atrue%7D%2C%22insert%22%3A%22Asdf%22%7D%2C%7B%22insert%22%3A%22%5CnLol%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22background%22%3A%22%23ffff00%22%2C%22color%22%3A%22%23006100%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D0%A5%D0%BE%D1%80%D0%BE%D1%88%D0%B0%D1%8F%20%D0%BA%D0%B2%D0%B0%D1%80%D1%82%D0%B8%D1%80%D0%B0%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22bold%22%3Atrue%2C%22background%22%3A%22%23ffff00%22%2C%22color%22%3A%22%23006100%22%2C%22script%22%3A%22super%22%7D%2C%22insert%22%3A%22123%22%7D%2C%7B%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(306,27,'4','4','ID_NL_PROP_RESALE'),(307,27,'234.00','234','NL_PROP_RESALE_AREA_FULL'),(308,27,'Россия, Краснодарский край, Краснодар, Российская улица ','Россия, Краснодарский край, Краснодар, Российская улица ','NL_PROP_RESALE_ADDRESS'),(309,27,'2','2','NL_PROP_RESALE_FLOOR'),(310,27,'2112351','2112351','NL_PROP_RESALE_COST_TOTAL'),(311,27,'','','NL_PROP_RESALE_PHONE_OWNER'),(312,27,'3','3','ID_NL_VIEW'),(313,27,'2','2','ID_NL_HOUSES'),(314,27,'2','2','ID_NL_MATERIAL'),(315,27,'1','1','ID_NL_USER'),(316,27,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(317,27,'[\"/img/prop_resale/PHOTO_URLS_5_240414_111408.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_5_240414_111408.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(318,27,'%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22color%22%3A%22%23ff9900%22%2C%22strike%22%3Atrue%7D%2C%22insert%22%3A%222%20doors%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22italic%22%3Atrue%2C%22background%22%3A%22%235c0000%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22A%20pool%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22color%22%3A%22%23ff9900%22%2C%22strike%22%3Atrue%7D%2C%22insert%22%3A%222%20%D0%B4%D0%B2%D0%B5%D1%80%D0%B8%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22color%22%3A%22%23008a00%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D0%91%D0%BE%D0%BB%D1%8C%D1%88%D0%B0%D1%8F%20%D0%B2%D0%B0%D0%BD%D0%BD%D0%B0%D1%8F%22%7D%2C%7B%22attributes%22%3A%7B%22italic%22%3Atrue%2C%22bold%22%3Atrue%2C%22color%22%3A%22%23008a00%22%2C%22script%22%3A%22sub%22%7D%2C%22insert%22%3A%22123%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(319,28,'5','5','ID_NL_PROP_RESALE'),(320,28,'728.00','728','NL_PROP_RESALE_AREA_FULL'),(321,28,'Россия, Краснодарский край, Краснодар, Московская улица ','Россия, Краснодарский край, Краснодар, Московская улица ','NL_PROP_RESALE_ADDRESS'),(322,28,'1','1','NL_PROP_RESALE_FLOOR'),(323,28,'35235234','35235234','NL_PROP_RESALE_COST_TOTAL'),(324,28,'','','NL_PROP_RESALE_PHONE_OWNER'),(325,28,'1','1','ID_NL_VIEW'),(326,28,'2','2','ID_NL_HOUSES'),(327,28,'1','1','ID_NL_MATERIAL'),(328,28,'1','1','ID_NL_USER'),(329,28,'+79282601474','+79282601474','NL_PROP_RESALE_PHONE'),(330,28,'[\"/img/prop_resale/PHOTO_URLS_5_240414_111557.jpg\"]','[\"/img/prop_resale/PHOTO_URLS_5_240414_111557.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(331,28,'%7B%22ops%22%3A%5B%7B%22insert%22%3A%22Good%20view%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22ordered%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22background%22%3A%22%23e60000%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22Nice%20%20window%22%7D%2C%7B%22attributes%22%3A%7B%22header%22%3A1%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22color%22%3A%22%230066cc%22%7D%2C%22insert%22%3A%222%20%D0%B4%D0%B2%D0%B5%D1%80%D0%B8%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22ordered%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22italic%22%3Atrue%2C%22background%22%3A%22%23f06666%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D0%A2%D1%80%D1%83%D0%B1%D0%B0%20%D0%BD%D0%B0%20%D0%BA%D1%80%D1%8B%D1%88%D0%B5%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22ordered%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION');
/*!40000 ALTER TABLE `nl_log_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nl_material`
--

DROP TABLE IF EXISTS `nl_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nl_material` (
  `ID_NL_MATERIAL` int NOT NULL AUTO_INCREMENT,
  `NL_MATERIAL_SHORT` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID_NL_MATERIAL`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nl_material`
--

LOCK TABLES `nl_material` WRITE;
/*!40000 ALTER TABLE `nl_material` DISABLE KEYS */;
INSERT INTO `nl_material` VALUES (1,'Дерево'),(2,'Кирпич'),(3,'Камень');
/*!40000 ALTER TABLE `nl_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nl_prop_resale`
--

DROP TABLE IF EXISTS `nl_prop_resale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nl_prop_resale` (
  `ID_NL_PROP_RESALE` int NOT NULL AUTO_INCREMENT,
  `ID_NL_VIEW` int DEFAULT NULL,
  `NL_PROP_RESALE_FLOOR` varchar(25) DEFAULT NULL,
  `NL_PROP_RESALE_AREA_FULL` decimal(6,2) NOT NULL,
  `NL_PROP_RESALE_PHOTO_URLS` varchar(5100) DEFAULT NULL,
  `NL_PROP_RESALE_COST_TOTAL` int DEFAULT NULL,
  `NL_PROP_RESALE_ADDRESS` varchar(2550) DEFAULT NULL,
  `NL_PROP_RESALE_DESCRIPTION` varchar(5100) DEFAULT NULL,
  `ID_NL_USER` int DEFAULT NULL,
  `NL_PROP_RESALE_PHONE` varchar(50) DEFAULT NULL,
  `NL_PROP_RESALE_PHONE_OWNER` varchar(255) DEFAULT NULL,
  `NL_PROP_RESALE_DATE_INSERT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NL_PROP_RESALE_DATE_UPDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_NL_HOUSES` int DEFAULT NULL,
  `ID_NL_MATERIAL` int DEFAULT NULL,
  PRIMARY KEY (`ID_NL_PROP_RESALE`) USING BTREE,
  KEY `ID_NL_VIEW` (`ID_NL_VIEW`) USING BTREE,
  KEY `ID_NL_HOUSES` (`ID_NL_HOUSES`),
  KEY `ID_NL_MATERIAL` (`ID_NL_MATERIAL`),
  CONSTRAINT `nl_prop_resale_ibfk_1` FOREIGN KEY (`ID_NL_VIEW`) REFERENCES `nl_view` (`ID_NL_VIEW`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `nl_prop_resale_ibfk_2` FOREIGN KEY (`ID_NL_HOUSES`) REFERENCES `nl_houses` (`ID_NL_HOUSES`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `nl_prop_resale_ibfk_3` FOREIGN KEY (`ID_NL_MATERIAL`) REFERENCES `nl_material` (`ID_NL_MATERIAL`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nl_prop_resale`
--

LOCK TABLES `nl_prop_resale` WRITE;
/*!40000 ALTER TABLE `nl_prop_resale` DISABLE KEYS */;
INSERT INTO `nl_prop_resale` VALUES (3,1,'1',555.00,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]',1000000,'Россия, Краснодарский край, Анапа, Советская улица ','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22background%22%3A%22%23ffff00%22%2C%22color%22%3A%22%23006100%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D0%A5%D0%BE%D1%80%D0%BE%D1%88%D0%B0%D1%8F%20%D0%BA%D0%B2%D0%B0%D1%80%D1%82%D0%B8%D1%80%D0%B0%22%7D%2C%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22bold%22%3Atrue%2C%22background%22%3A%22%23ffff00%22%2C%22color%22%3A%22%23006100%22%2C%22script%22%3A%22super%22%7D%2C%22insert%22%3A%22123%22%7D%2C%7B%22insert%22%3A%22%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2019-12-01 11:44:02','2024-04-15 09:25:19',1,2),(4,3,'2',234.00,'[\"/img/prop_resale/PHOTO_URLS_5_240414_111408.jpg\"]',2112351,'Россия, Краснодарский край, Краснодар, Российская улица ','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22underline%22%3Atrue%2C%22color%22%3A%22%23ff9900%22%2C%22strike%22%3Atrue%7D%2C%22insert%22%3A%222%20%D0%B4%D0%B2%D0%B5%D1%80%D0%B8%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22strike%22%3Atrue%2C%22italic%22%3Atrue%2C%22color%22%3A%22%23008a00%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D0%91%D0%BE%D0%BB%D1%8C%D1%88%D0%B0%D1%8F%20%D0%B2%D0%B0%D0%BD%D0%BD%D0%B0%D1%8F%22%7D%2C%7B%22attributes%22%3A%7B%22italic%22%3Atrue%2C%22bold%22%3Atrue%2C%22color%22%3A%22%23008a00%22%2C%22script%22%3A%22sub%22%7D%2C%22insert%22%3A%22123%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22bullet%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2024-04-14 08:14:29','2024-04-15 09:26:12',2,2),(5,1,'1',728.00,'[\"/img/prop_resale/PHOTO_URLS_5_240414_111557.jpg\"]',35235234,'Россия, Краснодарский край, Краснодар, Московская улица ','%7B%22ops%22%3A%5B%7B%22attributes%22%3A%7B%22color%22%3A%22%230066cc%22%7D%2C%22insert%22%3A%222%20%D0%B4%D0%B2%D0%B5%D1%80%D0%B8%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22ordered%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%2C%7B%22attributes%22%3A%7B%22italic%22%3Atrue%2C%22background%22%3A%22%23f06666%22%2C%22bold%22%3Atrue%7D%2C%22insert%22%3A%22%D0%A2%D1%80%D1%83%D0%B1%D0%B0%20%D0%BD%D0%B0%20%D0%BA%D1%80%D1%8B%D1%88%D0%B5%22%7D%2C%7B%22attributes%22%3A%7B%22list%22%3A%22ordered%22%7D%2C%22insert%22%3A%22%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2024-04-14 08:18:05','2024-04-15 09:26:53',2,1);
/*!40000 ALTER TABLE `nl_prop_resale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nl_user`
--

DROP TABLE IF EXISTS `nl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nl_user` (
  `ID_NL_USER` int NOT NULL AUTO_INCREMENT,
  `ID_NL_USER_PERMISSION` int NOT NULL,
  `NL_USER_LOGIN` varchar(50) NOT NULL,
  `NL_USER_PASSWORD` blob NOT NULL,
  `NL_USER_SHORT` varchar(25) NOT NULL,
  `NL_USER_FULL` varchar(2550) NOT NULL,
  `NL_USER_PHONE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_NL_USER`) USING BTREE,
  KEY `ID_NL_USER_PERMISSION` (`ID_NL_USER_PERMISSION`) USING BTREE,
  CONSTRAINT `NL_USER_IBFK_1` FOREIGN KEY (`ID_NL_USER_PERMISSION`) REFERENCES `nl_user_permission` (`ID_NL_USER_PERMISSION`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nl_user`
--

LOCK TABLES `nl_user` WRITE;
/*!40000 ALTER TABLE `nl_user` DISABLE KEYS */;
INSERT INTO `nl_user` VALUES (1,2,'admin',_binary 'c�m~(ȑ�\�\�.�W�\�','Администратор','Администратор','+79282601474');
/*!40000 ALTER TABLE `nl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nl_user_permission`
--

DROP TABLE IF EXISTS `nl_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nl_user_permission` (
  `ID_NL_USER_PERMISSION` int NOT NULL AUTO_INCREMENT,
  `NL_USER_PERMISSION_SHORT` varchar(25) NOT NULL,
  `NL_USER_PERMISSION_FULL` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_NL_USER_PERMISSION`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nl_user_permission`
--

LOCK TABLES `nl_user_permission` WRITE;
/*!40000 ALTER TABLE `nl_user_permission` DISABLE KEYS */;
INSERT INTO `nl_user_permission` VALUES (1,'Пользователь','Пользователь'),(2,'Администратор','Администратор'),(3,'Гость','Гость');
/*!40000 ALTER TABLE `nl_user_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nl_view`
--

DROP TABLE IF EXISTS `nl_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nl_view` (
  `ID_NL_VIEW` int NOT NULL AUTO_INCREMENT,
  `NL_VIEW_SHORT` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_NL_VIEW`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nl_view`
--

LOCK TABLES `nl_view` WRITE;
/*!40000 ALTER TABLE `nl_view` DISABLE KEYS */;
INSERT INTO `nl_view` VALUES (1,'На море'),(2,'В город'),(3,'В пустыню');
/*!40000 ALTER TABLE `nl_view` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15 12:35:59
