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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','100f94dccd5b04bae5cadd4454dba67d','admin@mail.com','+375291111111',NULL,NULL),(2,'user1','cbc514797ed7ddd3145464e2a0bab413','user1@mail.com','+375299238272','Brian','Martin'),(3,'user2','97f72b86850c8ce03c975444899b501c','user2@mail.com','+375298918693','Warren','Hensley'),(4,'user3','bbe99f3df5be4e9efe445a3823c89219','user3@mail.com','+375297250847','Charles','Holmes'),(5,'user4','2328c9149354de239f48c58f0a1d44a6','user4@mail.com','+375299804074','Anthony','Hodge'),(6,'user5','ae002f8aba074b066dfce1af114e32f8','user5@mail.com','+375299692920','Robert','Jennings'),(7,'user6','68e3fdf9b09b3ecf77c1307aa99c768e','user6@mail.com','+375296971597','Leslie','Harrison'),(8,'user7','55b58d5130e02edc4acc1f3d91f5302a','user7@mail.com','+375292772245','Howard','Baker'),(9,'user8','1edbce7c12cf828adf4b55c9928d695d','user8@mail.com','+375295161385','Myra','Newman'),(10,'user9','ad892fc999d8ab4f5063d6f6b39fca53','user9@mail.com','+375291463519','Bethany','Gibson'),(11,'user10','cbc514797ed7ddd3145464e2a0bab413','user10@mail.com','+375299737345','Jasmin','Tate'),(12,'user11','97f72b86850c8ce03c975444899b501c','user11@mail.com','+375291278551','Ezra','Newton'),(13,'user12','bbe99f3df5be4e9efe445a3823c89219','user12@mail.com','+375296443569','Kenneth','Pierce'),(14,'user13','2328c9149354de239f48c58f0a1d44a6','user13@mail.com','+375296866559','Frank','Shepherd'),(15,'user14','ae002f8aba074b066dfce1af114e32f8','user14@mail.com','+375298515130','Moses','Bennett'),(16,'user15','68e3fdf9b09b3ecf77c1307aa99c768e','user15@mail.com','+375299475692','Charles','Garrett'),(17,'user16','55b58d5130e02edc4acc1f3d91f5302a','user16@mail.com','+375296664804','Oliver','Pearson'),(18,'user17','1edbce7c12cf828adf4b55c9928d695d','user17@mail.com','+375296190672','Paul','Maxwell'),(19,'user18','ad892fc999d8ab4f5063d6f6b39fca53','user18@mail.com','+375293704647','Edward','Sutton');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
