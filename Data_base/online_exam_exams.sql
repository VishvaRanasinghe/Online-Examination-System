-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: online_exam
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `scode` varchar(200) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `instructions` text NOT NULL,
  PRIMARY KEY (`scode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES ('CD123','2022-01-31 19:00:00','2024-01-31 19:00:00','<p>acacsacacas</p>'),('cn2','2222-09-11 12:30:00','2222-09-11 12:45:00','<p>dytedyfkhgkjgkjgkg</p>'),('CS102','2022-01-31 19:00:00','2024-02-01 19:00:00','<p>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px; text-align: center;\"><strong>&nbsp;&nbsp;</strong><span style=\"text-decoration: underline;\"><strong> RULES FOR PARTICIPATION&nbsp; </strong><br /></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: black; mso-themecolor: text1;\">There will be negative marking.</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: black; mso-themecolor: text1;\">+4 for correct answer</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: black; mso-themecolor: text1;\">-1 for wrong answer</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: #c0504d; mso-themecolor: accent2;\">1.</span><span style=\"color: black; mso-themecolor: text1;\"> Only Individual Participation is allowed (No Teams).</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: #c0504d; mso-themecolor: accent2;\">2.</span><span style=\"color: black; mso-themecolor: text1;\"> The event will be held online as mentioned in the timeline.</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: black; mso-themecolor: text1;\"><span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp; </span>So, all the participants are requested to register on the Examshow website</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: black; mso-themecolor: text1;\"><span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp; </span><a href=\"http://examshow.codeshare.in\">Register Here</a> for participation.</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: #c0504d; mso-themecolor: accent2;\">3.</span><span style=\"color: black; mso-themecolor: text1;\"> The top two Participants will be awarded the goodies.</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: #c0504d; mso-themecolor: accent2;\">4.</span><span style=\"color: black; mso-themecolor: text1;\"><span style=\"mso-spacerun: yes;\">&nbsp; </span>Only students who are studying in any collage or school eligible to take part.</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: #c0504d; mso-themecolor: accent2;\">5.</span><span style=\"color: black; mso-themecolor: text1;\"> If any team(s) is found posting answers in any forum will be immediately disqualified without any prior notice.</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: #c0504d; mso-themecolor: accent2;\">6.</span><span style=\"color: black; mso-themecolor: text1;\"> Any team found having fake information regarding qualification criteria or profile information shall be immediately disqualified.</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: #c0504d; mso-themecolor: accent2;\">7.</span><span style=\"color: black; mso-themecolor: text1;\"><span style=\"mso-spacerun: yes;\">&nbsp; </span>Any team which attempts to hack/deliberately crash the judging system will be immediately disqualified.</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"padding-left: 30px;\"><span style=\"mso-bookmark: _GoBack;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: #c0504d; mso-themecolor: accent2;\">8.</span><span style=\"color: black; mso-themecolor: text1;\"> The decision of the organizers in declaring the results will be final and will be binding to all. No queries in this regard will be entertained</span></strong></span><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: black; mso-themecolor: text1;\">.</span></strong></p>'),('CS103','2023-09-10 14:45:00','2023-11-10 14:45:00','<p>&nbsp;</p>'),('dr2','2023-11-10 10:10:00','2023-11-10 10:20:00','<p>bhsbjwbkjc</p>'),('Java1','2023-10-24 05:15:00','2023-10-24 05:45:00','<p>what is java?</p>'),('OOP1','2023-11-12 11:10:00','2023-11-12 11:20:00','<p style=\"text-align: center;\">safkjndskfnaksfnlknmlkfnsnfkjkdsfds<strong>efwwe<em>safas</em></strong></p>'),('qw','2023-11-27 11:10:00','2023-11-27 11:20:00','<p>fdhgfdkhgj</p>'),('RCS111','2021-07-12 10:00:00','2021-07-12 11:30:00','<p><strong>Guidelines for students</strong></p>'),('SE1','2023-11-12 11:10:00','2023-11-12 11:20:00','<p>asfsdadsvsv</p>'),('we2','2023-11-12 11:10:00','2023-11-12 11:20:00','<p>sfcvfdsvvs</p>');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 15:30:36
