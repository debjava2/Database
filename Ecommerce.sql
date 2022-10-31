-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `pid` int NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `cp_fk` int DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKhcx6ovvpccewp6ji7to42iffc` (`cp_fk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (201,'TShirts',1),(202,'Men',1),(203,'Leather Bag',2),(204,'Women',2),(205,'TShirts',3),(206,'Men',3),(207,'Jewellery',4),(208,'Women',4),(209,'Bag',5),(210,'Men',5),(211,'Sports Tshirt',6),(212,'Men',6),(213,'Jewellery',7),(214,'Women',7),(215,'Watches',8),(216,'Women',8),(217,'Coat',9),(218,'Men',9),(219,'Coat',10),(220,'Men',10),(221,'Coat',12),(222,'Men',12),(224,'Coat',15),(225,'Men',15),(226,'Coat',16),(227,'Men And Women',16),(228,'Coat',17),(229,'Men',17),(230,'Coat',18),(231,'Men',18),(232,'cloth material',19),(233,'Women',19),(234,'cloth material',20),(235,'Women',20),(236,'cloth material',21),(237,'Women',21),(238,'wollen material',22),(239,'Women',22),(240,'jeans',23),(241,'Men',23),(242,'jeans',24),(243,'Men',24),(244,'jeans',25),(245,'Women',25),(246,'jeans',26),(247,'Women',26);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` bigint NOT NULL,
  `creadit` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `teacher_id` bigint DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `FKsybhlxoejr4j3teomm5u2bx1n` (`teacher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,20,'Java complete Reffreence',NULL),(2,20,'Java',1),(3,30,'C++',1),(4,50,'DBMS',1),(5,20,'English',2),(6,40,'Maths',2),(7,30,'History',2);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_material`
--

DROP TABLE IF EXISTS `course_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_material` (
  `material_id` bigint NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  PRIMARY KEY (`material_id`),
  UNIQUE KEY `UK_h1og6srs8s1xhabgqtkhdf96q` (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_material`
--

LOCK TABLES `course_material` WRITE;
/*!40000 ALTER TABLE `course_material` DISABLE KEYS */;
INSERT INTO `course_material` VALUES (1,'www.java.com',1),(52,'www.java.com',NULL);
/*!40000 ALTER TABLE `course_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_sequence`
--

DROP TABLE IF EXISTS `course_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_sequence`
--

LOCK TABLES `course_sequence` WRITE;
/*!40000 ALTER TABLE `course_sequence` DISABLE KEYS */;
INSERT INTO `course_sequence` VALUES (8);
/*!40000 ALTER TABLE `course_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (117);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_sequence`
--

DROP TABLE IF EXISTS `material_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_sequence`
--

LOCK TABLES `material_sequence` WRITE;
/*!40000 ALTER TABLE `material_sequence` DISABLE KEYS */;
INSERT INTO `material_sequence` VALUES (151);
/*!40000 ALTER TABLE `material_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `in_stock` bit(1) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Red','Cotton Shirt for all weather','https://5.imimg.com/data5/YG/XV/MY-53107274/puma-t-shirt-500x500.jpg',400,'53800999-ea7b-4692-8252-0e95ad03f3ee','M','Puma TShirts for Women','2022-08-18 17:36:37',_binary '','2022-08-18 17:36:37'),(2,'White','Leather Bag for Women','https://d3o2e4jr3mxnm3.cloudfront.net/Mens-Jake-Guitar-Vintage-Crusher-Tee_68382_1_lg.png',600,'678eb6d7-8772-4f0e-9ae5-0b5bfad021ac','M','Bag And coat','2022-08-18 18:15:53',_binary '','2022-08-18 18:15:53'),(3,'Blue','TShirts for Gym','https://www.vintageindustries.nl/download_front/xzscdg1837/_overview_large_/25129_Wyatt_shirt_jacket_Taupe.png',300,'56dc59cb-b639-4ca8-82ef-901c4387093a','L','Nike TShirts for Women','2022-08-18 18:27:34',_binary '','2022-08-18 18:27:34'),(4,'Golden','Gold Jewellery for ocations','https://www.prada.com/content/dam/pradanux_products/U/UCS/UCS319/1YOTF010O/UCS319_1YOT_F010O_S_182_SLF.png',3200,'0aec8b59-77d1-461e-abb0-fc9ceb6e00db','M','Gold Jewellery and jeans','2022-08-18 18:31:18',_binary '','2022-08-18 18:31:18'),(5,'Black','Back[ack','https://www.vintageindustries.nl/download_front/cqrjsp1520/_overview_large_/3019P_Basing_hooded_sweater_Dark_Camo_2_.png',3000,'8f3f5079-56ba-4b40-9f8f-85ad2f058d09','L','Outdoor Games And Sports coat','2022-08-18 18:33:24',_binary '','2022-08-18 18:33:24'),(6,'Blue','comfartable TShirts for All Sports','https://images.ctfassets.net/5gvckmvm9289/3BlDoZxSSjqAvv1jBJP7TH/65f9a95484117730ace42abf64e89572/Noissue-x-Creatsy-Tote-Bag-Mockup-Bundle-_4_-2.png',500,'cad4ae69-44dd-4511-8852-7f6ebee31cb6','M','Sports TShirts Women','2022-08-18 18:40:13',_binary '\0','2022-08-18 18:40:13'),(7,'Golden','Bracelets for All session','https://d3o2e4jr3mxnm3.cloudfront.net/Rocket-Vintage-Chill-Cap_66374_1_lg.png',2500,'160608d9-7de8-4058-a077-85b96f2d3cde','S','stacked-bracelets jeans','2022-08-18 20:02:44',_binary '\0','2022-08-18 20:02:44'),(8,'Black','Smart and analogue watches','https://www.vintageindustries.nl/download_front/avniph1707/_overview_large_/31102_Legend_Beige_2.png',4500,'1d0c44b8-7c25-496c-a3f9-68a142e0b4a6','S','fashionable wrist-watches and jeans','2022-08-18 20:04:34',_binary '','2022-08-18 20:04:34'),(19,'White','Wome cloth material','https://i.ibb.co/Tq9P6v6/woman-gfd8a3d4e4-640.jpg',5500,'91d0a8d8-0bce-4b16-9121-6865610a635d','M',' cloths materria for  Women','2022-08-24 11:07:57',_binary '','2022-08-24 11:07:57'),(13,'Black','Dashing And Dynamic','https://i.ibb.co/mF9ZX1s/man-g7527fd979-640.jpg',3500,'68068e98-d490-4753-9b85-2c30884a6dc6','XS',' Silver coat','2022-08-24 09:08:21',_binary '','2022-08-24 09:08:21'),(18,'Black','Party coat for youth','https://i.ibb.co/RhTDvcF/coat-g0f31e6066-640.jpg',9500,'d0a28e45-d97f-44f1-a4b6-eceaa5b0df57','XL',' Party coat','2022-08-24 10:24:44',_binary '','2022-08-24 10:24:44'),(16,'White','woolen cloth for Winter','https://i.ibb.co/s2SWf7s/woman-g302ce01b6-640.jpg',7500,'295f2b08-5e0e-4822-9262-3659aa99c9fd','XS',' Fur coat','2022-08-24 09:56:59',_binary '','2022-08-24 09:56:59'),(17,'Yellow','Causal Coat for Function','https://i.ibb.co/qR5VP6L/groom-g821108be3-640.jpg',10500,'43e2e611-9c29-4e55-a689-4c335c750f15','L',' Casual coat','2022-08-24 10:21:56',_binary '','2022-08-24 10:21:56'),(20,'Black','Jeans and jacket cloth material','https://i.ibb.co/Bj4NyWD/friends-g73e8488d8-640.jpg',15500,'22270ee6-6624-4618-bc65-76361b8adab8','M','Jackets and Jeans for  Women','2022-08-24 12:00:56',_binary '','2022-08-24 12:00:56'),(21,'Red','contempary','https://i.ibb.co/P96hnVQ/adult-gc5e151c48-640.jpg',3500,'e19512ca-839f-4d8b-8253-ce53ef494f4c','XS','contempary design for Women','2022-08-24 15:48:14',_binary '','2022-08-24 15:48:14'),(22,'Red','wollen','https://i.ibb.co/z28t79z/mother-and-daughter-g2bdecc89c-640.jpg',3500,'8325d509-ecc6-4a60-a1c8-147443593d75','XL','wollen design for Women','2022-08-24 15:50:52',_binary '','2022-08-24 15:50:52'),(23,'Yellow','jeans','https://i.ibb.co/ZfMCk58/woman-g51cd9bd1b-640.jpg',7200,'e901bff5-3410-4ad6-9f5e-0e468ee9197a','XL','Blue jeans','2022-08-24 15:57:10',_binary '','2022-08-24 15:57:10'),(24,'Green','Designer Black jeans','https://i.ibb.co/JmLrHzk/lonely-g90c3c3b6f-640.jpg',1200,'aea7f66d-d229-4b14-91ed-19f2ccac54b3','M','Black jeans','2022-08-24 16:01:22',_binary '','2022-08-24 16:01:22'),(25,'Red','designer Black and Red jeans','https://i.ibb.co/pKsYccY/couple-g3a213b6f8-640.jpg',1700,'d54cb42d-6122-4212-8a12-72441dfd45cd','M','designer jeans','2022-08-24 16:04:38',_binary '','2022-08-24 16:04:38'),(26,'Blue','Bulk Black and Red jeans','https://i.ibb.co/PDt3Jph/man-gac7435eca-640.jpg',3700,'63cdb505-c702-4eca-b2e9-730890fb9b9c','S','Bulk jeans','2022-08-24 16:06:42',_binary '','2022-08-24 16:06:42');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_sequence`
--

DROP TABLE IF EXISTS `student_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_sequence`
--

LOCK TABLES `student_sequence` WRITE;
/*!40000 ALTER TABLE `student_sequence` DISABLE KEYS */;
INSERT INTO `student_sequence` VALUES (12);
/*!40000 ALTER TABLE `student_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_student`
--

DROP TABLE IF EXISTS `tbl_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_student` (
  `student_id` bigint NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gurdian_email` varchar(255) DEFAULT NULL,
  `gurdian_mobile` varchar(255) DEFAULT NULL,
  `gurdian_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student`
--

LOCK TABLES `tbl_student` WRITE;
/*!40000 ALTER TABLE `tbl_student` DISABLE KEYS */;
INSERT INTO `tbl_student` VALUES (11,'Birjesh@gmail.com','Debashish','guardian@gmail.com','9834466575','bbbbb','Mahato'),(10,'Rakesh@gmail.com','Debashish','kaaaaad@gmail.com','9834466575','bbbbb','Mahato'),(9,'Rakesh@gmail.com','Debashish','kaaaaad@gmail.com','9834466575','bbbbb','Mahato');
/*!40000 ALTER TABLE `tbl_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` bigint NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Pratap','Mishra'),(2,'Rajesh','Sharma');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_sequence`
--

DROP TABLE IF EXISTS `teacher_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_sequence`
--

LOCK TABLES `teacher_sequence` WRITE;
/*!40000 ALTER TABLE `teacher_sequence` DISABLE KEYS */;
INSERT INTO `teacher_sequence` VALUES (3);
/*!40000 ALTER TABLE `teacher_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tbl`
--

DROP TABLE IF EXISTS `user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tbl` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tbl`
--

LOCK TABLES `user_tbl` WRITE;
/*!40000 ALTER TABLE `user_tbl` DISABLE KEYS */;
INSERT INTO `user_tbl` VALUES (116,'vikash@gmail.com',_binary '\0','$2a$10$7KAs8DA51DNuqAQnPgm3Su7oagCS1LpXuk60rWlmDPPNZDxK7FV4C','User','Vikash'),(115,'raj@gmail.com',_binary '','$2a$10$H2WB8wIOKj7qaOEb0T6Bh.jP/hxr/RDxwszaY3UgA228uExCtfFye','Admin','Raj'),(114,'deb@gmail.com',_binary '','$2a$10$bCyf3bcrSZUXbbw5xD43COc52hJcx9nzA3F0YnSThCI0xCUlCNVVe','User','Debashish');
/*!40000 ALTER TABLE `user_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-31 15:53:29
