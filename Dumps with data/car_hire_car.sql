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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL,
  `seats` tinyint(2) unsigned DEFAULT NULL,
  `doors` tinyint(2) unsigned DEFAULT NULL,
  `air_conditioning` tinyint(1) DEFAULT NULL,
  `automatic_gearbox` tinyint(1) NOT NULL,
  `rental_value_for_day` decimal(8,2) unsigned NOT NULL,
  `rental_value_for_hour` decimal(8,2) unsigned NOT NULL,
  `color` varchar(45) DEFAULT NULL,
  `fuel_consumption` decimal(2,1) unsigned DEFAULT NULL,
  `engine_power` int(10) unsigned DEFAULT NULL,
  `car_class_id` int(11) NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `fk_car_car_class1_idx` (`car_class_id`),
  KEY `fk_car_model1_idx` (`model_id`),
  CONSTRAINT `fk_car_car_class1` FOREIGN KEY (`car_class_id`) REFERENCES `car_class` (`car_class_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,21,5,5,1,1,15100.10,0.00,'white',8.1,NULL,4),(2,1,4,4,1,1,2428.60,0.00,'grey',NULL,NULL,1),(3,2,4,4,1,1,2501.60,0.00,'white',NULL,NULL,1),(4,3,5,4,1,1,2466.60,0.00,'black',NULL,NULL,1),(5,4,5,4,1,1,2484.60,0.00,'white',NULL,NULL,1),(6,5,5,4,1,1,2368.60,0.00,'black',NULL,NULL,1),(7,6,4,4,1,1,2758.60,0.00,'white',NULL,NULL,1),(8,7,5,4,1,1,2598.60,0.00,'white',NULL,NULL,2),(9,8,5,4,1,1,2643.60,0.00,'grey',NULL,NULL,2),(10,9,5,4,1,1,2625.60,0.00,'white',NULL,NULL,2),(11,10,5,4,1,1,2868.60,0.00,'white',NULL,NULL,2),(12,11,5,4,1,1,2686.60,0.00,'black',NULL,NULL,1),(13,12,5,4,1,1,2760.60,0.00,'black',NULL,NULL,2),(14,13,5,4,1,1,3299.60,0.00,'grey',NULL,NULL,2),(15,14,5,4,1,1,2906.60,0.00,'grey',NULL,NULL,2),(16,15,5,4,1,1,3487.60,0.00,'grey',NULL,NULL,3),(17,16,5,4,1,1,3598.60,0.00,'black',NULL,NULL,3),(18,17,5,4,1,1,3480.60,0.00,'white',NULL,NULL,3),(19,18,5,4,1,1,4500.60,0.00,'grey',NULL,NULL,3),(20,19,5,4,1,1,4898.60,0.00,'grey',NULL,NULL,3),(21,20,5,4,1,1,5301.60,0.00,'grey',NULL,NULL,3),(22,21,5,4,1,1,13883.60,0.00,'white',NULL,NULL,4),(23,22,5,4,1,1,15823.60,0.00,'white',NULL,NULL,4),(24,23,5,4,1,1,4900.60,0.00,'grey',NULL,NULL,6),(25,24,5,4,1,1,5000.60,0.00,'grey',NULL,NULL,6),(26,25,5,4,1,1,5129.60,0.00,'black',NULL,NULL,6),(27,26,5,4,1,1,6001.60,0.00,'white',NULL,NULL,6),(28,27,5,4,1,1,6832.60,0.00,'grey',NULL,NULL,6),(29,28,5,4,1,1,7999.60,0.00,'grey',NULL,NULL,6),(30,29,5,4,1,1,7220.60,0.00,'white',NULL,NULL,6),(31,30,5,4,1,1,8000.60,0.00,'white',NULL,NULL,6),(32,31,5,4,1,1,7878.60,0.00,'grey',NULL,NULL,6);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-05 18:24:46
