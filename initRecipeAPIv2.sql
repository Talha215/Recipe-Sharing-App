-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: spring_db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rm1mlratj8yf3e1yxwk156x4p` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'52530','Island Jam','https://spoonacular.com/recipeImages/52530-312x231.jpg'),(2,'653810','Orange Banana Muffins With Pistachios','https://spoonacular.com/recipeImages/653810-312x231.jpg'),(3,'648097','Italian Chicken With Pepper','https://spoonacular.com/recipeImages/648097-312x231.jpg'),(4,'157375','Steamy Creamy Mushroom Risotto','https://spoonacular.com/recipeImages/157375-312x231.jpg'),(5,'649985','Light and Chunky Chicken Soup','https://spoonacular.com/recipeImages/649985-312x231.jpg'),(6,'638779','Chobani Harvest Fruit Salad','https://spoonacular.com/recipeImages/638779-312x231.jpg'),(7,'794350','Cherry Coconut Milk Smoothie','https://spoonacular.com/recipeImages/794350-312x231.jpg'),(8,'632342','An American Beef Burger','https://spoonacular.com/recipeImages/632342-312x231.jpg'),(9,'654563','Panko Crusted Shrimp Rolls','https://spoonacular.com/recipeImages/654563-312x231.jpg'),(10,'638074','Chicken Enchilada Salad Wraps','https://spoonacular.com/recipeImages/638074-312x231.jpg'),(11,'660261','Slow Cooked Applesauce','https://spoonacular.com/recipeImages/660261-312x231.jpg'),(12,'640273','Crab Cake Stuffed Shrimp','https://spoonacular.com/recipeImages/640273-312x231.jpg'),(13,'659109','Salmon Quinoa Risotto','https://spoonacular.com/recipeImages/659109-312x231.jpg');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) DEFAULT '1',
  `password` varchar(255) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'$2a$10$M5DQAOONZ.CufF7CRc5UIuDP/kpgL.muPlyREt04DW/8VKtPLngTK',NULL,'ROLE_USER','user1','User','One'),(2,1,'$2a$10$6lRVZRp4YvxRnOP3tEEZJO64leqpVHkdQglgJP7Q2ZH53xT3QGCoy',NULL,'ROLE_USER','user2','User','Two'),(3,1,'$2a$10$4TCR9sXOsg2HNrMU7zyeueJ62sHQ6oq1Yj8syQRkRHsi7satywerC',NULL,'ROLE_USER','user3','User','Three'),(4,1,'$2a$10$4V5VP3oK11rtMbYx.uWf4eH9ntjQE4YaTmt1PNGDvGGOpKeCcfHuW',NULL,'ROLE_ADMIN','talha','Talha','Qureshi'),(5,1,'$2a$10$IyElZOgbPSR5iBWfD8atwOic1WN0W5HJ2CgAXRcttSjvZKbu5mywm',NULL,'ROLE_ADMIN','cliff','Cliff','Freeman'),(6,1,'$2a$10$27CqVmXec8/zT4NmtUTrA.9QHToEId4Hf3xvgyz6ZkuPVcY/19Cra',NULL,'ROLE_ADMIN','john','John','Larson');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_recipe`
--

DROP TABLE IF EXISTS `user_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL,
  `recipe_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd7pcgvgubv5j33m36lnsscriq` (`recipe_id`),
  KEY `FKsv2khyshlbtm7vvpk5sq6wjtl` (`user_id`),
  CONSTRAINT `FKd7pcgvgubv5j33m36lnsscriq` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`),
  CONSTRAINT `FKsv2khyshlbtm7vvpk5sq6wjtl` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_recipe`
--

LOCK TABLES `user_recipe` WRITE;
/*!40000 ALTER TABLE `user_recipe` DISABLE KEYS */;
INSERT INTO `user_recipe` VALUES (1,' ',' ',1,1),(3,' ',' ',3,4),(4,' ',' ',4,4),(5,' ',' ',5,4),(6,' ',' ',6,5),(7,' ',' ',7,5),(8,' ',' ',8,6),(9,' ',' ',9,6),(10,' ',' ',10,6),(11,' ',' ',11,2),(12,' ',' ',12,4),(13,' ',' ',13,4);
/*!40000 ALTER TABLE `user_recipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-20 14:14:29
