-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: envsurvey
-- ------------------------------------------------------
-- Server version	8.0.22

USE envsurvey;

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
-- Table structure for table `e_addsurveybyfaculty`
--

DROP TABLE IF EXISTS `e_addsurveybyfaculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `e_addsurveybyfaculty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(145) NOT NULL,
  `volunteer` varchar(25) NOT NULL,
  `Date` varchar(25) NOT NULL,
  `venue` varchar(145) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_addsurveybyfaculty`
--

LOCK TABLES `e_addsurveybyfaculty` WRITE;
/*!40000 ALTER TABLE `e_addsurveybyfaculty` DISABLE KEYS */;
INSERT INTO `e_addsurveybyfaculty` VALUES (1,'World Pandemic','Awareness of Covid-19 Safety','12','06/20/2022','UEF');
/*!40000 ALTER TABLE `e_addsurveybyfaculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_comp`
--

DROP TABLE IF EXISTS `e_comp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `e_comp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(245) NOT NULL,
  `volunteer` varchar(25) NOT NULL,
  `date` varchar(45) NOT NULL,
  `venue` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_comp`
--

LOCK TABLES `e_comp` WRITE;
/*!40000 ALTER TABLE `e_comp` DISABLE KEYS */;
INSERT INTO `e_comp` VALUES (1,'Poster Contest','Awareness of Climate Change','100','09/05/2022','UEF'),(2,'Racing Contest','Road Bicycle Racing','50','07/28/2022','UEF');
/*!40000 ALTER TABLE `e_comp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_compbyfaculty`
--

DROP TABLE IF EXISTS `e_compbyfaculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `e_compbyfaculty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(245) NOT NULL,
  `volunteer` int NOT NULL,
  `date` varchar(45) NOT NULL,
  `venue` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_compbyfaculty`
--

LOCK TABLES `e_compbyfaculty` WRITE;
/*!40000 ALTER TABLE `e_compbyfaculty` DISABLE KEYS */;
INSERT INTO `e_compbyfaculty` VALUES (1,'Sport Competition','Olympic UEF 2022',12,'08/26/2022','UEF'),(2,'UEFFancy','Dancing Contest',15,'07/01/2022','UEF');
/*!40000 ALTER TABLE `e_compbyfaculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_faq`
--

DROP TABLE IF EXISTS `e_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `e_faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(4500) NOT NULL,
  `answer` varchar(4500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_faq`
--

LOCK TABLES `e_faq` WRITE;
/*!40000 ALTER TABLE `e_faq` DISABLE KEYS */;
INSERT INTO `e_faq` VALUES (1,'How to Register as a New Students?','Go to "Not Registered yet?" and Register'),(2,'How to Participate in the Surveys?','Go to Survey Board and Choose your Interested Surveys'),(3,'How will you be informed on the Upcoming Competitions?','On Home Page'),(4,'How can I Submit Surveys several times?','Instead of clicking "Back", continue the process of Conducting a Survey'),(5,'Why I am unable to Participate in Surveys?','Either Register as new Students or Contact Group 07'),(6,'If you have any other Questions or Technical Issues','Contact Group 07 via Support Page');
/*!40000 ALTER TABLE `e_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_paticipation`
--

DROP TABLE IF EXISTS `e_paticipation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `e_paticipation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `venue` varchar(45) DEFAULT NULL,
  `volunteers` varchar(20) DEFAULT NULL,
  `dateofseminar` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_paticipation`
--

LOCK TABLES `e_paticipation` WRITE;
/*!40000 ALTER TABLE `e_paticipation` DISABLE KEYS */;
INSERT INTO `e_paticipation` VALUES (1,'Project Reprentation','University of Economics & Finance','3','07/02/2022'),(2,'English Cerificate','University of Economics & Finance','1','12/30/2022'),
									(3,'Internship Registration','University of Economics & Finance','1','06/29/2022'),(4,'Group Project Submission','University of Economics & Finance','5','06/27/2022');
/*!40000 ALTER TABLE `e_paticipation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_submitted`
--

DROP TABLE IF EXISTS `e_submitted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `e_submitted` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `totalsurvey` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_submitted`
--

LOCK TABLES `e_submitted` WRITE;
/*!40000 ALTER TABLE `e_submitted` DISABLE KEYS */;
INSERT INTO `e_submitted` VALUES (1,'Ruth Carman',1),(2,'Ruth Carman',1),(3,'Ruth Carman',1);
/*!40000 ALTER TABLE `e_submitted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_support`
--

DROP TABLE IF EXISTS `e_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `e_support` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  `subject` varchar(245) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_support`
--

LOCK TABLES `e_support` WRITE;
/*!40000 ALTER TABLE `e_support` DISABLE KEYS */;
INSERT INTO `e_support` VALUES (1,'Ruth','Carman','student','Good for Future References');
/*!40000 ALTER TABLE `e_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_surveyfaculty`
--

DROP TABLE IF EXISTS `e_surveyfaculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `e_surveyfaculty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `volunteer` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `venue` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_surveyfaculty`
--

LOCK TABLES `e_surveyfaculty` WRITE;
/*!40000 ALTER TABLE `e_surveyfaculty` DISABLE KEYS */;
INSERT INTO `e_surveyfaculty` VALUES (1,'Pollution','Soil Pollution Causes','10','06/30/2022','UEF');
/*!40000 ALTER TABLE `e_surveyfaculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_surveystudent`
--

DROP TABLE IF EXISTS `e_surveystudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `e_surveystudent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(145) NOT NULL,
  `volunteer` varchar(25) NOT NULL,
  `Date` varchar(25) NOT NULL,
  `venue` varchar(145) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_surveystudent`
--

LOCK TABLES `e_surveystudent` WRITE;
/*!40000 ALTER TABLE `e_surveystudent` DISABLE KEYS */;
INSERT INTO `e_surveystudent` VALUES (1,'Pollution','Traffic Pollution Causes','40','06/30/2022','UEF'),(2,'Weather','Climate Change Causes','30','06/30/2022','UEF');
/*!40000 ALTER TABLE `e_surveystudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_user`
--

DROP TABLE IF EXISTS `e_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `e_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `roll_no` varchar(25) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `specification` varchar(45) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `roleid` bigint DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `dateofadmission` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_user`
--

LOCK TABLES `e_user` WRITE;
/*!40000 ALTER TABLE `e_user` DISABLE KEYS */;
INSERT INTO `e_user` VALUES (1,'Thai Tuan Duy','1','Administrator','ADMIN','A',1,'123',1,'06/30/2022'),
							(2,'Ninh Nhat Mai','1','Administrator','ADMIN','A',1,'123',1,'06/30/2022'),
							(3,'Nguyen Hong Quan','1','Administrator','ADMIN','A',1,'123',1,'06/30/2022'),
							(4,'Mark Manty','1','Master','Information Technology','Artificial Intelligence',2,'678',1,'06/29/2022'),
							(5,'Doris Wilson','2','Student','Bussiness Management','Econometrics',2,'678',1,'06/29/2022'),
							(6,'Edna Francis','3','Student','Physical Education','Vovinam',2,'678',1,'06/20/2022'),
							(7,'Ruth Carman','1','Undergraduate','Information Technology','Software Tester',3,'910',1,'06/01/2022'),
							(8,'RFlorence Vanlandingham','2','Student','Language','Japanese',3,'910',1,'06/09/2022'),
							(9,'Mary Belle Greenwell','3','Master','Economics','Accounting',3,'910',1,'06/18/2022');
/*!40000 ALTER TABLE `e_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-29 11:29:41
