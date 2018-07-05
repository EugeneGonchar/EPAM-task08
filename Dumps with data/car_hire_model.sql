-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: car_hire
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
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `year_of_issue` year(4) NOT NULL,
  `brand_id` int(11) NOT NULL,
  PRIMARY KEY (`model_id`),
  KEY `fk_model_brand1_idx` (`brand_id`),
  CONSTRAINT `fk_model_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'Picanto',2018,17),(2,'Spark',2010,1),(3,'Aveo',2013,1),(4,'Figo',2012,2),(5,'Fiesta',2017,2),(6,'Swift',2010,16),(7,'Sunny',2010,5),(8,'Accent',2010,6),(9,'Yaris Sedan',2018,7),(10,'Cruze',2014,1),(11,'Focus',2017,2),(12,'Corolla',2018,7),(13,'Lancer',2014,3),(14,'Mondeo',2017,2),(15,'6',2017,20),(16,'Passat',2010,8),(17,'Fusion',2012,2),(18,'Taurus',2018,2),(19,'Charger',2018,18),(20,'A6',2013,19),(21,'5',2018,13),(22,'7',2018,13),(23,'Trax',2013,1),(24,'Sportage',2017,17),(25,'ASX',2015,3),(26,'Duster',2015,15),(27,'Edge',2018,2),(28,'Pajero',2017,3),(29,'Escape',2016,2),(30,'Explorer',2018,2),(31,'Tahoe',2015,1),(32,'Land Cruiser',2017,7),(33,'Wrangler',2017,10),(34,'GLC 250',2017,14),(35,'Camaro',2018,1),(36,'CTS',2017,12),(37,'SLK/SLC Convertible',2017,14),(38,'S-Class 400',2017,14);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-05 18:24:47
