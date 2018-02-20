-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: miacolleges
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `accountants`
--

DROP TABLE IF EXISTS `accountants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountants`
--

LOCK TABLES `accountants` WRITE;
/*!40000 ALTER TABLE `accountants` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (7,'Admin','admin','schooladmin@miacolleges.com','482c811da5d5b4bc6d497ffa98491e38','','yes','2018-01-20 22:57:56','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendence_type`
--

DROP TABLE IF EXISTS `attendence_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence_type`
--

LOCK TABLES `attendence_type` WRITE;
/*!40000 ALTER TABLE `attendence_type` DISABLE KEYS */;
INSERT INTO `attendence_type` VALUES (1,'Present','<b class=\"text text-success\">P</b>','yes','2016-06-23 23:41:37','0000-00-00 00:00:00'),(2,'Late with excuse','<b class=\"text text-warning\">E</b>','yes','2016-10-11 17:05:44','0000-00-00 00:00:00'),(3,'Late','<b class=\"text text-warning\">L</b>','yes','2016-06-23 23:42:28','0000-00-00 00:00:00'),(4,'Absent','<b class=\"text text-danger\">A</b>','yes','2016-10-11 17:05:40','0000-00-00 00:00:00'),(5,'Holiday','H','yes','2016-10-11 17:05:01','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `attendence_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_issues`
--

DROP TABLE IF EXISTS `book_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_issues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT '0',
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_issues`
--

LOCK TABLES `book_issues` WRITE;
/*!40000 ALTER TABLE `book_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isbn_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rack_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `publish` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `available` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (7,'Boy below 10','no','2017-03-18 19:32:19','0000-00-00 00:00:00'),(17,'Boys 10 to 15','no','2017-05-16 02:27:26','0000-00-00 00:00:00'),(27,'Girls below 10','no','2017-05-16 02:27:36','0000-00-00 00:00:00'),(37,'Girls 10 to 15','no','2017-05-16 02:27:41','0000-00-00 00:00:00'),(47,'Adults','no','2017-05-16 02:27:44','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_sections`
--

DROP TABLE IF EXISTS `class_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8437 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_sections`
--

LOCK TABLES `class_sections` WRITE;
/*!40000 ALTER TABLE `class_sections` DISABLE KEYS */;
INSERT INTO `class_sections` VALUES (5457,137,397,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5467,137,9657,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5477,137,9667,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5487,137,9677,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5497,137,9687,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5507,137,9697,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5517,137,9707,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5527,137,9717,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5537,137,9727,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5547,137,9737,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5557,137,9747,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5567,137,9757,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5577,137,9767,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5587,137,9777,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5597,137,9787,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5607,137,9797,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5617,137,9807,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5627,137,9817,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5637,137,9827,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5647,137,9837,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5657,137,407,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5667,137,9857,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5677,137,9867,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5687,137,9877,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5697,137,9887,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5707,137,9897,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5717,137,9907,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5727,137,9917,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5737,137,9927,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5747,137,9937,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5757,137,9947,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5767,137,9957,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5777,137,9967,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5787,137,9977,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5797,137,9987,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5807,137,9997,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5817,137,10007,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5827,137,10017,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5837,137,10027,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5847,137,10037,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5857,137,10047,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5867,137,10057,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5877,137,417,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5887,137,10077,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5897,137,10087,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5907,137,10097,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5917,137,10107,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5927,137,10117,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5937,137,10127,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5947,137,10137,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5957,137,10147,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5967,137,10157,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5977,137,10167,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5987,137,10177,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(5997,137,10187,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6007,137,10197,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6017,137,10207,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6027,137,10217,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6037,137,10227,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6047,137,10237,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6057,137,10247,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6067,137,10257,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6077,137,10267,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6087,137,10277,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6097,137,10287,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6107,137,10297,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6117,137,10307,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6127,137,10317,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6137,137,10327,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6147,137,10337,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6157,137,10347,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6167,137,10357,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6177,137,10367,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6187,137,10377,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6197,137,10387,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6207,137,10397,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6217,137,10407,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6227,137,10417,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6237,137,10427,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6247,137,10437,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6257,137,10447,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6267,137,10457,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6277,137,10467,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6287,137,10477,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6297,137,10487,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6307,137,10497,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6317,137,10507,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6327,137,10517,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6337,137,10527,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6347,137,10537,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6357,137,10547,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6367,137,10557,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6377,137,10567,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6387,137,10577,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6397,137,10587,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6407,137,10597,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6417,137,10607,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6427,137,10617,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6437,137,10627,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6447,137,10637,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6457,137,10647,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6467,137,10657,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6477,137,10667,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6487,137,10677,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6497,137,10687,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6507,137,10697,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6517,137,10707,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6527,137,10717,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6537,137,10727,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6547,137,10737,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6557,137,10747,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6567,137,10757,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6577,137,10767,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6587,137,10777,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6597,137,10787,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6607,137,10797,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6617,137,10807,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6627,137,10817,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6637,137,10827,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6647,137,10837,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6657,137,10847,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6667,137,10857,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6677,137,10867,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6687,137,10877,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6697,137,10887,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6707,137,10897,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6717,137,10907,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6727,137,10917,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6737,137,10927,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6747,137,10937,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6757,137,10947,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6767,137,10957,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6777,137,10967,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6787,137,10977,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6797,137,10987,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6807,137,10997,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6817,137,11007,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6827,137,11017,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6837,137,11027,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6847,137,11037,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6857,137,11047,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6867,137,11057,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6877,137,11067,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6887,137,11077,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6897,137,11087,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6907,137,11097,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6917,137,11107,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6927,137,11117,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6937,137,11127,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6947,137,11137,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6957,137,11147,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6967,137,11157,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6977,137,11167,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6987,137,11177,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(6997,137,11187,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(7007,137,11197,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(7017,137,11207,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(7027,137,11217,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(7037,137,11227,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(7047,137,11237,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(7057,137,11247,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(7067,137,11257,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(7077,137,427,'no','2017-10-11 03:31:07','0000-00-00 00:00:00'),(7087,147,437,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7097,147,11287,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7107,147,11297,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7117,147,11307,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7127,147,11317,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7137,147,11327,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7147,147,11337,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7157,147,11347,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7167,147,11357,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7177,147,11367,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7187,147,11377,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7197,147,11387,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7207,147,447,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7217,147,11407,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7227,147,11417,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7237,147,11427,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7247,147,11437,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7257,147,11447,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7267,147,11457,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7277,147,11467,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7287,147,11477,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7297,147,11487,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7307,147,11497,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7317,147,11507,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7327,147,11517,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7337,147,11527,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7347,147,11537,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7357,147,11547,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7367,147,11557,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7377,147,11567,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7387,147,11577,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7397,147,11587,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7407,147,11597,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7417,147,11607,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7427,147,11617,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7437,147,11627,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7447,147,11637,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7457,147,11647,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7467,147,11657,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7477,147,11667,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7487,147,11677,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7497,147,11687,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7507,147,11697,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7517,147,11707,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7527,147,11717,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7537,147,11727,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7547,147,11737,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7557,147,11747,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7567,147,11757,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7577,147,11767,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7587,147,11777,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7597,147,11787,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7607,147,11797,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7617,147,11807,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7627,147,11817,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7637,147,11827,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7647,147,11837,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7657,147,11847,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7667,147,11857,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7677,147,11867,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7687,147,11877,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7697,147,11887,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7707,147,11897,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7717,147,11907,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7727,147,11917,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7737,147,11927,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7747,147,11937,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7757,147,11947,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7767,147,11957,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7777,147,11967,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7787,147,11977,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7797,147,11987,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7807,147,11997,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7817,147,12007,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7827,147,12017,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7837,147,12027,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7847,147,12037,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7857,147,12047,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7867,147,12057,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7877,147,12067,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7887,147,12077,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7897,147,12087,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7907,147,12097,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7917,147,12107,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7927,147,12117,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7937,147,12127,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7947,147,12137,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7957,147,12147,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7967,147,12157,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7977,147,12167,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7987,147,457,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(7997,147,12187,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(8007,147,12197,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(8017,147,12207,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(8027,147,12217,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(8037,147,12227,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(8047,147,12237,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(8057,147,12247,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(8067,147,12257,'no','2017-10-11 03:31:49','0000-00-00 00:00:00'),(8077,157,467,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8087,157,12277,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8097,157,12287,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8107,157,12297,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8117,157,12307,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8127,157,12317,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8137,157,12327,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8147,157,12337,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8157,157,12347,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8167,157,12357,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8177,157,12367,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8187,157,12377,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8197,157,12387,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8207,157,12397,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8217,157,477,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8227,157,12417,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8237,157,12427,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8247,157,12437,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8257,157,12447,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8267,157,12457,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8277,157,12467,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8287,157,12477,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8297,157,12487,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8307,157,12497,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8317,157,12507,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8327,157,12517,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8337,157,12527,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8347,157,12537,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8357,157,12547,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8367,157,12557,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8377,157,12567,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8387,157,12577,'no','2017-10-11 03:31:52','0000-00-00 00:00:00'),(8397,167,487,'no','2017-10-15 00:52:31','0000-00-00 00:00:00'),(8407,167,497,'no','2017-10-15 00:52:31','0000-00-00 00:00:00'),(8417,137,507,'no','2018-01-31 00:43:36','0000-00-00 00:00:00'),(8427,167,517,'no','2018-01-31 00:50:53','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `class_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (137,'MIA Quran College','no','2017-07-17 04:25:18','0000-00-00 00:00:00'),(147,'MIA Islamic College','no','2017-07-17 04:29:19','0000-00-00 00:00:00'),(157,'MIAArabic Language','no','2018-02-01 03:14:20','0000-00-00 00:00:00'),(167,'MIA Madrasah','no','2017-07-17 04:29:45','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `file` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_config`
--

DROP TABLE IF EXISTS `email_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_config`
--

LOCK TABLES `email_config` WRITE;
/*!40000 ALTER TABLE `email_config` DISABLE KEYS */;
INSERT INTO `email_config` VALUES (1,'sendmail','','','','','','','2017-12-04 22:33:22');
/*!40000 ALTER TABLE `email_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_results`
--

DROP TABLE IF EXISTS `exam_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendence` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `exam_schedule_id` (`exam_schedule_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_results`
--

LOCK TABLES `exam_results` WRITE;
/*!40000 ALTER TABLE `exam_results` DISABLE KEYS */;
INSERT INTO `exam_results` VALUES (7,'pre',7,12737,50.00,NULL,'no','2018-02-01 03:05:32','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `exam_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_schedules`
--

DROP TABLE IF EXISTS `exam_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `teacher_subject_id` (`teacher_subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_schedules`
--

LOCK TABLES `exam_schedules` WRITE;
/*!40000 ALTER TABLE `exam_schedules` DISABLE KEYS */;
INSERT INTO `exam_schedules` VALUES (7,11,7,17,'2018-03-09','12:00 PM','02:00 PM','EX101',100,40,NULL,'no','2018-02-01 03:04:30','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `exam_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (7,'Term 1 Exam',0,'','no','2018-02-01 03:03:34','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_head`
--

DROP TABLE IF EXISTS `expense_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_head`
--

LOCK TABLES `expense_head` WRITE;
/*!40000 ALTER TABLE `expense_head` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_groups`
--

DROP TABLE IF EXISTS `fee_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_groups`
--

LOCK TABLES `fee_groups` WRITE;
/*!40000 ALTER TABLE `fee_groups` DISABLE KEYS */;
INSERT INTO `fee_groups` VALUES (7,'MIA Quran College - 3 Days','MIA Quran College Term Fees ','no','2018-01-20 23:04:26'),(17,'MIA Quran College - 2 Days','MIA Quran College - 2 Days Term fees','no','2018-01-20 23:04:41'),(27,'MIA Madrasah','MIA Madrasah Term fees','no','2018-01-20 23:05:00'),(37,'MIA Islamic College','MIA Islamic College','no','2018-02-02 21:11:07'),(47,'MIA Islamic College - 2 Subjects','MIA Islamic College - 2 Subjects','no','2018-01-20 23:05:31'),(57,'MIA Islamic College - 3 Subjects','MIA Islamic College - 3 Subjects','no','2018-01-20 23:05:52'),(67,'MIA Islamic College - 4 Subjects','MIA Islamic College - 4 Subjects','no','2018-01-20 23:06:03'),(77,'MIA Islamic College - 5 Subjects','MIA Islamic College - 5 Subjects','no','2018-01-20 23:06:14'),(87,'MIA Islamic College - 6 Subjects','MIA Islamic College - 6 Subjects','no','2018-01-20 23:06:24'),(97,'Term Book and Admin Fee','','no','2018-01-31 01:01:11');
/*!40000 ALTER TABLE `fee_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_groups_feetype`
--

DROP TABLE IF EXISTS `fee_groups_feetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_groups_feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sibling_discount` decimal(10,2) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fee_session_group_id` (`fee_session_group_id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `feetype_id` (`feetype_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_groups_feetype`
--

LOCK TABLES `fee_groups_feetype` WRITE;
/*!40000 ALTER TABLE `fee_groups_feetype` DISABLE KEYS */;
INSERT INTO `fee_groups_feetype` VALUES (267,227,37,7,11,'2018-02-28',100.00,'no','2018-02-02 00:41:50',0.00,NULL,NULL),(337,287,37,7,11,'2018-02-28',180.00,'no','2018-02-02 21:12:57',0.00,NULL,NULL),(347,297,37,7,11,'2018-02-28',240.00,'no','2018-02-02 21:13:22',0.00,NULL,NULL),(357,307,37,7,11,'2018-02-28',280.00,'no','2018-02-02 21:13:38',0.00,NULL,NULL),(367,317,37,7,11,'2018-02-28',350.00,'no','2018-02-02 21:14:01',0.00,NULL,NULL),(377,327,37,7,11,'2018-02-28',420.00,'no','2018-02-02 21:14:17',0.00,NULL,NULL),(387,337,7,7,11,'2018-02-28',200.00,'no','2018-02-02 21:15:03',20.00,NULL,NULL),(397,347,27,7,11,'2018-02-28',150.00,'no','2018-02-02 21:15:20',10.00,NULL,NULL);
/*!40000 ALTER TABLE `fee_groups_feetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_receipt_no`
--

DROP TABLE IF EXISTS `fee_receipt_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_receipt_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_receipt_no`
--

LOCK TABLES `fee_receipt_no` WRITE;
/*!40000 ALTER TABLE `fee_receipt_no` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_receipt_no` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_session_groups`
--

DROP TABLE IF EXISTS `fee_session_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_session_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_count` int(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_session_groups`
--

LOCK TABLES `fee_session_groups` WRITE;
/*!40000 ALTER TABLE `fee_session_groups` DISABLE KEYS */;
INSERT INTO `fee_session_groups` VALUES (227,37,11,'no','2018-02-02 02:46:03',147,0,1),(287,37,11,'no','2018-02-02 21:12:57',147,0,2),(297,37,11,'no','2018-02-02 21:13:22',147,0,3),(307,37,11,'no','2018-02-02 21:13:38',147,0,4),(317,37,11,'no','2018-02-02 21:14:01',147,0,5),(327,37,11,'no','2018-02-02 21:14:35',147,0,6),(337,7,11,'no','2018-02-02 21:15:03',137,0,0),(347,27,11,'no','2018-02-02 21:15:20',167,0,0);
/*!40000 ALTER TABLE `fee_session_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feecategory`
--

DROP TABLE IF EXISTS `feecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feecategory`
--

LOCK TABLES `feecategory` WRITE;
/*!40000 ALTER TABLE `feecategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `feecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feemasters`
--

DROP TABLE IF EXISTS `feemasters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feemasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feemasters`
--

LOCK TABLES `feemasters` WRITE;
/*!40000 ALTER TABLE `feemasters` DISABLE KEYS */;
/*!40000 ALTER TABLE `feemasters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_discounts`
--

DROP TABLE IF EXISTS `fees_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_discounts`
--

LOCK TABLES `fees_discounts` WRITE;
/*!40000 ALTER TABLE `fees_discounts` DISABLE KEYS */;
INSERT INTO `fees_discounts` VALUES (27,11,'MIA Multi Program Discount','MIA-MULTI',30.00,NULL,'no','2018-01-20 23:03:35');
/*!40000 ALTER TABLE `fees_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feetype`
--

DROP TABLE IF EXISTS `feetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feetype`
--

LOCK TABLES `feetype` WRITE;
/*!40000 ALTER TABLE `feetype` DISABLE KEYS */;
INSERT INTO `feetype` VALUES (7,NULL,'Term Fees','TERMFEE','no','2018-02-03 00:17:41','0000-00-00 00:00:00','Term Fees'),(17,NULL,'Book Fee','BOOKFEE','no','2018-01-20 08:32:47','0000-00-00 00:00:00','Book Fee'),(27,NULL,'ADMISSION FEE','ADMINFEE','no','2018-01-31 01:00:23','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `feetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (7,'A',NULL,40.00,50.00,'','no','2018-02-01 03:07:55','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `intake` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_rooms`
--

DROP TABLE IF EXISTS `hostel_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostel_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT '0.00',
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_rooms`
--

LOCK TABLES `hostel_rooms` WRITE;
/*!40000 ALTER TABLE `hostel_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostel_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `documents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_head`
--

DROP TABLE IF EXISTS `income_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income_head` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_head`
--

LOCK TABLES `income_head` WRITE;
/*!40000 ALTER TABLE `income_head` DISABLE KEYS */;
/*!40000 ALTER TABLE `income_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_category` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_category`
--

LOCK TABLES `item_category` WRITE;
/*!40000 ALTER TABLE `item_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_issue`
--

DROP TABLE IF EXISTS `item_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` varchar(100) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(2) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` varchar(10) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_category_id` (`item_category_id`),
  CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_issue`
--

LOCK TABLES `item_issue` WRITE;
/*!40000 ALTER TABLE `item_issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_stock`
--

DROP TABLE IF EXISTS `item_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_stock`
--

LOCK TABLES `item_stock` WRITE;
/*!40000 ALTER TABLE `item_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_store`
--

DROP TABLE IF EXISTS `item_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_store` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_store`
--

LOCK TABLES `item_store` WRITE;
/*!40000 ALTER TABLE `item_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_supplier`
--

DROP TABLE IF EXISTS `item_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_supplier` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_supplier`
--

LOCK TABLES `item_supplier` WRITE;
/*!40000 ALTER TABLE `item_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang_keys`
--

DROP TABLE IF EXISTS `lang_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=817 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang_keys`
--

LOCK TABLES `lang_keys` WRITE;
/*!40000 ALTER TABLE `lang_keys` DISABLE KEYS */;
INSERT INTO `lang_keys` VALUES (1,'session','no','2016-03-09 16:24:39','0000-00-00 00:00:00'),(2,'school_name','no','2016-03-09 16:34:28','0000-00-00 00:00:00'),(3,'email','no','2016-03-09 16:34:48','0000-00-00 00:00:00'),(6,'roll_no','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(7,'first_name','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(8,'last_name','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(9,'class','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(10,'section','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(11,'admission_date','no','2017-04-02 01:07:35','0000-00-00 00:00:00'),(12,'mobile_no','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(13,'date_of_birth','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(15,'religion','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(16,'category','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(17,'current_address','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(18,'permanent_address','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(23,'bank_account_no','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(24,'bank_name','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(25,'ifsc_code','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(27,'guardian_name','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(28,'guardian_relation','no','2016-03-12 19:13:05','0000-00-00 00:00:00'),(29,'guardian_phone','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(30,'guardian_address','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(31,'select_image','no','2001-12-30 09:59:30','0000-00-00 00:00:00'),(32,'import_excel','no','2001-12-30 10:03:11','0000-00-00 00:00:00'),(33,'export_format','no','2001-12-30 10:03:11','0000-00-00 00:00:00'),(34,'generate_pdf','no','2001-12-30 10:03:11','0000-00-00 00:00:00'),(35,'add_fees','no','2016-06-24 13:34:31','0000-00-00 00:00:00'),(37,'search','no','2016-03-12 19:17:08','0000-00-00 00:00:00'),(39,'fee_category','no','2016-03-12 19:29:03','0000-00-00 00:00:00'),(40,'fee_type','no','2016-03-12 19:29:03','0000-00-00 00:00:00'),(43,'add_fees_master','no','2016-03-12 19:30:10','0000-00-00 00:00:00'),(44,'fees_master_list','no','2016-03-12 19:30:10','0000-00-00 00:00:00'),(45,'add_fees_type','no','2016-03-12 19:31:38','0000-00-00 00:00:00'),(46,'fees_type_list','no','2016-03-12 19:31:38','0000-00-00 00:00:00'),(48,'edit','no','2016-03-12 19:33:10','0000-00-00 00:00:00'),(50,'category_list','no','2016-03-12 19:34:32','0000-00-00 00:00:00'),(51,'add_category','no','2016-03-12 19:34:32','0000-00-00 00:00:00'),(52,'session_list','no','2016-03-12 19:35:15','0000-00-00 00:00:00'),(53,'add_session','no','2016-03-12 19:35:15','0000-00-00 00:00:00'),(54,'class_list','no','2016-03-12 19:35:53','0000-00-00 00:00:00'),(56,'section_list','no','2016-03-12 19:36:20','0000-00-00 00:00:00'),(57,'add_section','no','2016-03-12 19:36:20','0000-00-00 00:00:00'),(61,'student','no','2016-03-12 19:38:08','0000-00-00 00:00:00'),(63,'language_list','no','2016-03-12 19:39:44','0000-00-00 00:00:00'),(64,'add_another_language','no','2016-03-12 19:39:44','0000-00-00 00:00:00'),(65,'created_at','no','2016-03-12 20:15:20','0000-00-00 00:00:00'),(66,'save','no','2001-12-30 09:51:24','0000-00-00 00:00:00'),(68,'select_logo','no','2001-12-30 10:17:56','0000-00-00 00:00:00'),(69,'school_logo','no','2001-12-30 10:19:33','0000-00-00 00:00:00'),(70,'manage','no','2001-12-30 10:19:33','0000-00-00 00:00:00'),(72,'edit_logo','no','2001-12-30 10:23:28','0000-00-00 00:00:00'),(73,'phone','no','2001-12-30 10:30:49','0000-00-00 00:00:00'),(74,'user_name','no','2001-12-30 10:38:51','0000-00-00 00:00:00'),(76,'sms_configuration','no','2001-12-30 10:43:00','0000-00-00 00:00:00'),(77,'sms_gateway_url','no','2016-10-26 21:19:35','0000-00-00 00:00:00'),(78,'status','no','2001-12-30 10:43:52','0000-00-00 00:00:00'),(79,'action','no','2001-12-30 10:44:03','0000-00-00 00:00:00'),(80,'change_status','no','2001-12-30 10:45:19','0000-00-00 00:00:00'),(82,'report','no','2001-12-30 10:56:58','0000-00-00 00:00:00'),(84,'select_criteria','no','2001-12-30 10:57:36','0000-00-00 00:00:00'),(85,'reset','no','2001-12-30 10:58:39','0000-00-00 00:00:00'),(86,'invoice_no','no','2001-12-30 11:00:59','0000-00-00 00:00:00'),(87,'fine','no','2001-12-30 11:00:59','0000-00-00 00:00:00'),(88,'type','no','2001-12-30 11:01:20','0000-00-00 00:00:00'),(89,'amount','no','2001-12-30 11:01:20','0000-00-00 00:00:00'),(90,'total','no','2001-12-30 11:01:26','0000-00-00 00:00:00'),(91,'discount','no','2001-12-30 11:01:36','0000-00-00 00:00:00'),(92,'balance_description','no','2001-12-30 11:02:55','0000-00-00 00:00:00'),(94,'no_search_record_found','no','2001-12-30 11:06:37','0000-00-00 00:00:00'),(101,'description','no','2001-12-30 11:13:49','0000-00-00 00:00:00'),(102,'fees_subtotal','no','2001-12-30 11:14:34','0000-00-00 00:00:00'),(104,'receipt_no','no','2001-12-30 11:17:56','0000-00-00 00:00:00'),(106,'grand_total','no','2001-12-30 11:19:14','0000-00-00 00:00:00'),(107,'deposit','no','2001-12-30 11:26:50','0000-00-00 00:00:00'),(108,'balance','no','2001-12-30 11:26:50','0000-00-00 00:00:00'),(115,'fee_master','no','2001-12-30 13:06:09','0000-00-00 00:00:00'),(116,'classes','no','2001-12-30 13:06:44','0000-00-00 00:00:00'),(117,'collection','no','2001-12-30 13:07:14','0000-00-00 00:00:00'),(121,'current_password','no','2001-12-31 04:59:11','0000-00-00 00:00:00'),(122,'new_password','no','2001-12-31 04:59:11','0000-00-00 00:00:00'),(123,'confirm_password','no','2016-09-15 10:29:51','0000-00-00 00:00:00'),(125,'date','no','2016-04-07 16:17:39','0000-00-00 00:00:00'),(137,'add_new_sms_configuration','no','2001-12-31 06:39:13','0000-00-00 00:00:00'),(141,'cancel','no','2016-03-27 02:50:39','0000-00-00 00:00:00'),(142,'exam_name','no','2016-03-27 04:16:34','0000-00-00 00:00:00'),(143,'subject_name','no','2016-03-29 19:05:15','0000-00-00 00:00:00'),(144,'subject_code','no','2016-03-29 19:05:15','0000-00-00 00:00:00'),(145,'grade_name','no','2016-03-29 23:21:20','0000-00-00 00:00:00'),(147,'percent','no','2016-03-29 23:21:41','0000-00-00 00:00:00'),(149,'percent_to','no','2016-03-29 23:22:00','0000-00-00 00:00:00'),(150,'note','no','2016-03-29 23:22:00','0000-00-00 00:00:00'),(151,'school_code','no','2016-10-25 15:12:26','0000-00-00 00:00:00'),(152,'sign_in','no','2016-04-07 08:27:27','0000-00-00 00:00:00'),(153,'name','no','2016-04-07 16:16:19','0000-00-00 00:00:00'),(155,'transport_fees','no','2016-04-12 16:56:04','0000-00-00 00:00:00'),(156,'fees_discount','no','2016-04-12 17:33:36','0000-00-00 00:00:00'),(157,'father_name','no','2016-04-13 01:52:14','0000-00-00 00:00:00'),(158,'father_phone','no','2016-04-13 01:52:14','0000-00-00 00:00:00'),(159,'father_occupation','no','2016-04-13 01:52:45','0000-00-00 00:00:00'),(160,'mother_name','no','2016-04-13 01:52:45','0000-00-00 00:00:00'),(161,'mother_phone','no','2016-04-13 01:56:08','0000-00-00 00:00:00'),(162,'mother_occupation','no','2016-04-13 01:56:08','0000-00-00 00:00:00'),(163,'guardian_occupation','no','2016-04-13 02:09:51','0000-00-00 00:00:00'),(164,'address','no','2016-04-14 11:32:42','0000-00-00 00:00:00'),(165,'language','no','2016-04-14 11:33:38','0000-00-00 00:00:00'),(166,'teacher_name','no','2016-04-19 10:55:06','0000-00-00 00:00:00'),(167,'password','no','2016-04-19 10:55:06','0000-00-00 00:00:00'),(168,'cast','no','2016-04-19 11:26:10','0000-00-00 00:00:00'),(169,'id','no','2016-04-19 13:04:10','0000-00-00 00:00:00'),(170,'admission_no','no','2016-04-22 23:02:46','0000-00-00 00:00:00'),(171,'enrollment_no','no','2016-04-22 23:20:48','0000-00-00 00:00:00'),(180,'total_paid_fees','no','2016-04-23 00:09:01','0000-00-00 00:00:00'),(181,'admission_discount','no','2016-04-23 00:09:41','0000-00-00 00:00:00'),(182,'total_balance','no','2016-04-23 00:09:41','0000-00-00 00:00:00'),(183,'student_name','no','2016-04-24 02:37:56','0000-00-00 00:00:00'),(184,'fees','no','2016-04-24 02:44:06','0000-00-00 00:00:00'),(185,'rte','no','2016-04-24 04:43:46','0000-00-00 00:00:00'),(186,'gender','no','2016-04-24 13:17:59','0000-00-00 00:00:00'),(187,'teacher_photo','no','2016-04-29 04:56:01','0000-00-00 00:00:00'),(188,'isbn','no','2016-05-02 03:07:51','0000-00-00 00:00:00'),(189,'publisher','no','2016-10-23 08:28:28','0000-00-00 00:00:00'),(190,'author','no','2016-05-02 03:08:19','0000-00-00 00:00:00'),(191,'qty','no','2016-05-02 03:08:19','0000-00-00 00:00:00'),(192,'bookprice','no','2016-10-18 05:11:54','0000-00-00 00:00:00'),(193,'postdate','no','2016-05-02 03:08:38','0000-00-00 00:00:00'),(197,'intake','no','2016-05-05 01:06:45','0000-00-00 00:00:00'),(199,'book_title','no','2016-05-05 04:59:27','0000-00-00 00:00:00'),(201,'no_of_vehicle','no','2016-05-09 23:20:40','0000-00-00 00:00:00'),(202,'fare','no','2016-05-09 23:20:48','0000-00-00 00:00:00'),(203,'content_type','no','2016-05-10 12:24:51','0000-00-00 00:00:00'),(205,'upload_date','no','2016-05-10 12:25:21','0000-00-00 00:00:00'),(206,'expenses','no','2016-05-10 22:14:03','0000-00-00 00:00:00'),(207,'student_information','no','2016-05-10 22:24:31','0000-00-00 00:00:00'),(208,'fees_collection','no','2016-05-10 22:35:29','0000-00-00 00:00:00'),(210,'examinations','no','2016-05-10 23:03:55','0000-00-00 00:00:00'),(211,'academics','no','2016-05-10 23:17:28','0000-00-00 00:00:00'),(212,'download_center','no','2016-05-10 23:17:28','0000-00-00 00:00:00'),(214,'library','no','2016-05-10 23:34:05','0000-00-00 00:00:00'),(215,'system_settings','no','2016-05-10 23:38:32','0000-00-00 00:00:00'),(216,'reports','no','2016-05-10 23:51:38','0000-00-00 00:00:00'),(217,'subject','no','2016-05-13 03:22:44','0000-00-00 00:00:00'),(218,'rack_no','no','2016-05-13 03:22:44','0000-00-00 00:00:00'),(220,'hostel','no','2016-05-13 06:42:27','0000-00-00 00:00:00'),(221,'hostel_name','no','2016-05-13 06:48:07','0000-00-00 00:00:00'),(222,'transport','no','2016-05-13 06:51:25','0000-00-00 00:00:00'),(223,'route_title','no','2016-05-13 06:57:39','0000-00-00 00:00:00'),(225,'date_to','no','2016-05-13 09:36:18','0000-00-00 00:00:00'),(227,'basic_information','no','2016-05-13 09:57:25','0000-00-00 00:00:00'),(228,'add','no','2016-05-13 10:00:46','0000-00-00 00:00:00'),(229,'list','no','2016-05-13 10:03:14','0000-00-00 00:00:00'),(230,'result','no','2016-05-13 10:06:46','0000-00-00 00:00:00'),(231,'pass','no','2016-05-13 10:07:34','0000-00-00 00:00:00'),(232,'fail','no','2016-05-13 10:07:34','0000-00-00 00:00:00'),(233,'continue','no','2016-05-17 14:42:00','0000-00-00 00:00:00'),(234,'leave','no','2016-05-13 10:08:28','0000-00-00 00:00:00'),(235,'exam_list','no','2016-05-17 12:47:56','0000-00-00 00:00:00'),(236,'exam','no','2016-05-17 12:50:35','0000-00-00 00:00:00'),(237,'start_time','no','2016-05-17 12:55:08','0000-00-00 00:00:00'),(238,'end_time','no','2016-05-17 12:55:08','0000-00-00 00:00:00'),(239,'room','no','2016-05-17 12:55:08','0000-00-00 00:00:00'),(240,'full_mark','no','2016-05-17 12:55:08','0000-00-00 00:00:00'),(241,'passing_marks','no','2016-05-17 12:55:08','0000-00-00 00:00:00'),(242,'room_no','no','2016-05-17 13:05:25','0000-00-00 00:00:00'),(245,'promote','no','2016-05-17 14:03:52','0000-00-00 00:00:00'),(246,'content_title','no','2016-05-18 21:50:20','0000-00-00 00:00:00'),(251,'teacher_list','no','2016-05-21 04:29:17','0000-00-00 00:00:00'),(252,'compose_new_message','no','2016-05-25 03:22:49','0000-00-00 00:00:00'),(253,'notice','no','2016-05-25 03:26:56','0000-00-00 00:00:00'),(254,'notice_date','no','2016-05-25 03:27:53','0000-00-00 00:00:00'),(255,'publish_on','no','2016-05-25 03:28:56','0000-00-00 00:00:00'),(256,'message_to','no','2016-05-25 03:30:54','0000-00-00 00:00:00'),(257,'parent','no','2016-05-25 03:33:55','0000-00-00 00:00:00'),(258,'teacher','no','2016-05-25 03:34:21','0000-00-00 00:00:00'),(259,'no_record_found','no','2016-05-25 03:47:21','0000-00-00 00:00:00'),(260,'teacher_detail','no','2016-05-25 05:22:21','0000-00-00 00:00:00'),(261,'subject_list','no','2016-05-25 06:03:17','0000-00-00 00:00:00'),(263,'create_category','no','2016-05-25 11:59:13','0000-00-00 00:00:00'),(264,'title','no','2016-05-26 01:01:44','0000-00-00 00:00:00'),(265,'message','no','2016-05-26 01:02:36','0000-00-00 00:00:00'),(266,'send','no','2016-05-26 01:43:32','0000-00-00 00:00:00'),(267,'previous_school_details','no','2016-05-26 05:53:02','0000-00-00 00:00:00'),(268,'upload_documents','no','2016-05-26 05:54:00','0000-00-00 00:00:00'),(270,'miscellaneous_details','no','2016-05-26 05:58:10','0000-00-00 00:00:00'),(272,'edit_notification','no','2016-05-26 07:22:03','0000-00-00 00:00:00'),(273,'guardian_details','no','2016-05-26 07:36:45','0000-00-00 00:00:00'),(274,'payment_id','no','2016-05-26 07:40:03','0000-00-00 00:00:00'),(275,'change_password','no','2016-05-26 07:45:33','0000-00-00 00:00:00'),(278,'notifications','no','2016-05-30 03:42:06','0000-00-00 00:00:00'),(279,'visible_to_all','no','2016-05-30 04:05:26','0000-00-00 00:00:00'),(280,'visibility','no','2016-05-30 04:06:16','0000-00-00 00:00:00'),(284,'communicate','no','2016-05-30 04:19:53','0000-00-00 00:00:00'),(285,'notice_board','no','2016-05-30 04:21:47','0000-00-00 00:00:00'),(286,'publish_date','no','2016-05-30 05:01:41','0000-00-00 00:00:00'),(287,'father','no','2016-06-01 03:21:38','0000-00-00 00:00:00'),(288,'mother','no','2016-06-01 03:21:47','0000-00-00 00:00:00'),(290,'not_scheduled','no','2016-06-07 13:50:48','0000-00-00 00:00:00'),(291,'import_student','no','2016-06-10 03:56:51','0000-00-00 00:00:00'),(292,'dl_sample_import','no','2016-06-10 04:03:13','0000-00-00 00:00:00'),(293,'select_csv_file','no','2016-06-10 04:10:49','0000-00-00 00:00:00'),(294,'date_format','no','2016-06-22 03:49:07','0000-00-00 00:00:00'),(295,'currency','no','2016-06-22 03:49:28','0000-00-00 00:00:00'),(296,'currency_symbol','no','2016-06-22 03:49:28','0000-00-00 00:00:00'),(297,'profile','no','2016-06-22 18:46:28','0000-00-00 00:00:00'),(298,'save_attendance','no','2016-06-22 18:56:58','0000-00-00 00:00:00'),(299,'full_marks','no','2016-06-24 06:10:24','0000-00-00 00:00:00'),(300,'obtain_marks','no','2016-06-24 06:10:24','0000-00-00 00:00:00'),(301,'total_marks','no','2016-06-24 06:18:37','0000-00-00 00:00:00'),(302,'current','no','2016-07-12 02:26:07','0000-00-00 00:00:00'),(303,'admission','no','2016-07-21 07:40:45','0000-00-00 00:00:00'),(305,'sibling','no','2016-08-07 02:32:13','0000-00-00 00:00:00'),(306,'details','no','2016-08-07 02:39:19','0000-00-00 00:00:00'),(309,'identification','no','2016-08-07 02:43:16','0000-00-00 00:00:00'),(310,'no','no','2016-08-07 02:45:33','0000-00-00 00:00:00'),(311,'delete','no','2016-08-07 03:28:55','0000-00-00 00:00:00'),(312,'documents','no','2016-08-07 03:33:52','0000-00-00 00:00:00'),(313,'payment','no','2016-08-07 03:36:56','0000-00-00 00:00:00'),(317,'no_transaction_found','no','2016-08-10 08:32:10','0000-00-00 00:00:00'),(318,'transport_fees_details','no','2016-08-10 08:35:57','0000-00-00 00:00:00'),(319,'collect_fees','no','2016-08-10 08:45:47','0000-00-00 00:00:00'),(320,'balance_details','no','2016-08-10 08:48:55','0000-00-00 00:00:00'),(321,'download_pdf','no','2016-08-10 09:05:40','0000-00-00 00:00:00'),(322,'student_fees_report','no','2016-08-10 09:23:18','0000-00-00 00:00:00'),(323,'total_fees','no','2016-08-10 09:26:53','0000-00-00 00:00:00'),(324,'paid_fees','no','2016-08-10 09:26:53','0000-00-00 00:00:00'),(325,'student_detail','no','2016-08-10 09:42:55','0000-00-00 00:00:00'),(327,'gross_fees','no','2016-08-10 09:45:26','0000-00-00 00:00:00'),(328,'balance_fees','no','2016-08-10 09:48:31','0000-00-00 00:00:00'),(329,'print_selected','no','2016-08-10 09:50:32','0000-00-00 00:00:00'),(330,'collect_transport_fees','no','2016-08-10 10:03:34','0000-00-00 00:00:00'),(331,'no_transport_fees_found','no','2016-08-10 10:05:30','0000-00-00 00:00:00'),(332,'total_transport_fees','no','2016-08-10 10:15:54','0000-00-00 00:00:00'),(333,'class_section','no','2016-08-10 10:19:24','0000-00-00 00:00:00'),(335,'other_discount','no','2016-08-10 10:38:43','0000-00-00 00:00:00'),(336,'search_transaction','no','2016-10-18 05:19:17','0000-00-00 00:00:00'),(337,'fees_collection_details','no','2016-08-10 10:48:09','0000-00-00 00:00:00'),(338,'expense_id','no','2016-08-10 10:54:24','0000-00-00 00:00:00'),(339,'expense_head','no','2016-08-10 10:51:43','0000-00-00 00:00:00'),(340,'expense_detail','no','2016-08-10 10:55:17','0000-00-00 00:00:00'),(341,'add_expense','no','2016-08-10 11:28:20','0000-00-00 00:00:00'),(342,'edit_expense','no','2016-08-10 11:33:33','0000-00-00 00:00:00'),(343,'expense_list','no','2016-08-10 11:37:48','0000-00-00 00:00:00'),(344,'expense_head_list','no','2016-08-10 11:45:58','0000-00-00 00:00:00'),(345,'edit_expense_head','no','2016-08-10 11:49:02','0000-00-00 00:00:00'),(347,'add_expense_head','no','2016-08-10 11:55:17','0000-00-00 00:00:00'),(348,'attendance_already_submitted_you_can_edit_record','no','2017-04-02 01:16:00','0000-00-00 00:00:00'),(349,'attendance_already_submitted_as_holiday','no','2017-04-02 01:16:00','0000-00-00 00:00:00'),(350,'you_can_edit_record','no','2016-08-10 23:11:54','0000-00-00 00:00:00'),(351,'attendance_saved_successfully','no','2017-04-02 01:16:00','0000-00-00 00:00:00'),(352,'holiday','no','2016-08-10 23:18:21','0000-00-00 00:00:00'),(353,'mark_as_holiday','no','2016-08-10 23:22:15','0000-00-00 00:00:00'),(354,'no_attendance_prepare','no','2016-08-10 23:42:18','0000-00-00 00:00:00'),(355,'add_exam','no','2016-08-11 00:09:04','0000-00-00 00:00:00'),(356,'view_status','no','2016-08-11 00:10:56','0000-00-00 00:00:00'),(357,'marks_register_prepared','no','2016-08-11 00:16:51','0000-00-00 00:00:00'),(358,'exam_scheduled','no','2016-08-11 00:16:51','0000-00-00 00:00:00'),(359,'submit','no','2016-08-11 00:30:47','0000-00-00 00:00:00'),(360,'edit_grade','no','2016-08-11 00:34:55','0000-00-00 00:00:00'),(361,'add_grade','no','2016-08-11 00:34:55','0000-00-00 00:00:00'),(362,'percent_upto','no','2016-08-11 00:36:04','0000-00-00 00:00:00'),(363,'percent_from','no','2016-08-11 00:36:04','0000-00-00 00:00:00'),(364,'grade_list','no','2016-08-11 00:39:49','0000-00-00 00:00:00'),(366,'assign_subject','no','2016-08-11 01:02:21','0000-00-00 00:00:00'),(368,'edit_teacher','no','2016-08-11 01:05:57','0000-00-00 00:00:00'),(369,'add_teacher','no','2016-08-11 01:22:14','0000-00-00 00:00:00'),(370,'add_subject','no','2016-08-11 01:30:48','0000-00-00 00:00:00'),(374,'edit_subject','no','2016-08-11 01:43:33','0000-00-00 00:00:00'),(375,'edit_class','no','2016-08-11 01:43:50','0000-00-00 00:00:00'),(377,'edit_section','no','2016-08-11 01:54:27','0000-00-00 00:00:00'),(378,'upload_content','no','2016-08-11 02:06:54','0000-00-00 00:00:00'),(380,'content_list','no','2016-08-11 02:30:03','0000-00-00 00:00:00'),(382,'available_for_all_classes','no','2016-10-23 07:26:48','0000-00-00 00:00:00'),(384,'content_file','no','2016-08-12 09:09:02','0000-00-00 00:00:00'),(385,'available_for','no','2016-08-12 09:09:02','0000-00-00 00:00:00'),(386,'my_children','no','2016-09-17 01:06:30','0000-00-00 00:00:00'),(387,'assignment_list','no','2016-08-12 09:15:21','0000-00-00 00:00:00'),(388,'study_material_list','no','2016-08-12 09:15:21','0000-00-00 00:00:00'),(389,'syllabus_list','no','2016-08-12 09:15:21','0000-00-00 00:00:00'),(390,'other_download_list','no','2016-08-12 09:15:21','0000-00-00 00:00:00'),(391,'book_details','no','2016-08-12 09:34:18','0000-00-00 00:00:00'),(392,'edit_book','no','2016-08-12 09:34:18','0000-00-00 00:00:00'),(393,'book_list','no','2016-08-12 09:36:33','0000-00-00 00:00:00'),(394,'route_list','no','2016-08-12 09:48:15','0000-00-00 00:00:00'),(395,'create_route','no','2016-08-12 09:48:15','0000-00-00 00:00:00'),(396,'edit_route','no','2016-08-12 09:48:15','0000-00-00 00:00:00'),(397,'add_hostel','no','2016-08-12 10:05:23','0000-00-00 00:00:00'),(398,'edit_hostel','no','2016-08-12 10:05:23','0000-00-00 00:00:00'),(399,'hostel_list','no','2016-08-12 10:05:23','0000-00-00 00:00:00'),(400,'print','no','2016-08-12 10:08:26','0000-00-00 00:00:00'),(401,'room_type','no','2016-08-12 10:13:23','0000-00-00 00:00:00'),(402,'add_room_type','no','2016-08-12 10:13:23','0000-00-00 00:00:00'),(403,'room_type_list','no','2016-08-12 10:13:23','0000-00-00 00:00:00'),(404,'edit_room_type','no','2016-08-12 10:13:23','0000-00-00 00:00:00'),(406,'edit_message','no','2016-08-12 10:28:45','0000-00-00 00:00:00'),(407,'select','no','2016-08-12 10:32:17','0000-00-00 00:00:00'),(408,'general_settings','no','2016-08-12 11:03:50','0000-00-00 00:00:00'),(410,'session_start_month','no','2016-08-12 11:04:48','0000-00-00 00:00:00'),(411,'edit_session','no','2016-08-12 11:17:13','0000-00-00 00:00:00'),(414,'paypal_setting','no','2016-08-12 11:50:26','0000-00-00 00:00:00'),(415,'paypal_username','no','2016-08-12 11:50:26','0000-00-00 00:00:00'),(416,'paypal_password','no','2016-08-12 11:50:26','0000-00-00 00:00:00'),(417,'paypal_signature','no','2016-08-12 11:50:26','0000-00-00 00:00:00'),(418,'paypal_email','no','2016-08-12 11:50:26','0000-00-00 00:00:00'),(419,'off','no','2016-08-12 11:50:43','0000-00-00 00:00:00'),(420,'on','no','2016-08-12 11:50:43','0000-00-00 00:00:00'),(421,'backup_history','no','2016-08-12 11:59:15','0000-00-00 00:00:00'),(422,'create_backup','no','2016-08-12 11:59:15','0000-00-00 00:00:00'),(423,'backup_files','no','2016-10-25 15:47:36','0000-00-00 00:00:00'),(424,'upload_from_local_directory','no','2016-08-12 12:03:51','0000-00-00 00:00:00'),(427,'restore','no','2016-08-12 17:04:46','0000-00-00 00:00:00'),(429,'class_fees_detail','no','2016-08-12 17:37:20','0000-00-00 00:00:00'),(430,'no_fees_found','no','2016-08-12 17:38:56','0000-00-00 00:00:00'),(431,'monthly_fees_collection','no','2016-08-12 17:43:22','0000-00-00 00:00:00'),(432,'monthly_expenses','no','2016-08-12 17:43:22','0000-00-00 00:00:00'),(433,'teachers','no','2016-08-12 17:43:22','0000-00-00 00:00:00'),(434,'students','no','2016-08-12 17:43:22','0000-00-00 00:00:00'),(436,'login_details','no','2016-08-12 17:57:20','0000-00-00 00:00:00'),(437,'academic_fees_detail','no','2016-08-12 18:33:38','0000-00-00 00:00:00'),(438,'document_list','no','2016-08-12 18:42:01','0000-00-00 00:00:00'),(439,'exam_timetable','no','2016-08-12 19:00:36','0000-00-00 00:00:00'),(440,'promote_in_session','no','2016-08-12 19:51:51','0000-00-00 00:00:00'),(441,'promote_students_in_next_session','no','2016-08-12 19:51:51','0000-00-00 00:00:00'),(442,'next_session_status','no','2016-08-12 19:55:11','0000-00-00 00:00:00'),(443,'no_result_prepare','no','2016-08-12 12:26:40','0000-00-00 00:00:00'),(444,'parent_guardian_detail','no','2016-08-12 12:59:14','0000-00-00 00:00:00'),(445,'add_more_details','no','2016-08-12 13:01:21','0000-00-00 00:00:00'),(446,'if_permanent_address_is_current_address','no','2016-10-05 16:58:39','0000-00-00 00:00:00'),(447,'address_details','no','2016-08-12 13:07:38','0000-00-00 00:00:00'),(449,'add_image','no','2016-08-12 13:25:27','0000-00-00 00:00:00'),(450,'payment_id_detail','no','2016-08-12 13:33:44','0000-00-00 00:00:00'),(451,'section_name','no','2016-08-12 14:03:59','0000-00-00 00:00:00'),(452,'fees_type','no','2016-08-12 14:32:20','0000-00-00 00:00:00'),(453,'edit_hostel_room','no','2016-08-16 07:07:57','0000-00-00 00:00:00'),(454,'room_no_name','no','2016-08-16 07:11:43','0000-00-00 00:00:00'),(455,'no_of_bed','no','2016-08-16 07:11:43','0000-00-00 00:00:00'),(456,'cost_per_bed','no','2016-08-16 07:11:43','0000-00-00 00:00:00'),(457,'hostel_room_list','no','2016-08-16 07:11:43','0000-00-00 00:00:00'),(458,'add_hostel_room','no','2016-08-16 07:16:48','0000-00-00 00:00:00'),(459,'mark_register','no','2016-08-16 07:21:56','0000-00-00 00:00:00'),(462,'fill_mark','no','2016-08-16 07:32:20','0000-00-00 00:00:00'),(463,'post_new_message','no','2016-08-16 07:35:16','0000-00-00 00:00:00'),(464,'by_date','no','2016-08-16 07:41:44','0000-00-00 00:00:00'),(465,'edit_category','no','2016-08-16 07:50:25','0000-00-00 00:00:00'),(466,'exam_not_allotted','no','2016-10-23 07:23:46','0000-00-00 00:00:00'),(467,'edit_exam','no','2016-08-16 08:01:50','0000-00-00 00:00:00'),(468,'add_class','no','2016-08-16 08:06:27','0000-00-00 00:00:00'),(469,'teacher_subject','no','2016-08-16 09:48:06','0000-00-00 00:00:00'),(470,'dd','no','2016-08-16 23:05:12','0000-00-00 00:00:00'),(471,'cash','no','2016-08-16 23:05:12','0000-00-00 00:00:00'),(472,'cheque','no','2016-08-16 23:05:12','0000-00-00 00:00:00'),(473,'revert','no','2016-08-16 23:40:47','0000-00-00 00:00:00'),(474,'view','no','2016-08-17 01:16:56','0000-00-00 00:00:00'),(475,'no_exam_prepare','no','2016-10-23 08:00:25','0000-00-00 00:00:00'),(476,'sms_setting','no','2016-08-22 08:45:46','0000-00-00 00:00:00'),(477,'smart_school','no','2016-08-24 23:41:16','0000-00-00 00:00:00'),(478,'user_login','no','2016-08-25 00:16:22','0000-00-00 00:00:00'),(479,'library_book','no','2016-09-06 19:10:41','0000-00-00 00:00:00'),(480,'transport_routes','no','2016-09-06 19:14:00','0000-00-00 00:00:00'),(481,'hostel_rooms','no','2016-09-06 19:17:22','0000-00-00 00:00:00'),(482,'exam_schedule','no','2016-09-06 19:27:03','0000-00-00 00:00:00'),(483,'subjects','no','2016-09-06 19:35:20','0000-00-00 00:00:00'),(484,'national_identification_no','no','2016-09-15 04:00:04','0000-00-00 00:00:00'),(485,'local_identification_no','no','2016-09-15 04:01:16','0000-00-00 00:00:00'),(486,'my_profile','no','2016-09-15 08:44:58','0000-00-00 00:00:00'),(487,'mode','no','2016-09-15 08:47:39','0000-00-00 00:00:00'),(488,'url','no','2016-09-15 11:24:06','0000-00-00 00:00:00'),(489,'month','no','2016-09-15 11:37:30','0000-00-00 00:00:00'),(490,'upload','no','2016-09-15 11:46:34','0000-00-00 00:00:00'),(491,'day','no','2016-10-24 00:02:31','0000-00-00 00:00:00'),(492,'class_timetable','no','2016-10-05 16:40:38','0000-00-00 00:00:00'),(493,'if_guardian_address_is_current_address','no','2016-10-07 17:12:51','0000-00-00 00:00:00'),(494,'admin_login','no','2016-10-17 21:08:26','0000-00-00 00:00:00'),(495,'date_from','no','2016-10-19 06:07:28','0000-00-00 00:00:00'),(496,'other','no','2016-10-25 15:01:08','0000-00-00 00:00:00'),(497,'search_by_keyword','no','2016-10-25 15:55:46','0000-00-00 00:00:00'),(499,'add_book','no','2016-10-31 11:52:54','0000-00-00 00:00:00'),(500,'edit_vehicle_on_route','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(501,'assign_vehicle_on_route','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(502,'vehicle_route_list','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(503,'route','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(504,'vehicle_routes','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(505,'edit_vehicle','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(506,'vehicle','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(507,'vehicle_list','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(508,'add_vehicle','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(509,'driver_contact','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(510,'driver_license','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(511,'driver_name','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(512,'vehicle_no','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(513,'vehicle_model','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(514,'logout','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(515,'year_made','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(516,'attendance','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(517,'show','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(519,'add_timetable','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(520,'edit_setting','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(521,'subject_type','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(522,'view_detail','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(523,'exam_status','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(524,'books','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(525,'report_card','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(526,'library_books','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(527,'no_vehicle_allotted_to_this_route','no','2017-04-02 01:16:00','0000-00-00 00:00:00'),(528,'Add/Edit','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(529,'language_rtl_text_mode','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(530,'clickatell_username','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(531,'clickatell_password','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(532,'clickatell_api_id','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(533,'clickatell_sms_gateway','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(534,'twilio_sms_gateway','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(535,'custom_sms_gateway','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(536,'twilio_account_sid','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(537,'authentication_token','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(538,'registered_phone_number','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(539,'username','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(540,'gateway_name','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(541,'theory','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(542,'practical','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(543,'present','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(544,'paid','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(545,'yes','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(546,'if_guardian_is','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(547,'current_session','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(548,'quick_links','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(549,'student_details','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(550,'student_admission','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(551,'student_categories','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(552,'promote_students','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(554,'fees_master','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(555,'search_fees_payment','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(556,'search_due_fees','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(557,'fees_statement','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(558,'balance_fees_report','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(559,'search_expense','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(560,'student_attendance','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(561,'attendance_by_date','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(562,'attendance_report','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(563,'marks_register','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(564,'marks_grade','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(565,'assign_subjects','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(566,'sections','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(567,'assignments','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(568,'study_material','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(569,'routes','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(570,'vehicles','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(571,'assign_vehicle','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(572,'send_message','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(573,'student_report','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(574,'transaction_report','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(575,'exam_marks_report','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(576,'session_setting','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(577,'backup / restore','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(578,'languages','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(579,'grade','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(580,'percentage','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(581,'fees_collection_&_expenses_for_session','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(582,'fees_receipt','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(583,'fees_category','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(584,'fees_collection_&_expenses_for','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(585,'library_-_books','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(586,'transport_-_routes','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(587,'hostel_-_rooms','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(588,'search_by_name,_roll_no,_enroll_no,_national_identification_no,_local_identification_no_etc..','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(589,'user_type','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(590,'login_url','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(591,'search_student','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(592,'student_lists','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(593,'detailed_view','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(595,'active','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(596,'syllabus','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(597,'other_downloads','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(598,'download','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(599,'unpaid','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(600,'enter_room_no','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(601,'male','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(602,'female','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(603,'expense_result','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(604,'view_schedule','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(605,'pdf','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(606,'not','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(607,'scheduled','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(609,'transaction_from','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(610,'to','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(611,'enabled','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(612,'disabled','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(613,'add_language','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(614,'no_description','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(615,'fees_category_list','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(616,'add_fee_category','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(617,'edit_fee_category','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(618,'late_with_excuse','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(619,'late','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(620,'absent','no','2017-04-01 23:39:09','0000-00-00 00:00:00'),(621,'issue_book','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(622,'member_type','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(623,'issue','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(624,'book','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(625,'members','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(626,'library_card_no','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(627,'return_date','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(628,'member_id','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(629,'book_issued','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(630,'timezone','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(631,'accountants','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(632,'librarians','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(633,'add_librarian','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(634,'librarian_photo','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(635,'librarian_list','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(636,'edit_librarian','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(637,'current_username','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(638,'new_username','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(639,'confirm_username','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(640,'change_username','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(641,'add_accountant','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(642,'accountant_list','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(643,'accountant_photo','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(644,'edit_accountant','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(645,'book_no','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(646,'users','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(647,'isbn_no','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(648,'issue_return','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(649,'add_student','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(650,'books_issue_return','no','2017-05-19 17:03:58','0000-00-00 00:00:00'),(651,'member_list','no','2017-05-29 18:11:22','0000-00-00 00:00:00'),(652,'issue_date','no','2017-05-29 18:11:22','0000-00-00 00:00:00'),(653,'surrender_membership','no','2017-05-29 18:11:22','0000-00-00 00:00:00'),(654,'fees_group','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(655,'add_fees_group','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(656,'fees_group_list','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(657,'due_date','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(658,'fees_code','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(659,'fees_discount','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(660,'edit_fees_discount','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(661,'discount_code','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(662,'fees_discount_list','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(663,'add_fees_discount','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(664,'all','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(665,'assign_fees_discount','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(666,'partial','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(667,'applied','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(668,'student_fees','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(669,'confirmation','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(670,'assign / view','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(671,'edit_fees_group','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(672,'edit_fees_type','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(673,'edit_fees_master','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(674,'apply_discount','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(675,'discount_of','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(676,'add_member','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(677,'email_setting','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(678,'email_engine','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(679,'smtp_username','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(680,'smtp_password','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(681,'smtp_server','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(682,'smtp_port','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(683,'smtp_security','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(684,'assigned','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(685,'admin_users','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(686,'add_admin_user','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(687,'admin_name','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(688,'admin_email','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(689,'admin_password','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(690,'forgot_password','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(691,'assign_fees_group','no','2017-08-02 13:49:55','0000-00-00 00:00:00'),(692,'accountant','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(693,'add_income','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(694,'add_item_store','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(695,'admin','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(696,'attach_document','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(697,'confirm_return','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(698,'contact_person_email','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(699,'contact_person_name','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(700,'edit_income_head','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(701,'edit_item_store','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(702,'edit_item_category','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(703,'group','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(704,'guardians','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(705,'income_head_list','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(706,'income_head','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(707,'income','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(708,'individual','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(709,'inventory','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(710,'issue_by','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(711,'issue_to','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(712,'issue_item','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(713,'item_store','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(714,'item_category','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(715,'item','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(716,'item_stock_list','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(717,'item_store_code','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(718,'item_store_name','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(719,'item_supplier_list','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(720,'librarian','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(721,'quantity','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(722,'reset_password','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(723,'return','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(724,'returned','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(725,'search_income','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(726,'sms','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(727,'store','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(728,'supplier','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(729,'add_item_category','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(730,'add_item','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(731,'add_item_stock','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(732,'add_item_supplier','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(733,'available_quantity','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(734,'contact_person_phone','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(735,'edit_item_supplier','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(736,'edit_item','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(737,'edit_income','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(738,'expense_details','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(739,'income_details','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(740,'income_id','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(741,'income_result','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(742,'issued_by','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(743,'item_category_list','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(744,'item_list','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(745,'item_store_list','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(746,'item_supplier','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(747,'contact_person','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(748,'send_through','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(749,'auth_Key','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(750,'current_theme','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(751,'guardian_email','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(752,'hash_key','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(753,'income_list','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(754,'income_result','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(755,'income_search','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(756,'MSG_91','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(757,'notification_setting','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(758,'sender_id','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(759,'SMS_country','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(760,'Text_Local','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(761,'user_log','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(762,'send_email_/_sms','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(763,'email_/_sms','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(764,'email_/_sms_log','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(765,'payment_methods','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(766,'all_users','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(767,'stripe_api_secret_key','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(768,'stripe_publishable_key','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(769,'payu_money_key','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(770,'payu_money_salt','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(771,'merchant_id','no','2017-12-14 12:24:50','0000-00-00 00:00:00'),(772,'working_key','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(773,'select_payment_gateway','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(774,'exam_result','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(775,'fees_submission','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(776,'absent_student','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(777,'login_credential','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(778,'role','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(779,'ip_address','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(780,'login_time','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(781,'user_agent','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(782,'click_to_return','no','2017-12-14 01:32:16','0000-00-00 00:00:00'),(787,'credit','yes','2018-02-01 02:02:49','0000-00-00 00:00:00'),(797,'debit','yes','2018-02-01 02:03:03','0000-00-00 00:00:00'),(807,'sibling_discount','yes','2018-02-02 00:23:13','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `lang_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang_pharses`
--

DROP TABLE IF EXISTS `lang_pharses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_pharses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) DEFAULT NULL,
  `key_id` int(11) DEFAULT NULL,
  `pharses` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`),
  KEY `key_id` (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74157 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang_pharses`
--

LOCK TABLES `lang_pharses` WRITE;
/*!40000 ALTER TABLE `lang_pharses` DISABLE KEYS */;
INSERT INTO `lang_pharses` VALUES (997,4,620,'Absent',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(998,4,437,'Academic Fees Detail',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(999,4,211,'Academics',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1000,4,79,'Action',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1001,4,595,'Active',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1002,4,228,'Add',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1003,4,64,'Add Another Language',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1004,4,499,'Add Book',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1005,4,51,'Add Category',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1006,4,468,'Add College',NULL,'no','2018-01-31 19:58:38','0000-00-00 00:00:00'),(1007,4,355,'Add Exam',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1008,4,341,'Add Expense',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1009,4,347,'Add Expense Head',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1010,4,616,'Add Fee Category',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1011,4,35,'Add Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1012,4,43,'Add Fees Master',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1013,4,45,'Add Fees Type',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1014,4,361,'Add Grade',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1015,4,397,'Add Hostel',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1016,4,458,'Add Hostel Room',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1017,4,449,'Add Image',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1018,4,613,'Add Language',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1019,4,445,'Add More Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1020,4,137,'Add New SMS Configuration',NULL,'no','2017-04-10 08:40:03','0000-00-00 00:00:00'),(1021,4,402,'Add Room Type',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1022,4,57,'Add Class',NULL,'no','2018-01-31 20:00:07','0000-00-00 00:00:00'),(1023,4,53,'Add Session',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1024,4,370,'Add Subject',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1025,4,369,'Add Teacher',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1026,4,519,'Add Timetable',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1027,4,508,'Add Vehicle',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1028,4,528,'Add/Edit',NULL,'no','2017-04-10 08:40:22','0000-00-00 00:00:00'),(1029,4,164,'Address',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1030,4,447,'Address Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1031,4,494,'Admin Login',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1032,4,303,'Admission',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1033,4,11,'Admission Date',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1034,4,181,'Admission Discount',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1035,4,170,'Admission Number',NULL,'no','2017-05-20 02:40:16','0000-00-00 00:00:00'),(1036,4,89,'Amount',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1038,4,366,'Assign Subject',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1039,4,565,'Assign Subjects',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1040,4,571,'Assign Vehicle',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1041,4,501,'Assign Vehicle On Route',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1042,4,387,'Assignment List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1043,4,567,'Assignments',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1044,4,516,'Attendance',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1045,4,349,'Attendance Already Submitted As Holiday',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1046,4,348,'Attendance Already Submitted You Can Edit Record',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1047,4,561,'Attendance By Date',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1048,4,562,'Attendance Report',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1049,4,351,'Attendance Saved Successfully',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1050,4,537,'Authentication Token',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1051,4,190,'Author',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1052,4,385,'Available For',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1053,4,382,'Available For All Colleges',NULL,'no','2018-01-31 19:58:38','0000-00-00 00:00:00'),(1054,4,577,'Backup / Restore',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1055,4,423,'Backup Files',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1056,4,421,'Backup History',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1057,4,108,'Balance',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1058,4,92,'Balance Description',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1059,4,320,'Balance Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1060,4,328,'Balance Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1061,4,558,'Balance Fees Report',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1062,4,23,'Bank Account Number',NULL,'no','2017-05-20 02:40:30','0000-00-00 00:00:00'),(1063,4,24,'Bank Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1064,4,227,'Basic Information',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1065,4,391,'Book Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1066,4,393,'Book List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1067,4,199,'Book Title',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1068,4,192,'Book Price',NULL,'no','2017-04-10 08:43:06','0000-00-00 00:00:00'),(1069,4,524,'Books',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1070,4,464,'By Date',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1071,4,141,'Cancel',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1072,4,471,'Cash',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1073,4,168,'Cast',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1074,4,16,'Category',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1075,4,50,'Category List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1076,4,275,'Change Password',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1077,4,80,'Change Status',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1078,4,472,'Cheque',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1079,4,9,'College',NULL,'no','2018-01-31 19:58:38','0000-00-00 00:00:00'),(1080,4,429,'College Fees Detail',NULL,'no','2018-01-31 19:58:38','0000-00-00 00:00:00'),(1081,4,54,'College List',NULL,'no','2018-01-31 19:58:38','0000-00-00 00:00:00'),(1082,4,333,'College Class',NULL,'no','2018-01-31 19:58:38','0000-00-00 00:00:00'),(1083,4,492,'Class Timetable',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1084,4,116,'Colleges',NULL,'no','2018-01-31 19:58:38','0000-00-00 00:00:00'),(1085,4,532,'Clickatell Api Id',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1086,4,531,'Clickatell Password',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1087,4,533,'Clickatell SMS Gateway',NULL,'no','2017-04-10 08:44:20','0000-00-00 00:00:00'),(1088,4,530,'Clickatell Username',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1089,4,319,'Collect Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1090,4,330,'Collect Transport Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1091,4,117,'Collection',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1092,4,284,'Communicate',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1093,4,252,'Compose New Message',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1094,4,123,'Confirm Password',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1095,4,384,'Content File',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1096,4,380,'Content List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1097,4,246,'Content Title',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1098,4,203,'Content Type',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1099,4,233,'Continue',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1100,4,456,'Cost Per Bed',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1101,4,422,'Create Backup',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1102,4,263,'Create Category',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1103,4,395,'Create Route',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1104,4,65,'Created At',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1105,4,295,'Currency',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1106,4,296,'Currency Symbol',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1107,4,302,'Current',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1108,4,17,'Current Address',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1109,4,121,'Current Password',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1110,4,547,'Current Session',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1111,4,535,'Custom SMS Gateway',NULL,'no','2017-04-10 08:45:00','0000-00-00 00:00:00'),(1112,4,125,'Date',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1113,4,294,'Date Format',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1114,4,495,'Date From',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1115,4,13,'Date Of Birth',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1116,4,225,'Date To',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1117,4,491,'Day',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1118,4,470,'DD',NULL,'no','2017-04-10 08:45:12','0000-00-00 00:00:00'),(1120,4,311,'Delete',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1121,4,107,'Deposit',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1122,4,101,'Description',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1123,4,593,'Detailed View',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1124,4,306,'Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1125,4,612,'Disabled',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1126,4,91,'Discount',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1127,4,292,'Download Sample Import File',NULL,'no','2017-04-10 08:46:06','0000-00-00 00:00:00'),(1128,4,438,'Document List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1129,4,312,'Documents',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1130,4,598,'Download',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1131,4,212,'Download Center',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1132,4,321,'Download PDF',NULL,'no','2017-04-10 08:46:23','0000-00-00 00:00:00'),(1133,4,509,'Driver Contact',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1134,4,510,'Driver License',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1135,4,511,'Driver Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1136,4,48,'Edit',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1137,4,392,'Edit Book',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1138,4,465,'Edit Category',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1139,4,375,'Edit College',NULL,'no','2018-01-31 19:58:38','0000-00-00 00:00:00'),(1140,4,467,'Edit Exam',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1141,4,342,'Edit Expense',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1142,4,345,'Edit Expense Head',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1143,4,617,'Edit Fee Category',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1144,4,360,'Edit Grade',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1145,4,398,'Edit Hostel',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1146,4,453,'Edit Hostel Room',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1147,4,72,'Edit Logo',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1148,4,406,'Edit Message',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1149,4,272,'Edit Notification',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1150,4,404,'Edit Room Type',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1151,4,396,'Edit Route',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1152,4,377,'Edit Class',NULL,'no','2018-01-31 20:00:07','0000-00-00 00:00:00'),(1153,4,411,'Edit Session',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1154,4,520,'Edit Setting',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1155,4,374,'Edit Subject',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1156,4,368,'Edit Teacher',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1157,4,505,'Edit Vehicle',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1158,4,500,'Edit Vehicle On Route',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1159,4,3,'Email',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1160,4,611,'Enabled',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1161,4,238,'End Time',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1162,4,171,'Enrollment Number',NULL,'no','2017-05-20 02:40:51','0000-00-00 00:00:00'),(1163,4,600,'Enter Room Number',NULL,'no','2017-05-20 02:41:06','0000-00-00 00:00:00'),(1164,4,236,'Exam',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1165,4,235,'Exam List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1166,4,575,'Exam Marks Report',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1167,4,142,'Exam Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1168,4,466,'Exam Not Allotted',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1169,4,482,'Exam Schedule',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1170,4,358,'Exam Scheduled',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1171,4,523,'Exam Status',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1172,4,439,'Exam Timetable',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1173,4,210,'Examinations',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1174,4,340,'Expense Detail',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1175,4,339,'Expense Head',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1176,4,344,'Expense Head List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1177,4,338,'Expense Id',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1178,4,343,'Expense List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1179,4,603,'Expense Result',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1180,4,206,'Expenses',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1181,4,33,'Export Format',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1182,4,232,'Fail',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1183,4,202,'Fare',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1184,4,287,'Father',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1185,4,157,'Father Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1186,4,159,'Father Occupation',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1187,4,158,'Father Phone',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1188,4,39,'Fee Category',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1189,4,115,'Fees Master',NULL,'no','2017-04-10 08:48:52','0000-00-00 00:00:00'),(1190,4,40,'Fees Type',NULL,'no','2017-04-10 08:48:56','0000-00-00 00:00:00'),(1191,4,184,'Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1192,4,583,'Fees Category',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1193,4,615,'Fees Category List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1195,4,208,'Fees Collection',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1196,4,584,'Fees Collection & Expenses For',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1197,4,581,'Fees Collection & Expenses For Session',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1198,4,337,'Fees Collection Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1199,4,156,'Fees Discount',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1200,4,554,'Fees Master',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1201,4,44,'Fees Master List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1202,4,582,'Fees Receipt',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1203,4,557,'Fees Statement',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1204,4,102,'Fees Subtotal',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1205,4,452,'Fees Type',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1206,4,46,'Fees Type List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1207,4,602,'Female',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1208,4,462,'Fill Marks',NULL,'no','2017-12-09 00:47:41','0000-00-00 00:00:00'),(1209,4,87,'Fine',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1210,4,7,'First Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1211,4,240,'Full Marks',NULL,'no','2017-12-09 00:48:08','0000-00-00 00:00:00'),(1212,4,299,'Full Marks',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1213,4,540,'Gateway Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1214,4,186,'Gender',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1215,4,408,'General Setting',NULL,'no','2017-12-14 13:46:34','0000-00-00 00:00:00'),(1216,4,34,'Generate PDF',NULL,'no','2017-04-10 08:50:09','0000-00-00 00:00:00'),(1217,4,579,'Grade',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1218,4,364,'Grade List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1219,4,145,'Grade Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1220,4,106,'Grand Total',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1221,4,327,'Gross Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1222,4,30,'Guardian Address',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1223,4,273,'Guardian Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1224,4,27,'Guardian Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1225,4,163,'Guardian Occupation',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1226,4,29,'Guardian Phone',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1227,4,28,'Guardian Relation',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1228,4,352,'Holiday',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1229,4,220,'Hostel',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1230,4,587,'Hostel - Rooms',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1231,4,399,'Hostel List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1232,4,221,'Hostel Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1233,4,457,'Hostel Room List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1234,4,481,'Hostel Rooms',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1235,4,169,'Id',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1236,4,309,'Identification',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1237,4,493,'If Guardian Address is Current Address',NULL,'no','2017-04-10 08:50:50','0000-00-00 00:00:00'),(1238,4,546,'If Guardian Is',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1239,4,446,'If Permanent Address is Current Address',NULL,'no','2017-04-10 08:50:57','0000-00-00 00:00:00'),(1240,4,25,'IFSC Code',NULL,'no','2017-04-10 08:51:18','0000-00-00 00:00:00'),(1241,4,32,'Import Excel',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1242,4,291,'Import Student',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1243,4,197,'Intake',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1244,4,86,'Invoice Number',NULL,'no','2017-05-20 02:41:26','0000-00-00 00:00:00'),(1245,4,188,'ISBN',NULL,'no','2017-04-10 08:51:32','0000-00-00 00:00:00'),(1246,4,165,'Language',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1247,4,63,'Language List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1248,4,529,'Language RTL Text Mode',NULL,'no','2017-04-10 08:51:53','0000-00-00 00:00:00'),(1249,4,578,'Languages',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1250,4,8,'Last Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1251,4,619,'Late',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1252,4,618,'Late With Excuse',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1253,4,234,'Leave',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1254,4,214,'Library',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1255,4,585,'Library - Books',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1256,4,479,'Library Book',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1257,4,526,'Library Books',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1258,4,229,'List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1259,4,485,'Local Identification Number',NULL,'no','2017-05-20 02:41:34','0000-00-00 00:00:00'),(1260,4,436,'Login Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1261,4,590,'Login Url',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1262,4,514,'Logout',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1263,4,601,'Male',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1264,4,70,'Manage',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1265,4,353,'Mark As Holiday',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1266,4,459,'Marks Register',NULL,'no','2017-12-09 00:48:46','0000-00-00 00:00:00'),(1267,4,564,'Marks Grade',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1268,4,563,'Marks Register',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1269,4,357,'Marks Register Prepared',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1270,4,265,'Message',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1271,4,256,'Message To',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1272,4,270,'Miscellaneous Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1273,4,12,'Mobile Number',NULL,'no','2017-05-20 02:41:39','0000-00-00 00:00:00'),(1274,4,487,'Mode',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1275,4,489,'Month',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1276,4,432,'Monthly Expenses',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1277,4,431,'Monthly Fees Collection',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1278,4,288,'Mother',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1279,4,160,'Mother Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1280,4,162,'Mother Occupation',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1281,4,161,'Mother Phone',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1282,4,386,'My Children',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1283,4,486,'My Profile',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1284,4,153,'Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1285,4,484,'National Identification Number',NULL,'no','2017-09-11 04:09:06','0000-00-00 00:00:00'),(1286,4,122,'New Password',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1287,4,442,'Next Session Status',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1288,4,310,'No',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1289,4,354,'No Attendance Prepared',NULL,'no','2017-04-10 08:53:26','0000-00-00 00:00:00'),(1290,4,614,'No Description',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1291,4,475,'No Exam Prepared',NULL,'no','2017-04-10 08:53:35','0000-00-00 00:00:00'),(1292,4,430,'No Fees Found',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1293,4,455,'Number Of Bed',NULL,'no','2017-05-19 22:43:42','0000-00-00 00:00:00'),(1294,4,201,'Number Of Vehicle',NULL,'no','2017-05-19 22:43:54','0000-00-00 00:00:00'),(1295,4,259,'No Record Found',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1296,4,443,'No Result Prepared',NULL,'no','2017-04-10 08:53:47','0000-00-00 00:00:00'),(1297,4,94,'No Search Record Found',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1298,4,317,'No Transaction Found',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1299,4,331,'No Transport Fees Found',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1300,4,527,'No vehicle allotted to this route',NULL,'no','2017-04-10 08:54:28','0000-00-00 00:00:00'),(1301,4,606,'Not',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1302,4,290,'Not Scheduled',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1303,4,150,'Note',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1304,4,253,'Notice',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1305,4,285,'Notice Board',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1306,4,254,'Notice Date',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1307,4,278,'Notifications',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1308,4,300,'Obtain Marks',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1309,4,419,'Off',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1310,4,420,'On',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1311,4,496,'Other',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1312,4,335,'Other Discount',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1313,4,390,'Other Download List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1314,4,597,'Other Downloads',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1315,4,544,'Paid',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1316,4,324,'Paid Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1317,4,257,'Parent',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1318,4,444,'Parent Guardian Detail',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1319,4,231,'Pass',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1320,4,241,'Passing Marks',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1321,4,167,'Password',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1322,4,313,'Payment',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1323,4,274,'Payment Id',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1324,4,450,'Payment Id Detail',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1325,4,418,'Paypal Email',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1326,4,416,'Paypal Password',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1327,4,414,'Paypal Setting',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1328,4,417,'Paypal Signature',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1329,4,415,'Paypal Username',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1330,4,605,'PDF',NULL,'no','2017-04-10 08:55:16','0000-00-00 00:00:00'),(1331,4,147,'Percent',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1332,4,363,'Percent From',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1333,4,149,'Percent To',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1334,4,362,'Percent Upto',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1335,4,580,'Percentage',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1336,4,18,'Permanent Address',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1337,4,73,'Phone',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1339,4,463,'Post New Message',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1340,4,193,'Post Date',NULL,'no','2017-04-10 08:55:57','0000-00-00 00:00:00'),(1341,4,542,'Practical',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1342,4,543,'Present',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1343,4,267,'Previous School Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1344,4,400,'Print',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1345,4,329,'Print Selected',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1346,4,297,'Profile',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1347,4,245,'Promote',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1348,4,440,'Promote In Session',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1349,4,552,'Promote Students',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1350,4,441,'Promote Students In Next Session',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1351,4,286,'Publish Date',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1352,4,255,'Publish On',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1353,4,189,'Publisher',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1354,4,191,'Qty',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1355,4,548,'Quick Links',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1356,4,218,'Rack Number',NULL,'no','2017-05-20 02:42:23','0000-00-00 00:00:00'),(1357,4,104,'Receipt Number',NULL,'no','2017-05-20 02:42:19','0000-00-00 00:00:00'),(1358,4,538,'Registered Phone Number',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1359,4,15,'Religion',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1360,4,82,'Report',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1361,4,525,'Report Card',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1362,4,216,'Reports',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1363,4,85,'Reset',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1364,4,427,'Restore',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1365,4,230,'Result',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1366,4,473,'Revert',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1367,4,6,'Roll Number',NULL,'no','2017-05-20 02:42:27','0000-00-00 00:00:00'),(1368,4,239,'Room',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1369,4,242,'Room Number',NULL,'no','2017-05-20 02:42:33','0000-00-00 00:00:00'),(1370,4,454,'Room Number / Name',NULL,'no','2017-05-19 22:45:35','0000-00-00 00:00:00'),(1371,4,401,'Room Type',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1372,4,403,'Room Type List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1373,4,503,'Route',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1374,4,394,'Route List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1375,4,223,'Route Title',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1376,4,569,'Routes',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1377,4,185,'RTE',NULL,'no','2017-04-10 08:57:10','0000-00-00 00:00:00'),(1378,4,66,'Save',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1379,4,298,'Save Attendance',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1380,4,607,'Scheduled',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1381,4,151,'School Code',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1383,4,69,'School Logo',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1384,4,2,'School Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1385,4,37,'Search',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1386,4,497,'Search By Keyword',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1387,4,588,'Search By Name, Roll Number, Enroll Number, National Id, Local Id Etc..',NULL,'no','2017-05-20 02:42:47','0000-00-00 00:00:00'),(1388,4,556,'Search Due Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1389,4,559,'Search Expense',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1390,4,555,'Search Fees Payment',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1391,4,591,'Search Student',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1392,4,336,'Search Transaction',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1393,4,10,'Class',NULL,'no','2018-01-31 20:00:07','0000-00-00 00:00:00'),(1394,4,56,'Class  List',NULL,'no','2018-01-31 20:00:07','0000-00-00 00:00:00'),(1395,4,451,'Class  Name',NULL,'no','2018-01-31 20:00:07','0000-00-00 00:00:00'),(1396,4,566,'Classes',NULL,'no','2018-01-31 20:00:07','0000-00-00 00:00:00'),(1397,4,407,'Select',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1398,4,84,'Select Criteria',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1399,4,293,'Select CSV File',NULL,'no','2017-04-10 08:58:35','0000-00-00 00:00:00'),(1400,4,31,'Select Image',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1401,4,68,'Select Logo',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1402,4,266,'Send',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1403,4,572,'Send Message',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1404,4,1,'Session',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1405,4,52,'Session List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1406,4,576,'Session Setting',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1407,4,410,'Session Start Month',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1408,4,517,'Show',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1409,4,305,'Sibling',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1411,4,152,'Sign In',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1412,4,477,'Smart School',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1413,4,76,'SMS Configuration',NULL,'no','2017-04-10 08:59:11','0000-00-00 00:00:00'),(1414,4,77,'SMS Gateway URL',NULL,'no','2017-05-19 22:47:13','0000-00-00 00:00:00'),(1415,4,476,'SMS Setting',NULL,'no','2017-04-10 08:59:22','0000-00-00 00:00:00'),(1416,4,237,'Start Time',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1417,4,78,'Status',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1418,4,61,'Student',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1419,4,550,'Student Admission',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1420,4,560,'Student Attendance',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1421,4,551,'Student Categories',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1422,4,325,'Student Detail',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1423,4,549,'Student Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1424,4,322,'Student Fees Report',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1425,4,207,'Student Information',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1426,4,592,'Students List',NULL,'no','2017-04-10 08:59:55','0000-00-00 00:00:00'),(1427,4,183,'Student Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1428,4,573,'Student Report',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1429,4,434,'Students',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1430,4,568,'Study Material',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1431,4,388,'Study Material List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1432,4,217,'Subject',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1433,4,144,'Subject Code',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1434,4,261,'Subject List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1435,4,143,'Subject Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1436,4,521,'Subject Type',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1437,4,483,'Subjects',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1438,4,359,'Submit',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1439,4,596,'Syllabus',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1440,4,389,'Syllabus List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1441,4,215,'System Settings',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1442,4,258,'Teacher',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1443,4,260,'Teacher Detail',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1444,4,251,'Teacher List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1445,4,166,'Teacher Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1446,4,187,'Teacher Photo',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1447,4,469,'Teacher Subject',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1448,4,433,'Teachers',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1449,4,541,'Theory',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1450,4,264,'Title',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1451,4,610,'To',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1452,4,90,'Total',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1453,4,182,'Total Balance',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1454,4,323,'Total Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1455,4,301,'Total Marks',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1456,4,180,'Total Paid Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1457,4,332,'Total Transport Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1458,4,609,'Transaction From',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1459,4,574,'Transaction Report',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1460,4,222,'Transport',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1461,4,586,'Transport - Routes',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1462,4,155,'Transport Fees',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1463,4,318,'Transport Fees Details',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1464,4,480,'Transport Routes',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1465,4,536,'Twilio Account SID',NULL,'no','2017-04-10 09:01:04','0000-00-00 00:00:00'),(1466,4,534,'Twilio SMS Gateway',NULL,'no','2017-04-10 09:01:10','0000-00-00 00:00:00'),(1467,4,88,'Type',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1468,4,599,'Unpaid',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1469,4,490,'Upload',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1470,4,378,'Upload Content',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1471,4,205,'Upload Date',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1472,4,268,'Upload Documents',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1473,4,424,'Upload From Local Directory',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1474,4,488,'URL',NULL,'no','2017-04-10 09:01:27','0000-00-00 00:00:00'),(1475,4,478,'User Login',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1476,4,74,'User Name',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1477,4,589,'User Type',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1478,4,539,'Username',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1479,4,506,'Vehicle',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1480,4,507,'Vehicle List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1481,4,513,'Vehicle Model',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1482,4,512,'Vehicle Number',NULL,'no','2017-05-20 02:42:56','0000-00-00 00:00:00'),(1483,4,502,'Vehicle Route List',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1484,4,504,'Vehicle Routes',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1485,4,570,'Vehicles',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1486,4,474,'View',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1487,4,522,'View Detail',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1488,4,604,'View Schedule',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1489,4,356,'View Status',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1490,4,280,'Visibility',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1491,4,279,'Visible To All',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1492,4,515,'Year Made',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1493,4,545,'Yes',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(1494,4,350,'You Can Edit Record',NULL,'no','2017-04-06 10:48:39','0000-00-00 00:00:00'),(36671,4,642,'Accountant List',NULL,'no','2017-05-19 22:33:47','0000-00-00 00:00:00'),(36672,4,643,'Accountant Photo',NULL,'no','2017-05-19 22:33:56','0000-00-00 00:00:00'),(36673,4,631,'Accountants',NULL,'no','2017-05-19 22:34:03','0000-00-00 00:00:00'),(36674,4,641,'Add Accountant',NULL,'no','2017-05-19 22:34:14','0000-00-00 00:00:00'),(36675,4,633,'Add Librarian',NULL,'no','2017-05-19 22:34:40','0000-00-00 00:00:00'),(36677,4,649,'Add Student',NULL,'no','2017-05-19 22:35:41','0000-00-00 00:00:00'),(36678,4,624,'Book',NULL,'no','2017-05-19 22:36:04','0000-00-00 00:00:00'),(36679,4,629,'Book Issued',NULL,'no','2017-05-19 22:36:13','0000-00-00 00:00:00'),(36680,4,645,'Book Number',NULL,'no','2017-05-19 22:36:30','0000-00-00 00:00:00'),(36681,4,650,'Books Issue Retun',NULL,'no','2017-05-19 22:36:49','0000-00-00 00:00:00'),(36682,4,640,'Change Username',NULL,'no','2017-05-19 22:37:05','0000-00-00 00:00:00'),(36683,4,639,'Confirm Username',NULL,'no','2017-05-19 22:37:39','0000-00-00 00:00:00'),(36684,4,637,'Current Username',NULL,'no','2017-05-19 22:38:06','0000-00-00 00:00:00'),(36685,4,644,'Edit Accountant',NULL,'no','2017-05-19 22:38:44','0000-00-00 00:00:00'),(36686,4,636,'Edit Librarian',NULL,'no','2017-05-19 22:39:30','0000-00-00 00:00:00'),(36687,4,647,'ISBN Number',NULL,'no','2017-05-19 22:40:25','0000-00-00 00:00:00'),(36688,4,623,'Issue',NULL,'no','2017-05-19 22:40:30','0000-00-00 00:00:00'),(36689,4,621,'Issue Book',NULL,'no','2017-05-19 22:40:40','0000-00-00 00:00:00'),(36690,4,648,'Issue Return',NULL,'no','2017-05-19 23:35:21','0000-00-00 00:00:00'),(36691,4,635,'Librarian List',NULL,'no','2017-05-19 22:41:31','0000-00-00 00:00:00'),(36692,4,634,'Librarian Photo',NULL,'no','2017-05-19 22:41:38','0000-00-00 00:00:00'),(36696,4,626,'Library Card Number',NULL,'no','2017-05-19 22:42:23','0000-00-00 00:00:00'),(36697,4,628,'Member Id',NULL,'no','2017-05-19 22:42:53','0000-00-00 00:00:00'),(36698,4,622,'Member Type',NULL,'no','2017-05-19 22:43:01','0000-00-00 00:00:00'),(36699,4,625,'Members',NULL,'no','2017-05-19 22:43:06','0000-00-00 00:00:00'),(36700,4,638,'New Username',NULL,'no','2017-05-19 22:43:23','0000-00-00 00:00:00'),(36701,4,627,'Return Date',NULL,'no','2017-05-19 22:45:06','0000-00-00 00:00:00'),(36702,4,630,'Timezone',NULL,'no','2017-05-19 22:47:48','0000-00-00 00:00:00'),(36703,4,646,'Users',NULL,'no','2017-05-19 22:48:21','0000-00-00 00:00:00'),(73979,4,653,'Surrender Membership',NULL,'no','2017-05-29 12:56:46','0000-00-00 00:00:00'),(73980,4,651,'Members List',NULL,'no','2017-05-29 12:57:05','0000-00-00 00:00:00'),(73981,4,651,'Members List',NULL,'no','2017-05-29 12:57:18','0000-00-00 00:00:00'),(73982,4,652,'Issue Date',NULL,'no','2017-05-29 12:57:35','0000-00-00 00:00:00'),(73983,4,686,'Add Admin User',NULL,'no','2017-08-04 13:21:48','0000-00-00 00:00:00'),(73984,4,663,'Add Fees Discount',NULL,'no','2017-08-04 13:22:03','0000-00-00 00:00:00'),(73985,4,663,'Add Fees Discount',NULL,'no','2017-08-04 13:22:05','0000-00-00 00:00:00'),(73986,4,655,'Add Fees Group',NULL,'no','2017-08-04 13:22:13','0000-00-00 00:00:00'),(73987,4,676,'Add Member',NULL,'no','2017-08-04 13:22:26','0000-00-00 00:00:00'),(73988,4,688,'Admin Email',NULL,'no','2017-08-04 13:22:39','0000-00-00 00:00:00'),(73989,4,687,'Admin Name',NULL,'no','2017-08-04 13:22:47','0000-00-00 00:00:00'),(73990,4,689,'Admin Password',NULL,'no','2017-08-04 13:22:57','0000-00-00 00:00:00'),(73991,4,685,'Admin Users',NULL,'no','2017-08-04 13:23:04','0000-00-00 00:00:00'),(73992,4,664,'All',NULL,'no','2017-08-04 13:23:10','0000-00-00 00:00:00'),(73993,4,667,'Applied',NULL,'no','2017-08-04 13:23:20','0000-00-00 00:00:00'),(73994,4,674,'Apply Discount',NULL,'no','2017-08-04 13:23:30','0000-00-00 00:00:00'),(73995,4,670,'Assign / View',NULL,'no','2017-08-04 13:23:46','0000-00-00 00:00:00'),(73996,4,665,'Assign Fees Discount',NULL,'no','2017-08-04 13:23:56','0000-00-00 00:00:00'),(73997,4,691,'Assign Fees Group',NULL,'no','2017-08-04 13:24:20','0000-00-00 00:00:00'),(73998,4,684,'Assigned',NULL,'no','2017-08-04 13:24:30','0000-00-00 00:00:00'),(73999,4,669,'Confirmation',NULL,'no','2017-08-04 13:24:42','0000-00-00 00:00:00'),(74000,4,669,'Confirmation',NULL,'no','2017-08-04 13:24:53','0000-00-00 00:00:00'),(74001,4,661,'Discount Code',NULL,'no','2017-08-04 13:25:04','0000-00-00 00:00:00'),(74002,4,675,'Discount of',NULL,'no','2017-08-04 13:25:19','0000-00-00 00:00:00'),(74003,4,657,'Due Date',NULL,'no','2017-08-04 13:25:27','0000-00-00 00:00:00'),(74004,4,660,'Edit Fees Discount',NULL,'no','2017-08-04 13:25:40','0000-00-00 00:00:00'),(74005,4,671,'Edit Fees Group',NULL,'no','2017-08-04 13:25:48','0000-00-00 00:00:00'),(74006,4,673,'Edit Fees Master',NULL,'no','2017-08-04 13:25:57','0000-00-00 00:00:00'),(74007,4,672,'Edit Fees Type',NULL,'no','2017-08-04 13:26:09','0000-00-00 00:00:00'),(74008,4,678,'Email Engine',NULL,'no','2017-08-04 13:26:20','0000-00-00 00:00:00'),(74009,4,677,'Email Setting',NULL,'no','2017-08-04 13:26:32','0000-00-00 00:00:00'),(74010,4,658,'Fees Code',NULL,'no','2017-08-04 13:26:42','0000-00-00 00:00:00'),(74011,4,659,'Fees Discount',NULL,'no','2017-08-04 13:26:58','0000-00-00 00:00:00'),(74012,4,662,'Fees Discount List',NULL,'no','2017-08-04 13:27:09','0000-00-00 00:00:00'),(74013,4,654,'Fees Group',NULL,'no','2017-08-04 13:27:17','0000-00-00 00:00:00'),(74014,4,656,'Fees Group List',NULL,'no','2017-08-04 13:27:25','0000-00-00 00:00:00'),(74015,4,690,'Forgot Password',NULL,'no','2017-08-04 13:27:36','0000-00-00 00:00:00'),(74016,4,666,'Partial',NULL,'no','2017-08-04 13:27:49','0000-00-00 00:00:00'),(74017,4,680,'SMTP Password',NULL,'no','2017-08-04 13:28:04','0000-00-00 00:00:00'),(74018,4,682,'SMTP Port',NULL,'no','2017-08-04 13:28:12','0000-00-00 00:00:00'),(74019,4,683,'SMTP Security',NULL,'no','2017-08-04 13:28:27','0000-00-00 00:00:00'),(74020,4,681,'SMTP Server',NULL,'no','2017-08-04 13:28:35','0000-00-00 00:00:00'),(74021,4,679,'SMTP Username',NULL,'no','2017-08-04 13:28:43','0000-00-00 00:00:00'),(74022,4,668,'Student Fees',NULL,'no','2017-08-04 13:28:51','0000-00-00 00:00:00'),(74023,4,692,'Accountant',NULL,'no','2017-10-31 09:10:23','0000-00-00 00:00:00'),(74024,4,693,'Add Income',NULL,'no','2017-10-31 09:10:40','0000-00-00 00:00:00'),(74025,4,732,'Add Item Supplier',NULL,'no','2017-12-14 11:45:30','0000-00-00 00:00:00'),(74026,4,731,'Add Item Stock',NULL,'no','2017-12-14 11:45:20','0000-00-00 00:00:00'),(74027,4,733,'Available Quantity',NULL,'no','2017-12-14 11:49:22','0000-00-00 00:00:00'),(74028,4,694,'Add Item Store',NULL,'no','2017-10-31 09:44:42','0000-00-00 00:00:00'),(74029,4,734,'Contact Person Phone',NULL,'no','2017-10-31 09:44:52','0000-00-00 00:00:00'),(74030,4,695,'Admin',NULL,'no','2017-10-31 09:45:16','0000-00-00 00:00:00'),(74031,4,696,'Attach Docement',NULL,'no','2017-10-31 09:45:45','0000-00-00 00:00:00'),(74032,4,696,'Attach Document',NULL,'no','2017-10-31 09:45:52','0000-00-00 00:00:00'),(74033,4,696,'Attach Document',NULL,'no','2017-10-31 09:46:10','0000-00-00 00:00:00'),(74034,4,750,'Current Theme',NULL,'no','2017-12-14 11:52:34','0000-00-00 00:00:00'),(74035,4,735,'Edit Item Supplier',NULL,'no','2017-12-14 11:53:52','0000-00-00 00:00:00'),(74036,4,748,'Send Through',NULL,'no','2017-12-14 12:33:14','0000-00-00 00:00:00'),(74037,4,698,'Contact Person Email',NULL,'no','2017-10-31 09:47:12','0000-00-00 00:00:00'),(74038,4,699,'Contact Person Name',NULL,'no','2017-10-31 09:47:26','0000-00-00 00:00:00'),(74039,4,736,'Edit Item',NULL,'no','2017-12-14 11:53:35','0000-00-00 00:00:00'),(74040,4,751,'Guardian Emal',NULL,'no','2017-12-14 11:59:33','0000-00-00 00:00:00'),(74041,4,700,'Edit Income Head',NULL,'no','2017-10-31 09:48:04','0000-00-00 00:00:00'),(74042,4,738,'Expense Details',NULL,'no','2017-12-14 11:57:52','0000-00-00 00:00:00'),(74043,4,702,'Edit Item Category',NULL,'no','2017-10-31 09:48:20','0000-00-00 00:00:00'),(74044,4,701,'Edit Item Store',NULL,'no','2017-10-31 09:48:29','0000-00-00 00:00:00'),(74045,4,737,'Edit Income',NULL,'no','2017-12-14 11:54:17','0000-00-00 00:00:00'),(74046,4,703,'Group',NULL,'no','2017-12-14 11:59:19','0000-00-00 00:00:00'),(74047,4,704,'Guardians',NULL,'no','2017-12-14 11:59:53','0000-00-00 00:00:00'),(74048,4,752,'Hash Key',NULL,'no','2017-12-14 12:00:04','0000-00-00 00:00:00'),(74049,4,705,'Income Head List',NULL,'no','2017-12-14 12:01:36','0000-00-00 00:00:00'),(74050,4,753,'Income List',NULL,'no','2017-12-14 12:02:19','0000-00-00 00:00:00'),(74051,4,708,'Individual',NULL,'no','2017-12-14 12:03:41','0000-00-00 00:00:00'),(74052,4,740,'Income Id',NULL,'no','2017-12-14 12:02:05','0000-00-00 00:00:00'),(74053,4,707,'Income',NULL,'no','2017-12-14 12:01:27','0000-00-00 00:00:00'),(74054,4,706,'Income Head',NULL,'no','2017-12-14 12:01:21','0000-00-00 00:00:00'),(74055,4,741,'Income Result',NULL,'no','2017-12-14 12:02:50','0000-00-00 00:00:00'),(74056,4,754,'Income Result',NULL,'no','2017-12-14 12:03:03','0000-00-00 00:00:00'),(74057,4,742,'Issued By',NULL,'no','2017-12-14 12:15:24','0000-00-00 00:00:00'),(74058,4,755,'Income Search',NULL,'no','2017-12-14 12:03:30','0000-00-00 00:00:00'),(74059,4,756,'MSG91',NULL,'no','2017-12-14 12:25:55','0000-00-00 00:00:00'),(74060,4,709,'Inventory',NULL,'no','2017-12-14 12:49:15','0000-00-00 00:00:00'),(74061,4,710,'Issue By',NULL,'no','2017-12-14 12:04:36','0000-00-00 00:00:00'),(74062,4,765,'Payment Methods',NULL,'no','2017-12-14 12:28:01','0000-00-00 00:00:00'),(74063,4,711,'Issue To',NULL,'no','2017-12-14 12:04:55','0000-00-00 00:00:00'),(74064,4,713,'Item Store',NULL,'no','2017-12-14 12:20:06','0000-00-00 00:00:00'),(74065,4,712,'Issue Item',NULL,'no','2017-12-14 12:04:47','0000-00-00 00:00:00'),(74066,4,743,'Item Category List',NULL,'no','2017-12-14 12:19:16','0000-00-00 00:00:00'),(74067,4,716,'Item Stock List',NULL,'no','2017-12-14 12:19:00','0000-00-00 00:00:00'),(74068,4,715,'Item',NULL,'no','2017-12-14 12:15:48','0000-00-00 00:00:00'),(74069,4,744,'Item List',NULL,'no','2017-12-14 12:19:49','0000-00-00 00:00:00'),(74070,4,745,'Item Store List',NULL,'no','2017-12-14 12:20:24','0000-00-00 00:00:00'),(74071,4,717,'Item Stock Code',NULL,'no','2017-12-14 12:20:13','0000-00-00 00:00:00'),(74072,4,714,'Item Category',NULL,'no','2017-12-14 12:19:39','0000-00-00 00:00:00'),(74073,4,718,'Item Store Name',NULL,'no','2017-12-14 12:20:30','0000-00-00 00:00:00'),(74074,4,746,'Item Supplier',NULL,'no','2017-12-14 12:20:41','0000-00-00 00:00:00'),(74075,4,719,'Item Supplier List',NULL,'no','2017-12-14 12:21:00','0000-00-00 00:00:00'),(74076,4,747,'Contact Person',NULL,'no','2017-12-14 11:50:53','0000-00-00 00:00:00'),(74077,4,720,'Librarian',NULL,'no','2017-12-14 12:21:17','0000-00-00 00:00:00'),(74078,4,721,'Quantity',NULL,'no','2017-12-14 12:29:46','0000-00-00 00:00:00'),(74079,4,632,'Librarians',NULL,'no','2017-10-31 09:55:12','0000-00-00 00:00:00'),(74080,4,757,'Notification Setting',NULL,'no','2017-12-14 12:27:15','0000-00-00 00:00:00'),(74081,4,757,'Notification Setting',NULL,'no','2017-12-14 12:27:29','0000-00-00 00:00:00'),(74082,4,723,'Return',NULL,'no','2017-12-14 12:31:11','0000-00-00 00:00:00'),(74083,4,724,'Returned',NULL,'no','2017-12-14 12:31:23','0000-00-00 00:00:00'),(74084,4,725,'Search Income',NULL,'no','2017-12-14 12:32:24','0000-00-00 00:00:00'),(74085,4,764,'Email / SMS Log',NULL,'no','2017-12-14 11:56:52','0000-00-00 00:00:00'),(74086,4,763,'Email / SMS',NULL,'no','2017-12-14 11:56:19','0000-00-00 00:00:00'),(74087,4,727,'Store',NULL,'no','2017-12-14 12:34:11','0000-00-00 00:00:00'),(74088,4,749,'Auth Key',NULL,'no','2017-12-14 11:48:27','0000-00-00 00:00:00'),(74089,4,759,'SMS Country',NULL,'no','2017-12-14 12:33:50','0000-00-00 00:00:00'),(74090,4,728,'Supplier',NULL,'no','2017-12-14 12:35:11','0000-00-00 00:00:00'),(74091,4,760,'Test Local',NULL,'no','2017-12-14 12:35:44','0000-00-00 00:00:00'),(74092,4,730,'Add Item',NULL,'no','2017-12-14 11:44:19','0000-00-00 00:00:00'),(74093,4,761,'User Log',NULL,'no','2017-12-14 12:36:49','0000-00-00 00:00:00'),(74094,4,761,'User Log',NULL,'no','2017-12-14 12:37:02','0000-00-00 00:00:00'),(74095,4,767,'Stripe API Secret Key',NULL,'no','2017-12-14 12:34:28','0000-00-00 00:00:00'),(74096,4,762,'Send Email / SMS',NULL,'no','2017-12-14 12:33:03','0000-00-00 00:00:00'),(74097,4,697,'Confirm Return',NULL,'no','2017-10-31 10:01:22','0000-00-00 00:00:00'),(74098,4,739,'Income Details',NULL,'no','2017-12-14 12:01:47','0000-00-00 00:00:00'),(74099,4,766,'All Users',NULL,'no','2017-12-14 11:47:37','0000-00-00 00:00:00'),(74100,4,758,'Sender ID',NULL,'no','2017-12-14 12:33:25','0000-00-00 00:00:00'),(74101,4,722,'Reset Password',NULL,'no','2017-12-14 12:30:10','0000-00-00 00:00:00'),(74102,4,726,'SMS',NULL,'no','2017-12-14 12:33:41','0000-00-00 00:00:00'),(74103,4,729,'Add Item Category',NULL,'no','2017-12-14 11:44:42','0000-00-00 00:00:00'),(74104,4,768,'Stripe Publishable Key',NULL,'no','2017-12-14 12:34:44','0000-00-00 00:00:00'),(74105,4,769,'PayU Money Key',NULL,'no','2017-12-14 12:28:39','0000-00-00 00:00:00'),(74106,4,776,'Absent Student',NULL,'no','2017-12-14 11:43:20','0000-00-00 00:00:00'),(74107,4,782,'Click To Return',NULL,'no','2017-12-14 11:50:36','0000-00-00 00:00:00'),(74108,4,774,'Exam Result',NULL,'no','2017-12-14 11:57:34','0000-00-00 00:00:00'),(74109,4,775,'Fees Submission',NULL,'no','2017-12-14 11:58:38','0000-00-00 00:00:00'),(74110,4,779,'IP Address',NULL,'no','2017-12-14 12:03:51','0000-00-00 00:00:00'),(74111,4,779,'IP Address',NULL,'no','2017-12-14 12:04:16','0000-00-00 00:00:00'),(74112,4,777,'Login Credential',NULL,'no','2017-12-14 12:21:47','0000-00-00 00:00:00'),(74113,4,780,'Login Time',NULL,'no','2017-12-14 12:21:56','0000-00-00 00:00:00'),(74114,4,771,'CCAvenue Merchant ID',NULL,'no','2017-12-14 12:54:55','0000-00-00 00:00:00'),(74115,4,770,'PayU Money Salt',NULL,'no','2017-12-14 12:29:10','0000-00-00 00:00:00'),(74116,4,778,'Role',NULL,'no','2017-12-14 12:31:40','0000-00-00 00:00:00'),(74117,4,773,'Select Payment Gateway',NULL,'no','2017-12-14 12:32:49','0000-00-00 00:00:00'),(74118,4,781,'User Agent',NULL,'no','2017-12-14 12:36:42','0000-00-00 00:00:00'),(74119,4,772,'CCAvenue Working Key',NULL,'no','2017-12-14 12:55:13','0000-00-00 00:00:00'),(74127,4,787,'Credit','Credit','yes','2018-02-01 02:03:47','0000-00-00 00:00:00'),(74137,4,797,'Debit','Debit','yes','2018-02-01 02:04:00','0000-00-00 00:00:00'),(74147,4,807,'Sibling Discount',NULL,'yes','2018-02-02 00:24:14','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `lang_pharses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Azerbaijan','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(2,'Albanian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(3,'Amharic','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(4,'English','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(5,'Arabic','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(7,'Afrikaans','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(8,'Basque','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(11,'Bengali','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(13,'Bosnian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(14,'Welsh','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(15,'Hungarian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(16,'Vietnamese','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(17,'Haitian (Creole)','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(18,'Galician','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(19,'Dutch','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(21,'Greek','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(22,'Georgian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(23,'Gujarati','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(24,'Danish','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(25,'Hebrew','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(26,'Yiddish','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(27,'Indonesian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(28,'Irish','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(29,'Italian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(30,'Icelandic','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(31,'Spanish','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(33,'Kannada','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(34,'Catalan','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(36,'Chinese','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(37,'Korean','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(38,'Xhosa','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(39,'Latin','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(40,'Latvian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(41,'Lithuanian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(43,'Malagasy','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(44,'Malay','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(45,'Malayalam','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(46,'Maltese','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(47,'Macedonian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(48,'Maori','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(49,'Marathi','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(51,'Mongolian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(52,'German','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(53,'Nepali','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(54,'Norwegian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(55,'Punjabi','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(57,'Persian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(59,'Portuguese','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(60,'Romanian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(61,'Russian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(62,'Cebuano','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(64,'Sinhala','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(65,'Slovakian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(66,'Slovenian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(67,'Swahili','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(68,'Sundanese','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(70,'Thai','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(71,'Tagalog','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(72,'Tamil','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(74,'Telugu','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(75,'Turkish','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(77,'Uzbek','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(79,'Urdu','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(80,'Finnish','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(81,'French','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(82,'Hindi','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(84,'Czech','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(85,'Swedish','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(86,'Scottish','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(87,'Estonian','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(88,'Esperanto','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(89,'Javanese','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00'),(90,'Japanese','no','no','2017-04-06 10:38:33','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libarary_members`
--

DROP TABLE IF EXISTS `libarary_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libarary_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libarary_members`
--

LOCK TABLES `libarary_members` WRITE;
/*!40000 ALTER TABLE `libarary_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `libarary_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarians`
--

DROP TABLE IF EXISTS `librarians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `librarians` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarians`
--

LOCK TABLES `librarians` WRITE;
/*!40000 ALTER TABLE `librarians` DISABLE KEYS */;
/*!40000 ALTER TABLE `librarians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `message` text,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT '0',
  `group_list` text,
  `user_list` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (124);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_setting`
--

DROP TABLE IF EXISTS `notification_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_setting`
--

LOCK TABLES `notification_setting` WRITE;
/*!40000 ALTER TABLE `notification_setting` DISABLE KEYS */;
INSERT INTO `notification_setting` VALUES (5,'student_admission','1','0','2017-12-09 17:28:44'),(6,'exam_result','1','0','2017-12-09 17:28:45'),(7,'fee_submission','1','0','2017-12-09 17:28:45'),(8,'absent_attendence','1','0','2017-12-09 17:28:45'),(9,'login_credential','1','0','2017-12-09 17:28:45');
/*!40000 ALTER TABLE `notification_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `api_username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_secret_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `api_publishable_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `api_password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_signature` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_demo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `account_no` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_notification`
--

DROP TABLE IF EXISTS `read_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_notification`
--

LOCK TABLES `read_notification` WRITE;
/*!40000 ALTER TABLE `read_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `read_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sch_settings`
--

DROP TABLE IF EXISTS `sch_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `lang_id` int(11) DEFAULT NULL,
  `dise_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `currency_symbol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_rtl` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `start_month` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `lang_id` (`lang_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sch_settings`
--

LOCK TABLES `sch_settings` WRITE;
/*!40000 ALTER TABLE `sch_settings` DISABLE KEYS */;
INSERT INTO `sch_settings` VALUES (1,'Imam Markaz','contact@miacolleges.com.au','0','Liverpool',4,'Imam Markaz','m/d/Y','AUD','$','disabled','Australia/Sydney',11,'1','1.png','blue.jpg','no','2018-01-21 02:24:51','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sch_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (397,'Children Quran College Classes','yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(407,'Adult Males Quran College Classes','yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(417,'Adult Female Quran College Classes','yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(437,'Adult Sisters Islamic Studies','yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(447,'Adult Brothers Islamic Studies','yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(457,'Adult Sisters Short Courses','yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(467,'Adult Male Arabic Class','yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(477,'Adult Female Arabic Class','yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(487,'Madrasah Quran Classes','no','2017-10-15 00:52:07','0000-00-00 00:00:00'),(497,'Madrasah Islamic Studies Classes','no','2017-10-15 00:52:17','0000-00-00 00:00:00'),(507,'QRME','no','2018-01-31 00:42:38','0000-00-00 00:00:00'),(517,'Young Adults Classes','no','2018-01-31 00:50:34','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_notification`
--

DROP TABLE IF EXISTS `send_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `visible_student` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_teacher` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_by` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_notification`
--

LOCK TABLES `send_notification` WRITE;
/*!40000 ALTER TABLE `send_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `send_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (11,'2018-Term1','no','2018-01-21 14:52:53','0000-00-00 00:00:00'),(27,'2018-Term2','no','2018-01-31 18:51:33','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_config`
--

DROP TABLE IF EXISTS `sms_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `authkey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `senderid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` text COLLATE utf8_unicode_ci,
  `username` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_config`
--

LOCK TABLES `sms_config` WRITE;
/*!40000 ALTER TABLE `sms_config` DISABLE KEYS */;
INSERT INTO `sms_config` VALUES (1,'msg_nineone','','','','',NULL,NULL,NULL,NULL,'disabled','2017-12-15 16:08:36','0000-00-00 00:00:00'),(2,'clickatell','','','','',NULL,'',NULL,'','disabled','2017-12-15 16:08:36','0000-00-00 00:00:00'),(3,'smscountry','','','','',NULL,'',NULL,'','disabled','2017-12-15 16:08:36','0000-00-00 00:00:00'),(4,'text_local','','','','',NULL,'',NULL,'','disabled','2017-12-15 16:08:36','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sms_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_attendences`
--

DROP TABLE IF EXISTS `student_attendences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `attendence_type_id` (`attendence_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_attendences`
--

LOCK TABLES `student_attendences` WRITE;
/*!40000 ALTER TABLE `student_attendences` DISABLE KEYS */;
INSERT INTO `student_attendences` VALUES (7,12757,'2018-01-30',1,'no','2018-02-01 02:59:52','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `student_attendences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_doc`
--

DROP TABLE IF EXISTS `student_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_doc`
--

LOCK TABLES `student_doc` WRITE;
/*!40000 ALTER TABLE `student_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_fees`
--

DROP TABLE IF EXISTS `student_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_fees`
--

LOCK TABLES `student_fees` WRITE;
/*!40000 ALTER TABLE `student_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_fees_deposite`
--

DROP TABLE IF EXISTS `student_fees_deposite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_fees_deposite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_fees_master_id` (`student_fees_master_id`),
  KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  CONSTRAINT `student_fees_deposite_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_fees_deposite_ibfk_2` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_fees_deposite`
--

LOCK TABLES `student_fees_deposite` WRITE;
/*!40000 ALTER TABLE `student_fees_deposite` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_fees_deposite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_fees_discounts`
--

DROP TABLE IF EXISTS `student_fees_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_fees_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fees_discount_id` (`fees_discount_id`),
  CONSTRAINT `student_fees_discounts_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_fees_discounts_ibfk_2` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_fees_discounts`
--

LOCK TABLES `student_fees_discounts` WRITE;
/*!40000 ALTER TABLE `student_fees_discounts` DISABLE KEYS */;
INSERT INTO `student_fees_discounts` VALUES (77,12747,27,'applied',NULL,NULL,'no','2018-01-31 01:04:29');
/*!40000 ALTER TABLE `student_fees_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_fees_master`
--

DROP TABLE IF EXISTS `student_fees_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_fees_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fee_session_group_id` (`fee_session_group_id`),
  CONSTRAINT `student_fees_master_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_fees_master_ibfk_2` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=677 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_fees_master`
--

LOCK TABLES `student_fees_master` WRITE;
/*!40000 ALTER TABLE `student_fees_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_fees_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_parent`
--

DROP TABLE IF EXISTS `student_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adhar_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `samagra_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_is` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_address` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12608 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_parent`
--

LOCK TABLES `student_parent` WRITE;
/*!40000 ALTER TABLE `student_parent` DISABLE KEYS */;
INSERT INTO `student_parent` VALUES (12587,NULL,NULL,NULL,NULL,NULL,'father','Smith','J','Computer','Mary','S','Home','Smith','','Father','J','Computer','','yes','2018-01-20 02:23:21','0000-00-00 00:00:00'),(9647,NULL,NULL,NULL,NULL,NULL,'','Dad of Abdullah AlShehri','',NULL,'Mom of Abdullah AlShehri','+61423 876 923',NULL,'Dad of Abdullah AlShehri','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9657,NULL,NULL,NULL,NULL,NULL,'','Dad of Ahmad Tasabehji','',NULL,'Mom of Ahmad Tasabehji','+61426859556',NULL,'Dad of Ahmad Tasabehji','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9667,NULL,NULL,NULL,NULL,NULL,'','Dad of Aiesha Tizani','',NULL,'Mom of Aiesha Tizani','+61401 474 740',NULL,'Dad of Aiesha Tizani','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9677,NULL,NULL,NULL,NULL,NULL,'','Dad of Ali Rima','',NULL,'Mom of Ali Rima','+61406811502',NULL,'Dad of Ali Rima','georgettem84@hotmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9687,NULL,NULL,NULL,NULL,NULL,'','Dad of Ali Teffaha','',NULL,'Mom of Ali Teffaha','+61416500600',NULL,'Dad of Ali Teffaha','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9697,NULL,NULL,NULL,NULL,NULL,'','Dad of Amel Jarrah','+61404789777',NULL,'Mom of Amel Jarrah','+61414662800',NULL,'Dad of Amel Jarrah','',NULL,'+61404789777','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9707,NULL,NULL,NULL,NULL,NULL,'','Dad of Aya Jarrah','',NULL,'Mom of Aya Jarrah','+61404 789 777',NULL,'Dad of Aya Jarrah','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9717,NULL,NULL,NULL,NULL,NULL,'','Dad of Diana Elmasri','',NULL,'Mom of Diana Elmasri','+61405299666',NULL,'Dad of Diana Elmasri','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9727,NULL,NULL,NULL,NULL,NULL,'','Dad of Hijjaz Abdulrahman','',NULL,'Mom of Hijjaz Abdulrahman','+61410044938',NULL,'Dad of Hijjaz Abdulrahman','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9737,NULL,NULL,NULL,NULL,NULL,'','Dad of Ibrahim Rima','',NULL,'Mom of Ibrahim Rima','+61424808598',NULL,'Dad of Ibrahim Rima','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9747,NULL,NULL,NULL,NULL,NULL,'','Dad of Ismaeel Raad','',NULL,'Mom of Ismaeel Raad','+61410 699 696',NULL,'Dad of Ismaeel Raad','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9757,NULL,NULL,NULL,NULL,NULL,'','Dad of Israa Rima','',NULL,'Mom of Israa Rima','+61424808598',NULL,'Dad of Israa Rima','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9767,NULL,NULL,NULL,NULL,NULL,'','Dad of Mariam Al Azzauui','',NULL,'Mom of Mariam Al Azzauui','+61469831413',NULL,'Dad of Mariam Al Azzauui','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9777,NULL,NULL,NULL,NULL,NULL,'','Dad of Mariam Elkassir','',NULL,'Mom of Mariam Elkassir','+61415926665',NULL,'Dad of Mariam Elkassir','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9787,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohammed Almahameed','',NULL,'Mom of Mohammed Almahameed','+61402135904',NULL,'Dad of Mohammed Almahameed','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9797,NULL,NULL,NULL,NULL,NULL,'','Dad of Mountaha Kobaitri','',NULL,'Mom of Mountaha Kobaitri','+61487423240',NULL,'Dad of Mountaha Kobaitri','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9807,NULL,NULL,NULL,NULL,NULL,'','Dad of Safiah Kammoun','',NULL,'Mom of Safiah Kammoun','+61403053619',NULL,'Dad of Safiah Kammoun','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9817,NULL,NULL,NULL,NULL,NULL,'','Dad of Sahil Oowise','',NULL,'Mom of Sahil Oowise','+61478360235',NULL,'Dad of Sahil Oowise','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9827,NULL,NULL,NULL,NULL,NULL,'','Dad of Tayyibah Sayeed','',NULL,'Mom of Tayyibah Sayeed','+61433772505',NULL,'Dad of Tayyibah Sayeed','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9837,NULL,NULL,NULL,NULL,NULL,'','Dad of Zaid Almahameed','',NULL,'Mom of Zaid Almahameed','+61402135904',NULL,'Dad of Zaid Almahameed','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9847,NULL,NULL,NULL,NULL,NULL,'','Dad of Aadiat Shamim','',NULL,'Mom of Aadiat Shamim','+61422807627',NULL,'Dad of Aadiat Shamim','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9857,NULL,NULL,NULL,NULL,NULL,'','Dad of Abdullah Rifai','',NULL,'Mom of Abdullah Rifai','+61424196646',NULL,'Dad of Abdullah Rifai','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9867,NULL,NULL,NULL,NULL,NULL,'','Dad of Abdulrahman Hamad','',NULL,'Mom of Abdulrahman Hamad','+61451979955',NULL,'Dad of Abdulrahman Hamad','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9877,NULL,NULL,NULL,NULL,NULL,'','Dad of Abu Bakr Abdelaziz','',NULL,'Mom of Abu Bakr Abdelaziz','+61435397197',NULL,'Dad of Abu Bakr Abdelaziz','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9887,NULL,NULL,NULL,NULL,NULL,'','Dad of AbuBakr Alam','0433 350 980',NULL,'Mom of AbuBakr Alam','',NULL,'Dad of AbuBakr Alam','',NULL,'0433 350 980','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9897,NULL,NULL,NULL,NULL,NULL,'','Dad of Abubakr Shaheer','',NULL,'Mom of Abubakr Shaheer','+61431641945',NULL,'Dad of Abubakr Shaheer','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9907,NULL,NULL,NULL,NULL,NULL,'','Dad of Adnaan Ali','',NULL,'Mom of Adnaan Ali','+61430337939',NULL,'Dad of Adnaan Ali','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9917,NULL,NULL,NULL,NULL,NULL,'','Dad of Ahmad Ali','',NULL,'Mom of Ahmad Ali','+61430337939',NULL,'Dad of Ahmad Ali','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9927,NULL,NULL,NULL,NULL,NULL,'','Dad of Amatullah Rifai','',NULL,'Mom of Amatullah Rifai','+61424196646',NULL,'Dad of Amatullah Rifai','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9937,NULL,NULL,NULL,NULL,NULL,'','Dad of Danyaal Zafar','',NULL,'Mom of Danyaal Zafar','+61422 560 982',NULL,'Dad of Danyaal Zafar','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9947,NULL,NULL,NULL,NULL,NULL,'','Dad of Gabriel Marjan','',NULL,'Mom of Gabriel Marjan','+61405018747',NULL,'Dad of Gabriel Marjan','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9957,NULL,NULL,NULL,NULL,NULL,'','Dad of Hadi Naghi','',NULL,'Mom of Hadi Naghi','+61420431711',NULL,'Dad of Hadi Naghi','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9967,NULL,NULL,NULL,NULL,NULL,'','Dad of Haldun Bajramovic','',NULL,'Mom of Haldun Bajramovic','+61411 117 112',NULL,'Dad of Haldun Bajramovic','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9977,NULL,NULL,NULL,NULL,NULL,'','Dad of Iqtidar ahmed','',NULL,'Mom of Iqtidar ahmed','+61481143115',NULL,'Dad of Iqtidar ahmed','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9987,NULL,NULL,NULL,NULL,NULL,'','Dad of Khalid Khalak','',NULL,'Mom of Khalid Khalak','+61426823007',NULL,'Dad of Khalid Khalak','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(9997,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohamed Anas Hamad','',NULL,'Mom of Mohamed Anas Hamad','+61451979955',NULL,'Dad of Mohamed Anas Hamad','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10007,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohammed Shaheer','',NULL,'Mom of Mohammed Shaheer','+61431641945',NULL,'Dad of Mohammed Shaheer','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10017,NULL,NULL,NULL,NULL,NULL,'','Dad of Muhammad AlKhateeb','',NULL,'Mom of Muhammad AlKhateeb','+61403490202',NULL,'Dad of Muhammad AlKhateeb','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10027,NULL,NULL,NULL,NULL,NULL,'','Dad of Munira AlKhateeb','',NULL,'Mom of Munira AlKhateeb','+61403490202',NULL,'Dad of Munira AlKhateeb','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10037,NULL,NULL,NULL,NULL,NULL,'','Dad of Mustafa AlKhateeb','',NULL,'Mom of Mustafa AlKhateeb','+61403490202',NULL,'Dad of Mustafa AlKhateeb','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10047,NULL,NULL,NULL,NULL,NULL,'','Dad of Noureldin Abdelaziz','',NULL,'Mom of Noureldin Abdelaziz','+61435397197',NULL,'Dad of Noureldin Abdelaziz','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10057,NULL,NULL,NULL,NULL,NULL,'','Dad of Zahi Naghi','',NULL,'Mom of Zahi Naghi','+61415 457 777',NULL,'Dad of Zahi Naghi','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10067,NULL,NULL,NULL,NULL,NULL,'','Dad of Ghazala Wahab','',NULL,'Mom of Ghazala Wahab','+61414437864',NULL,'Dad of Ghazala Wahab','ghazala@dr.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10077,NULL,NULL,NULL,NULL,NULL,'','Dad of Jasmine Akhter','',NULL,'Mom of Jasmine Akhter','+61422807627',NULL,'Dad of Jasmine Akhter','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10087,NULL,NULL,NULL,NULL,NULL,'','Dad of Ahmed Elzir','',NULL,'Mom of Ahmed Elzir','+61404257835',NULL,'Dad of Ahmed Elzir','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10097,NULL,NULL,NULL,NULL,NULL,'','Dad of Ali Elzir','',NULL,'Mom of Ali Elzir','+61404257835',NULL,'Dad of Ali Elzir','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10107,NULL,NULL,NULL,NULL,NULL,'','Dad of Amir Elzir','',NULL,'Mom of Amir Elzir','+61404257835',NULL,'Dad of Amir Elzir','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10117,NULL,NULL,NULL,NULL,NULL,'','Dad of Ayman Elzir ','',NULL,'Mom of Ayman Elzir ','+61404257835',NULL,'Dad of Ayman Elzir ','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10127,NULL,NULL,NULL,NULL,NULL,'','Dad of Omar Kataieh','',NULL,'Mom of Omar Kataieh','+61420588509',NULL,'Dad of Omar Kataieh','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10137,NULL,NULL,NULL,NULL,NULL,'','Dad of Amir Khan','',NULL,'Mom of Amir Khan','+61413376790',NULL,'Dad of Amir Khan','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10147,NULL,NULL,NULL,NULL,NULL,'','Dad of Ezadin Ismail','',NULL,'Mom of Ezadin Ismail','+61405477458',NULL,'Dad of Ezadin Ismail','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10157,NULL,NULL,NULL,NULL,NULL,'','Dad of Kashif Ghous','',NULL,'Mom of Kashif Ghous','+61412875167',NULL,'Dad of Kashif Ghous','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10167,NULL,NULL,NULL,NULL,NULL,'','Dad of Khaled Najjar','',NULL,'Mom of Khaled Najjar','+61422 333 112',NULL,'Dad of Khaled Najjar','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10177,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohammad Meqdad Munayem','',NULL,'Mom of Mohammad Meqdad Munayem','+61425325075',NULL,'Dad of Mohammad Meqdad Munayem','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10187,NULL,NULL,NULL,NULL,NULL,'','Dad of Ali Muhieddine','',NULL,'Mom of Ali Muhieddine','+61432111476',NULL,'Dad of Ali Muhieddine','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10197,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohammad Houda','',NULL,'Mom of Mohammad Houda','+61424712212',NULL,'Dad of Mohammad Houda','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10207,NULL,NULL,NULL,NULL,NULL,'','Dad of Joy Pese','',NULL,'Mom of Joy Pese','+61474911349',NULL,'Dad of Joy Pese','byjoy_@outlook.com.au',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10217,NULL,NULL,NULL,NULL,NULL,'','Dad of Manal Hassan','',NULL,'Mom of Manal Hassan','+61426545444',NULL,'Dad of Manal Hassan','mahr5610@gmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10227,NULL,NULL,NULL,NULL,NULL,'','Dad of Mariam Ayad','',NULL,'Mom of Mariam Ayad','+61415483350',NULL,'Dad of Mariam Ayad','mariam.ayad@hotmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10237,NULL,NULL,NULL,NULL,NULL,'','Dad of Nasreen Banu Syeda','',NULL,'Mom of Nasreen Banu Syeda','+61402137340 ',NULL,'Dad of Nasreen Banu Syeda','samsyeda786@hotmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10247,NULL,NULL,NULL,NULL,NULL,'','Dad of Nur Jehan Basha','',NULL,'Mom of Nur Jehan Basha','+61405725067',NULL,'Dad of Nur Jehan Basha','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10257,NULL,NULL,NULL,NULL,NULL,'','Dad of Saumiah Albaf','',NULL,'Mom of Saumiah Albaf','+61404669921',NULL,'Dad of Saumiah Albaf','saumiahalbaf@gmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10267,NULL,NULL,NULL,NULL,NULL,'','Dad of Sue Rifai','',NULL,'Mom of Sue Rifai','+61414777331',NULL,'Dad of Sue Rifai','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10277,NULL,NULL,NULL,NULL,NULL,'','Dad of Suzana Radosavljevic','',NULL,'Mom of Suzana Radosavljevic','+61415220084',NULL,'Dad of Suzana Radosavljevic','Suzana.rad@hotmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10287,NULL,NULL,NULL,NULL,NULL,'','Dad of Tracey Menzies','',NULL,'Mom of Tracey Menzies','+61401970415',NULL,'Dad of Tracey Menzies','tracey2033@hotmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10297,NULL,NULL,NULL,NULL,NULL,'','Dad of Veronica Abu Zaid','',NULL,'Mom of Veronica Abu Zaid','+61424 656 879',NULL,'Dad of Veronica Abu Zaid','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10307,NULL,NULL,NULL,NULL,NULL,'','Dad of AbdulQadir AlBayati','',NULL,'Mom of AbdulQadir AlBayati','+61410 007 213',NULL,'Dad of AbdulQadir AlBayati','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10317,NULL,NULL,NULL,NULL,NULL,'','Dad of Abdulrahman Jasm ','',NULL,'Mom of Abdulrahman Jasm ','+61 478 180 188',NULL,'Dad of Abdulrahman Jasm ','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10327,NULL,NULL,NULL,NULL,NULL,'','Dad of Ahmad Alboushama','',NULL,'Mom of Ahmad Alboushama','+61470 233 785',NULL,'Dad of Ahmad Alboushama','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10337,NULL,NULL,NULL,NULL,NULL,'','Dad of Badr Rima','',NULL,'Mom of Badr Rima','+61424808598',NULL,'Dad of Badr Rima','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10347,NULL,NULL,NULL,NULL,NULL,'','Dad of Emad Teffaha','',NULL,'Mom of Emad Teffaha','+61 416 500 600',NULL,'Dad of Emad Teffaha','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10357,NULL,NULL,NULL,NULL,NULL,'','Dad of Ibrahim Jalloh','',NULL,'Mom of Ibrahim Jalloh','+61422374670',NULL,'Dad of Ibrahim Jalloh','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10367,NULL,NULL,NULL,NULL,NULL,'','Dad of Issa Ghazzaoui','',NULL,'Mom of Issa Ghazzaoui','+61406277799',NULL,'Dad of Issa Ghazzaoui','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10377,NULL,NULL,NULL,NULL,NULL,'','Dad of Mouhamed Hussein','',NULL,'Mom of Mouhamed Hussein','+61404 281 341',NULL,'Dad of Mouhamed Hussein','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10387,NULL,NULL,NULL,NULL,NULL,'','Dad of Muhammad Raad','',NULL,'Mom of Muhammad Raad','+61410 699 696',NULL,'Dad of Muhammad Raad','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10397,NULL,NULL,NULL,NULL,NULL,'','Dad of Rania Islam','',NULL,'Mom of Rania Islam','+61434283944',NULL,'Dad of Rania Islam','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10407,NULL,NULL,NULL,NULL,NULL,'','Dad of Shayan Oowise','',NULL,'Mom of Shayan Oowise','+61478360235',NULL,'Dad of Shayan Oowise','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10417,NULL,NULL,NULL,NULL,NULL,'','Dad of Wajih ElSayed','',NULL,'Mom of Wajih ElSayed','+61416087033',NULL,'Dad of Wajih ElSayed','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10427,NULL,NULL,NULL,NULL,NULL,'','Dad of Zeyad AlDulaimi','',NULL,'Mom of Zeyad AlDulaimi','+61434 487 592',NULL,'Dad of Zeyad AlDulaimi','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10437,NULL,NULL,NULL,NULL,NULL,'','Dad of Ziad Arja','',NULL,'Mom of Ziad Arja','+61404082809',NULL,'Dad of Ziad Arja','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10447,NULL,NULL,NULL,NULL,NULL,'','Dad of Alyssar Elmasri','',NULL,'Mom of Alyssar Elmasri','+61405299666',NULL,'Dad of Alyssar Elmasri','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10457,NULL,NULL,NULL,NULL,NULL,'','Dad of Jayda Molhem','',NULL,'Mom of Jayda Molhem','+61405523733',NULL,'Dad of Jayda Molhem','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10467,NULL,NULL,NULL,NULL,NULL,'','Dad of Raghad Mosbah','',NULL,'Mom of Raghad Mosbah','+61435838403',NULL,'Dad of Raghad Mosbah','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10477,NULL,NULL,NULL,NULL,NULL,'','Dad of Aamina Tizani','',NULL,'Mom of Aamina Tizani','+61401 474 740',NULL,'Dad of Aamina Tizani','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10487,NULL,NULL,NULL,NULL,NULL,'','Dad of Afsheen Shakhawat','',NULL,'Mom of Afsheen Shakhawat','+61425 268 130',NULL,'Dad of Afsheen Shakhawat','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10497,NULL,NULL,NULL,NULL,NULL,'','Dad of Ahmed AlBayati','',NULL,'Mom of Ahmed AlBayati','+61410 007 213',NULL,'Dad of Ahmed AlBayati','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10507,NULL,NULL,NULL,NULL,NULL,'','Dad of Aiysha Rima','',NULL,'Mom of Aiysha Rima','+61416828081',NULL,'Dad of Aiysha Rima','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10517,NULL,NULL,NULL,NULL,NULL,'','Dad of Anas Shamim','',NULL,'Mom of Anas Shamim','+61422807627',NULL,'Dad of Anas Shamim','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10527,NULL,NULL,NULL,NULL,NULL,'','Dad of Belal Hussein','',NULL,'Mom of Belal Hussein','+61404 281 341',NULL,'Dad of Belal Hussein','zhamdache@icloud.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10537,NULL,NULL,NULL,NULL,NULL,'','Dad of Firdous Arja','',NULL,'Mom of Firdous Arja','+61404082809',NULL,'Dad of Firdous Arja','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10547,NULL,NULL,NULL,NULL,NULL,'','Dad of Jueyrie Ubaydullah','',NULL,'Mom of Jueyrie Ubaydullah','+61469 932 257',NULL,'Dad of Jueyrie Ubaydullah','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10557,NULL,NULL,NULL,NULL,NULL,'','Dad of Marwan Elkassir','',NULL,'Mom of Marwan Elkassir','+61415 926 665',NULL,'Dad of Marwan Elkassir','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10567,NULL,NULL,NULL,NULL,NULL,'','Dad of Rawya Teffaha','',NULL,'Mom of Rawya Teffaha','+61416500600',NULL,'Dad of Rawya Teffaha','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10577,NULL,NULL,NULL,NULL,NULL,'','Dad of Saniya Mahmoud','',NULL,'Mom of Saniya Mahmoud','+61415 937 166',NULL,'Dad of Saniya Mahmoud','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10587,NULL,NULL,NULL,NULL,NULL,'','Dad of Sheik Ubaydullah','',NULL,'Mom of Sheik Ubaydullah','+61469 932 257',NULL,'Dad of Sheik Ubaydullah','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10597,NULL,NULL,NULL,NULL,NULL,'','Dad of Simra Hussein','',NULL,'Mom of Simra Hussein','+61452481976',NULL,'Dad of Simra Hussein','shmalik25@hotmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10607,NULL,NULL,NULL,NULL,NULL,'','Dad of Subhan Shouaib ','',NULL,'Mom of Subhan Shouaib ','+61403262881',NULL,'Dad of Subhan Shouaib ','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10617,NULL,NULL,NULL,NULL,NULL,'','Dad of Yousef Rima','',NULL,'Mom of Yousef Rima','+61406811502',NULL,'Dad of Yousef Rima','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10627,NULL,NULL,NULL,NULL,NULL,'','Dad of Zayaan Maleek','',NULL,'Mom of Zayaan Maleek','+61418 389 389',NULL,'Dad of Zayaan Maleek','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10637,NULL,NULL,NULL,NULL,NULL,'','Dad of Aashfi Shakhawat','',NULL,'Mom of Aashfi Shakhawat','+61425 268 130',NULL,'Dad of Aashfi Shakhawat','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10647,NULL,NULL,NULL,NULL,NULL,'','Dad of Afraaz Siddiqui','',NULL,'Mom of Afraaz Siddiqui','+61412492246',NULL,'Dad of Afraaz Siddiqui','moona@nticon.com.au',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10657,NULL,NULL,NULL,NULL,NULL,'','Dad of Ayeza Siddiqui','',NULL,'Mom of Ayeza Siddiqui','+61412492246',NULL,'Dad of Ayeza Siddiqui','moona@nticon.com.au',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10667,NULL,NULL,NULL,NULL,NULL,'','Dad of Farhan Anjum','',NULL,'Mom of Farhan Anjum','+61413 595 562',NULL,'Dad of Farhan Anjum','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10677,NULL,NULL,NULL,NULL,NULL,'','Dad of Lubaina Zia','',NULL,'Mom of Lubaina Zia','+61432171096',NULL,'Dad of Lubaina Zia','mzia1@hotmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10687,NULL,NULL,NULL,NULL,NULL,'','Dad of Lujain Maleek','',NULL,'Mom of Lujain Maleek','+61469 578 803',NULL,'Dad of Lujain Maleek','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10697,NULL,NULL,NULL,NULL,NULL,'','Dad of Maymoonah Jalloh','',NULL,'Mom of Maymoonah Jalloh','+61422374670',NULL,'Dad of Maymoonah Jalloh','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10707,NULL,NULL,NULL,NULL,NULL,'','Dad of Rayhaan Amputch','',NULL,'Mom of Rayhaan Amputch','+61415590483',NULL,'Dad of Rayhaan Amputch','k.amputch@outlook.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10717,NULL,NULL,NULL,NULL,NULL,'','Dad of Rayyaan Amputch','',NULL,'Mom of Rayyaan Amputch','+61415590483',NULL,'Dad of Rayyaan Amputch','k.amputch@outlook.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10727,NULL,NULL,NULL,NULL,NULL,'','Dad of Rayyan Islam','',NULL,'Mom of Rayyan Islam','+61434283944',NULL,'Dad of Rayyan Islam','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10737,NULL,NULL,NULL,NULL,NULL,'','Dad of Rema AlShehri','',NULL,'Mom of Rema AlShehri','+61423 876 923',NULL,'Dad of Rema AlShehri','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10747,NULL,NULL,NULL,NULL,NULL,'','Dad of Shajarat Shamim','',NULL,'Mom of Shajarat Shamim','+61422 807 627',NULL,'Dad of Shajarat Shamim','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10757,NULL,NULL,NULL,NULL,NULL,'','Dad of Zaineb Khalak','',NULL,'Mom of Zaineb Khalak','+61426823007',NULL,'Dad of Zaineb Khalak','skhalak@yahoo.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10767,NULL,NULL,NULL,NULL,NULL,'','Dad of Adam AlDhaibi','',NULL,'Mom of Adam AlDhaibi','+61424155014',NULL,'Dad of Adam AlDhaibi','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10777,NULL,NULL,NULL,NULL,NULL,'','Dad of Alyssa AlDhaibi','',NULL,'Mom of Alyssa AlDhaibi','+61424155014',NULL,'Dad of Alyssa AlDhaibi','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10787,NULL,NULL,NULL,NULL,NULL,'','Dad of Amelia Umme Mahek','',NULL,'Mom of Amelia Umme Mahek','+61406521798',NULL,'Dad of Amelia Umme Mahek','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10797,NULL,NULL,NULL,NULL,NULL,'','Dad of Asiyah Wehbe','',NULL,'Mom of Asiyah Wehbe','+61404219493',NULL,'Dad of Asiyah Wehbe','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10807,NULL,NULL,NULL,NULL,NULL,'','Dad of Ayda AlDhaibi','',NULL,'Mom of Ayda AlDhaibi','+61424155014',NULL,'Dad of Ayda AlDhaibi','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10817,NULL,NULL,NULL,NULL,NULL,'','Dad of Daneya Mohammad','',NULL,'Mom of Daneya Mohammad','+61469 357 593',NULL,'Dad of Daneya Mohammad','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10827,NULL,NULL,NULL,NULL,NULL,'','Dad of Faria Bint Mahboob','',NULL,'Mom of Faria Bint Mahboob','+61449666199',NULL,'Dad of Faria Bint Mahboob','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10837,NULL,NULL,NULL,NULL,NULL,'','Dad of Fawaz Assaad','',NULL,'Mom of Fawaz Assaad','+61432809677',NULL,'Dad of Fawaz Assaad','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10847,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohammed Mahmoudurahman','',NULL,'Mom of Mohammed Mahmoudurahman','+61449666199',NULL,'Dad of Mohammed Mahmoudurahman','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10857,NULL,NULL,NULL,NULL,NULL,'','Dad of Mustafa Al Azzauui','',NULL,'Mom of Mustafa Al Azzauui','+61469831413',NULL,'Dad of Mustafa Al Azzauui','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10867,NULL,NULL,NULL,NULL,NULL,'','Dad of Rehana Saifullah','',NULL,'Mom of Rehana Saifullah','+61470258490',NULL,'Dad of Rehana Saifullah','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10877,NULL,NULL,NULL,NULL,NULL,'','Dad of Rohana Saifullah','',NULL,'Mom of Rohana Saifullah','+61470258490',NULL,'Dad of Rohana Saifullah','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10887,NULL,NULL,NULL,NULL,NULL,'','Dad of Suhayb Umayr Siddiqui','',NULL,'Mom of Suhayb Umayr Siddiqui','+61488222071',NULL,'Dad of Suhayb Umayr Siddiqui','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10897,NULL,NULL,NULL,NULL,NULL,'','Dad of Tasneem Ayoubi','',NULL,'Mom of Tasneem Ayoubi','+61469 862 737',NULL,'Dad of Tasneem Ayoubi','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10907,NULL,NULL,NULL,NULL,NULL,'','Dad of Abdulrahman AbdulRashid','',NULL,'Mom of Abdulrahman AbdulRashid','+61469862102',NULL,'Dad of Abdulrahman AbdulRashid','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10917,NULL,NULL,NULL,NULL,NULL,'','Dad of Ahmed Jalloh','',NULL,'Mom of Ahmed Jalloh','+61422374670',NULL,'Dad of Ahmed Jalloh','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10927,NULL,NULL,NULL,NULL,NULL,'','Dad of Arooba Sultana','',NULL,'Mom of Arooba Sultana','+61435786556',NULL,'Dad of Arooba Sultana','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10937,NULL,NULL,NULL,NULL,NULL,'','Dad of Awwab Hussein','',NULL,'Mom of Awwab Hussein','+61452481976',NULL,'Dad of Awwab Hussein','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10947,NULL,NULL,NULL,NULL,NULL,'','Dad of Dana Almahameed','',NULL,'Mom of Dana Almahameed','+61402135904',NULL,'Dad of Dana Almahameed','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10957,NULL,NULL,NULL,NULL,NULL,'','Dad of Hassan Alboushama','',NULL,'Mom of Hassan Alboushama','+61470 233 785',NULL,'Dad of Hassan Alboushama','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10967,NULL,NULL,NULL,NULL,NULL,'','Dad of Ibrahim Rifai','',NULL,'Mom of Ibrahim Rifai','+61424196646',NULL,'Dad of Ibrahim Rifai','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10977,NULL,NULL,NULL,NULL,NULL,'','Dad of Ismaeel Jalloh','',NULL,'Mom of Ismaeel Jalloh','+61422374670',NULL,'Dad of Ismaeel Jalloh','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10987,NULL,NULL,NULL,NULL,NULL,'','Dad of Khadeejah AlHawari','',NULL,'Mom of Khadeejah AlHawari','+61466838270',NULL,'Dad of Khadeejah AlHawari','send_it_through@hotmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(10997,NULL,NULL,NULL,NULL,NULL,'','Dad of Maha Youssef Badreddine','',NULL,'Mom of Maha Youssef Badreddine','+61404669921',NULL,'Dad of Maha Youssef Badreddine','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11007,NULL,NULL,NULL,NULL,NULL,'','Dad of Nabeel Abdul','',NULL,'Mom of Nabeel Abdul','+61416526077',NULL,'Dad of Nabeel Abdul','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11017,NULL,NULL,NULL,NULL,NULL,'','Dad of Nabeelah Abdul','',NULL,'Mom of Nabeelah Abdul','+61416526077',NULL,'Dad of Nabeelah Abdul','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11027,NULL,NULL,NULL,NULL,NULL,'','Dad of Omar Husseini','',NULL,'Mom of Omar Husseini','+61405814061',NULL,'Dad of Omar Husseini','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11037,NULL,NULL,NULL,NULL,NULL,'','Dad of Rufiul Kader','',NULL,'Mom of Rufiul Kader','+61451921509',NULL,'Dad of Rufiul Kader','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11047,NULL,NULL,NULL,NULL,NULL,'','Dad of Safiyyah Abdulrahman','',NULL,'Mom of Safiyyah Abdulrahman','+61410044938',NULL,'Dad of Safiyyah Abdulrahman','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11057,NULL,NULL,NULL,NULL,NULL,'','Dad of Soliman Husseini','',NULL,'Mom of Soliman Husseini','+61405814061',NULL,'Dad of Soliman Husseini','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11067,NULL,NULL,NULL,NULL,NULL,'','Dad of Tasneem Zia','',NULL,'Mom of Tasneem Zia','+61432 171 091',NULL,'Dad of Tasneem Zia','mzia1@hotmail.com',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11077,NULL,NULL,NULL,NULL,NULL,'','Dad of Tassnim Rima','',NULL,'Mom of Tassnim Rima','+61416828081',NULL,'Dad of Tassnim Rima','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11087,NULL,NULL,NULL,NULL,NULL,'','Dad of Amanee Kammoun','',NULL,'Mom of Amanee Kammoun','+61403053619',NULL,'Dad of Amanee Kammoun','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11097,NULL,NULL,NULL,NULL,NULL,'','Dad of Badia Rima','',NULL,'Mom of Badia Rima','+61424808598',NULL,'Dad of Badia Rima','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11107,NULL,NULL,NULL,NULL,NULL,'','Dad of Fateema Rima','',NULL,'Mom of Fateema Rima','+61406811502',NULL,'Dad of Fateema Rima','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11117,NULL,NULL,NULL,NULL,NULL,'','Dad of Leila Elmasri','',NULL,'Mom of Leila Elmasri','+61405299666',NULL,'Dad of Leila Elmasri','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11127,NULL,NULL,NULL,NULL,NULL,'','Dad of Nadine Rima','',NULL,'Mom of Nadine Rima','+61424808598',NULL,'Dad of Nadine Rima','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11137,NULL,NULL,NULL,NULL,NULL,'','Dad of Nahidah AlDulaimi','',NULL,'Mom of Nahidah AlDulaimi','+61434 481 592',NULL,'Dad of Nahidah AlDulaimi','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11147,NULL,NULL,NULL,NULL,NULL,'','Dad of Safa Sayeed','',NULL,'Mom of Safa Sayeed','+61433417477',NULL,'Dad of Safa Sayeed','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11157,NULL,NULL,NULL,NULL,NULL,'','Dad of Salma Syeda','',NULL,'Mom of Salma Syeda','+61425268127',NULL,'Dad of Salma Syeda','shakhawat07@yahoo.com.au',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11167,NULL,NULL,NULL,NULL,NULL,'','Dad of Sharmin Khan','',NULL,'Mom of Sharmin Khan','+61434283944',NULL,'Dad of Sharmin Khan','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11177,NULL,NULL,NULL,NULL,NULL,'','Dad of Shazneen Oowise','',NULL,'Mom of Shazneen Oowise','+61478360235',NULL,'Dad of Shazneen Oowise','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11187,NULL,NULL,NULL,NULL,NULL,'','Dad of Sumayyah Abdulrahman','',NULL,'Mom of Sumayyah Abdulrahman','+61410 044 938',NULL,'Dad of Sumayyah Abdulrahman','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11197,NULL,NULL,NULL,NULL,NULL,'','Dad of Abir AlBayati','',NULL,'Mom of Abir AlBayati','+61410 007 213',NULL,'Dad of Abir AlBayati','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11207,NULL,NULL,NULL,NULL,NULL,'','Dad of Aqsa Sajjad','',NULL,'Mom of Aqsa Sajjad','+61452481976',NULL,'Dad of Aqsa Sajjad','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11217,NULL,NULL,NULL,NULL,NULL,'','Dad of Faria Ahsan','',NULL,'Mom of Faria Ahsan','+61403710095',NULL,'Dad of Faria Ahsan','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11227,NULL,NULL,NULL,NULL,NULL,'','Dad of Fatima Arja','',NULL,'Mom of Fatima Arja','+61404082809',NULL,'Dad of Fatima Arja','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11237,NULL,NULL,NULL,NULL,NULL,'','Dad of Omul Kulthom Ayoub','',NULL,'Mom of Omul Kulthom Ayoub','+61469862737',NULL,'Dad of Omul Kulthom Ayoub','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11247,NULL,NULL,NULL,NULL,NULL,'','Dad of Rawand Abuawwad','',NULL,'Mom of Rawand Abuawwad','+61450506135',NULL,'Dad of Rawand Abuawwad','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11257,NULL,NULL,NULL,NULL,NULL,'','Dad of Souheir Ayad','',NULL,'Mom of Souheir Ayad','+61413773228',NULL,'Dad of Souheir Ayad','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11267,NULL,NULL,NULL,NULL,NULL,'','Dad of ','',NULL,'Mom of ','',NULL,'Dad of ','',NULL,'','',NULL,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00'),(11277,NULL,NULL,NULL,NULL,NULL,'','Dad of Anthea Costi','+61405437500',NULL,'Mom of Anthea Costi','',NULL,'Dad of Anthea Costi','antheacos@gmail.com',NULL,'+61405437500','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11287,NULL,NULL,NULL,NULL,NULL,'','Dad of Bibi Meher','+61403060975',NULL,'Mom of Bibi Meher','',NULL,'Dad of Bibi Meher','saba_shuja@hotmail.com',NULL,'+61403060975','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11297,NULL,NULL,NULL,NULL,NULL,'','Dad of Ghaysa hijazi','+61431531031',NULL,'Mom of Ghaysa hijazi','',NULL,'Dad of Ghaysa hijazi','ghaysahijazi@gmail.com',NULL,'+61431531031','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11307,NULL,NULL,NULL,NULL,NULL,'','Dad of Halima Zraika','+61405418822',NULL,'Mom of Halima Zraika','',NULL,'Dad of Halima Zraika','halima.k8378@gmail.com',NULL,'+61405418822','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11317,NULL,NULL,NULL,NULL,NULL,'','Dad of Hannan Raad','+61410699696',NULL,'Mom of Hannan Raad','',NULL,'Dad of Hannan Raad','h.a.raad27@gmail.com',NULL,'+61410699696','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11327,NULL,NULL,NULL,NULL,NULL,'','Dad of Lorraine Ejje','+61424652095',NULL,'Mom of Lorraine Ejje','',NULL,'Dad of Lorraine Ejje','lorraine24@live.com.au',NULL,'+61424652095','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11337,NULL,NULL,NULL,NULL,NULL,'','Dad of Manal Massri','+61431494707',NULL,'Mom of Manal Massri','',NULL,'Dad of Manal Massri','manal@itmanage.com.au',NULL,'+61431494707','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11347,NULL,NULL,NULL,NULL,NULL,'','Dad of Nemat Jneidi','+61424444384',NULL,'Mom of Nemat Jneidi','',NULL,'Dad of Nemat Jneidi','nematj92@hotmail.com',NULL,'+61424444384','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11357,NULL,NULL,NULL,NULL,NULL,'','Dad of Nisreen Haidar','+61404623641',NULL,'Mom of Nisreen Haidar','',NULL,'Dad of Nisreen Haidar','nisreen1216@hotmail.com',NULL,'+61404623641','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11367,NULL,NULL,NULL,NULL,NULL,'','Dad of Razan Dannoun','+61421656149',NULL,'Mom of Razan Dannoun','',NULL,'Dad of Razan Dannoun','dr_hafda@hotmail.com',NULL,'+61421656149','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11377,NULL,NULL,NULL,NULL,NULL,'','Dad of Riham Abdelhalim','+61424196646',NULL,'Mom of Riham Abdelhalim','',NULL,'Dad of Riham Abdelhalim','reez4islam@hotmail.com',NULL,'+61424196646','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11387,NULL,NULL,NULL,NULL,NULL,'','Dad of Umm Omar','+61490405697',NULL,'Mom of Umm Omar','',NULL,'Dad of Umm Omar','umm_omar2@hotmail.com',NULL,'+61490405697','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11397,NULL,NULL,NULL,NULL,NULL,'','Dad of Abdullah Shaikh','+614357278177',NULL,'Mom of Abdullah Shaikh','',NULL,'Dad of Abdullah Shaikh','abdullah_shaikh123@hotmail.com',NULL,'+614357278177','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11407,NULL,NULL,NULL,NULL,NULL,'','Dad of Abdulrahman Nemra','+61432688067',NULL,'Mom of Abdulrahman Nemra','',NULL,'Dad of Abdulrahman Nemra','a.nemra@hotmail.com',NULL,'+61432688067','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11417,NULL,NULL,NULL,NULL,NULL,'','Dad of Ahmad Alameddine','+61451969653',NULL,'Mom of Ahmad Alameddine','',NULL,'Dad of Ahmad Alameddine','tyresexcel5811@hotmail.com',NULL,'+61451969653','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11427,NULL,NULL,NULL,NULL,NULL,'','Dad of Ahmed Alameddine','+61488467117',NULL,'Mom of Ahmed Alameddine','',NULL,'Dad of Ahmed Alameddine','',NULL,'+61488467117','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11437,NULL,NULL,NULL,NULL,NULL,'','Dad of Ahmed Zreika','+61450402109',NULL,'Mom of Ahmed Zreika','',NULL,'Dad of Ahmed Zreika','ahmedd_zreika@hotmail.com',NULL,'+61450402109','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11447,NULL,NULL,NULL,NULL,NULL,'','Dad of Dawud Brian ','+61412591122',NULL,'Mom of Dawud Brian ','',NULL,'Dad of Dawud Brian ','dawoodlechef@gmail.com',NULL,'+61412591122','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11457,NULL,NULL,NULL,NULL,NULL,'','Dad of Deb Aili','+61451502119',NULL,'Mom of Deb Aili','',NULL,'Dad of Deb Aili','hd.telecomm@gmail.com',NULL,'+61451502119','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11467,NULL,NULL,NULL,NULL,NULL,'','Dad of Emad Issa','+61430148316',NULL,'Mom of Emad Issa','',NULL,'Dad of Emad Issa','e.issa1991@live.com',NULL,'+61430148316','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11477,NULL,NULL,NULL,NULL,NULL,'','Dad of Fadi Assaad','+61414529354',NULL,'Mom of Fadi Assaad','',NULL,'Dad of Fadi Assaad','fadi_assaad@hotmail.com',NULL,'+61414529354','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11487,NULL,NULL,NULL,NULL,NULL,'','Dad of Fahad Shaikh','+61430519944',NULL,'Mom of Fahad Shaikh','',NULL,'Dad of Fahad Shaikh','',NULL,'+61430519944','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11497,NULL,NULL,NULL,NULL,NULL,'','Dad of Haidar Sakhra','+61431754419',NULL,'Mom of Haidar Sakhra','',NULL,'Dad of Haidar Sakhra','haider_sakhra143@hotmail.com',NULL,'+61431754419','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11507,NULL,NULL,NULL,NULL,NULL,'','Dad of Hesham Sahib','+61410367567',NULL,'Mom of Hesham Sahib','',NULL,'Dad of Hesham Sahib','heshaam_s@hotmail.com',NULL,'+61410367567','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11517,NULL,NULL,NULL,NULL,NULL,'','Dad of Imran Katieh','+61478189821',NULL,'Mom of Imran Katieh','',NULL,'Dad of Imran Katieh','imrankatieh@gmail.com',NULL,'+61478189821','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11527,NULL,NULL,NULL,NULL,NULL,'','Dad of Javed Kalam','+61414138910',NULL,'Mom of Javed Kalam','',NULL,'Dad of Javed Kalam','javed.binkalam@gmail.com',NULL,'+61414138910','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11537,NULL,NULL,NULL,NULL,NULL,'','Dad of Khaled Abbas','+61466058022',NULL,'Mom of Khaled Abbas','',NULL,'Dad of Khaled Abbas','abbasonline@gmail.com',NULL,'+61466058022','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11547,NULL,NULL,NULL,NULL,NULL,'','Dad of Kheireddine Melhem','+61430302812',NULL,'Mom of Kheireddine Melhem','',NULL,'Dad of Kheireddine Melhem','kheiro.m@hotmail.com',NULL,'+61430302812','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11557,NULL,NULL,NULL,NULL,NULL,'','Dad of Mahmoud Daher','+61435503585',NULL,'Mom of Mahmoud Daher','',NULL,'Dad of Mahmoud Daher','m.daher1996@gmail.com',NULL,'+61435503585','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11567,NULL,NULL,NULL,NULL,NULL,'','Dad of Milad Sidiqui','+61450003942',NULL,'Mom of Milad Sidiqui','',NULL,'Dad of Milad Sidiqui','miladmsidiqui@gmail.com',NULL,'+61450003942','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11577,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohamed Abdelaziz','+61416866654',NULL,'Mom of Mohamed Abdelaziz','',NULL,'Dad of Mohamed Abdelaziz','m.n.abdelaziz@hotmail.com',NULL,'+61416866654','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11587,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohamed Hawi','+61423930952',NULL,'Mom of Mohamed Hawi','',NULL,'Dad of Mohamed Hawi','',NULL,'+61423930952','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11597,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohammed Arja','+61412521846',NULL,'Mom of Mohammed Arja','',NULL,'Dad of Mohammed Arja','mohammedarja@gmail.com',NULL,'+61412521846','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11607,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohammed Malas','+61414338001',NULL,'Mom of Mohammed Malas','',NULL,'Dad of Mohammed Malas','moemalas@hotmail.com',NULL,'+61414338001','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11617,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohammed Muhieddine','+61432111476',NULL,'Mom of Mohammed Muhieddine','',NULL,'Dad of Mohammed Muhieddine','mohammed.muhieddine@live.com',NULL,'+61432111476','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11627,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohammed Shaheed','',NULL,'Mom of Mohammed Shaheed','',NULL,'Dad of Mohammed Shaheed','',NULL,'','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11637,NULL,NULL,NULL,NULL,NULL,'','Dad of Mustafa Jabbar','+61416660786',NULL,'Mom of Mustafa Jabbar','',NULL,'Dad of Mustafa Jabbar','mustafa.jabbar90@hotmail.com',NULL,'+61416660786','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11647,NULL,NULL,NULL,NULL,NULL,'','Dad of Omar Muhieddine','+61450046627',NULL,'Mom of Omar Muhieddine','',NULL,'Dad of Omar Muhieddine','omar.zfda@gmail.com',NULL,'+61450046627','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11657,NULL,NULL,NULL,NULL,NULL,'','Dad of Rabee Alisabri','+61414445743',NULL,'Mom of Rabee Alisabri','',NULL,'Dad of Rabee Alisabri','rabee.alisabri@gmail.com',NULL,'+61414445743','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11667,NULL,NULL,NULL,NULL,NULL,'','Dad of Rashid Mohamed','+61412787706',NULL,'Mom of Rashid Mohamed','',NULL,'Dad of Rashid Mohamed','krashid@live.com',NULL,'+61412787706','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11677,NULL,NULL,NULL,NULL,NULL,'','Dad of Robert Todoroski','+61414196902',NULL,'Mom of Robert Todoroski','',NULL,'Dad of Robert Todoroski','roberttodoroski@hotmail.com',NULL,'+61414196902','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11687,NULL,NULL,NULL,NULL,NULL,'','Dad of Saiyd Jamal','+61435064544',NULL,'Mom of Saiyd Jamal','',NULL,'Dad of Saiyd Jamal','saiyd.jamal@outlook.com',NULL,'+61435064544','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11697,NULL,NULL,NULL,NULL,NULL,'','Dad of Samir Kataieh','+61424658880',NULL,'Mom of Samir Kataieh','',NULL,'Dad of Samir Kataieh','bandsmotors@hotmail.com',NULL,'+61424658880','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11707,NULL,NULL,NULL,NULL,NULL,'','Dad of Yusuf Mhaiche','+61421792594',NULL,'Mom of Yusuf Mhaiche','',NULL,'Dad of Yusuf Mhaiche','yussuf91@hotmail.com',NULL,'+61421792594','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11717,NULL,NULL,NULL,NULL,NULL,'','Dad of Ziad Mashkoor','+61440191014',NULL,'Mom of Ziad Mashkoor','',NULL,'Dad of Ziad Mashkoor','ziadmashkoor@gmail.com',NULL,'+61440191014','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11727,NULL,NULL,NULL,NULL,NULL,'','Dad of Iqtidar Ahmed','+61481143115',NULL,'Mom of Iqtidar Ahmed','',NULL,'Dad of Iqtidar Ahmed','iqtidar.ahmed.education@gmail.com',NULL,'+61481143115','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11737,NULL,NULL,NULL,NULL,NULL,'','Dad of Jalal Kamoun','+61410 867 007',NULL,'Mom of Jalal Kamoun','',NULL,'Dad of Jalal Kamoun','jalal_kamoun@hotmail.com',NULL,'+61410 867 007','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11747,NULL,NULL,NULL,NULL,NULL,'','Dad of Mahardhika Syarif Hidayatullah','+61409823952',NULL,'Mom of Mahardhika Syarif Hidayatullah','',NULL,'Dad of Mahardhika Syarif Hidayatullah','dhikash1997@gmail.com',NULL,'+61409823952','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11757,NULL,NULL,NULL,NULL,NULL,'','Dad of Mahmoud ElKhatib','+61401442073',NULL,'Mom of Mahmoud ElKhatib','',NULL,'Dad of Mahmoud ElKhatib','Moey_khatib@hotmail.com',NULL,'+61401442073','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11767,NULL,NULL,NULL,NULL,NULL,'','Dad of Shamim Babu','+61422807627',NULL,'Mom of Shamim Babu','',NULL,'Dad of Shamim Babu','babumunni@yahoo.com',NULL,'+61422807627','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11777,NULL,NULL,NULL,NULL,NULL,'','Dad of Yasin Ashley','+61404 172 132',NULL,'Mom of Yasin Ashley','',NULL,'Dad of Yasin Ashley','yasin_ashley@hotmail.com',NULL,'+61404 172 132','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11787,NULL,NULL,NULL,NULL,NULL,'','Dad of Yusuf Gelder','+61447396633',NULL,'Mom of Yusuf Gelder','',NULL,'Dad of Yusuf Gelder','yusuf.gelder97@hotmail.com',NULL,'+61447396633','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11797,NULL,NULL,NULL,NULL,NULL,'','Dad of Zak Chahal','+61401 189 472',NULL,'Mom of Zak Chahal','',NULL,'Dad of Zak Chahal','zakareya905@gmail.com',NULL,'+61401 189 472','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11807,NULL,NULL,NULL,NULL,NULL,'','Dad of Amar Kabbara','+61424112008',NULL,'Mom of Amar Kabbara','',NULL,'Dad of Amar Kabbara','zaatar.hassan@gmail.com',NULL,'+61424112008','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11817,NULL,NULL,NULL,NULL,NULL,'','Dad of Aminata Wleh','+61432687501',NULL,'Mom of Aminata Wleh','',NULL,'Dad of Aminata Wleh','i.mfofiemj@yahoo.com.au',NULL,'+61432687501','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11827,NULL,NULL,NULL,NULL,NULL,'','Dad of Carly McQualter','+61409 814 511',NULL,'Mom of Carly McQualter','',NULL,'Dad of Carly McQualter','carly.mcqualter@bigpond.com',NULL,'+61409 814 511','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11837,NULL,NULL,NULL,NULL,NULL,'','Dad of Emma Ramlawie','+61414 869 425',NULL,'Mom of Emma Ramlawie','',NULL,'Dad of Emma Ramlawie','emaarab@hotmail.com',NULL,'+61414 869 425','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11847,NULL,NULL,NULL,NULL,NULL,'','Dad of Hakimah Muslim','+61410 044 938',NULL,'Mom of Hakimah Muslim','',NULL,'Dad of Hakimah Muslim','kimm07@icloud.com',NULL,'+61410 044 938','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11857,NULL,NULL,NULL,NULL,NULL,'','Dad of Hasina Kamel','+61470666493',NULL,'Mom of Hasina Kamel','',NULL,'Dad of Hasina Kamel','hasinakamel@yahoo.com.au',NULL,'+61470666493','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11867,NULL,NULL,NULL,NULL,NULL,'','Dad of Hasna bint A. Woodbury','+610470625368',NULL,'Mom of Hasna bint A. Woodbury','',NULL,'Dad of Hasna bint A. Woodbury','hasna.ilim@gmail.com',NULL,'+610470625368','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11877,NULL,NULL,NULL,NULL,NULL,'','Dad of Mardhiah Abedine','+61416800550',NULL,'Mom of Mardhiah Abedine','',NULL,'Dad of Mardhiah Abedine','mardhiahz@gmail.com',NULL,'+61416800550','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11887,NULL,NULL,NULL,NULL,NULL,'','Dad of Nada Jamus','+61406646196',NULL,'Mom of Nada Jamus','',NULL,'Dad of Nada Jamus','Nadush7_7@hotmail.com',NULL,'+61406646196','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11897,NULL,NULL,NULL,NULL,NULL,'','Dad of Nazira Nazreen El Samman','+61415131953',NULL,'Mom of Nazira Nazreen El Samman','',NULL,'Dad of Nazira Nazreen El Samman','nazirahelsamman@gmail.com',NULL,'+61415131953','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11907,NULL,NULL,NULL,NULL,NULL,'','Dad of Ramatulai Daramy','+610402487557',NULL,'Mom of Ramatulai Daramy','',NULL,'Dad of Ramatulai Daramy','ramatulaidaramy@hotmail.com',NULL,'+610402487557','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11917,NULL,NULL,NULL,NULL,NULL,'','Dad of Refah Amin','+61416634308',NULL,'Mom of Refah Amin','',NULL,'Dad of Refah Amin','refahamin99@gmail.com',NULL,'+61416634308','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11927,NULL,NULL,NULL,NULL,NULL,'','Dad of Sagal Ahmed','+61403452433',NULL,'Mom of Sagal Ahmed','',NULL,'Dad of Sagal Ahmed','sagalahmed299@gmail.com',NULL,'+61403452433','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11937,NULL,NULL,NULL,NULL,NULL,'','Dad of Umm Ibrahim ','+61404953950',NULL,'Mom of Umm Ibrahim ','',NULL,'Dad of Umm Ibrahim ','ummibrahim@wasimah.com.au',NULL,'+61404953950','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11947,NULL,NULL,NULL,NULL,NULL,'','Dad of Yonca Temel','+61406 177 027',NULL,'Mom of Yonca Temel','',NULL,'Dad of Yonca Temel','al.ghuraba@hotmail.com',NULL,'+61406 177 027','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11957,NULL,NULL,NULL,NULL,NULL,'','Dad of Aber Kataieh','+61405800724',NULL,'Mom of Aber Kataieh','',NULL,'Dad of Aber Kataieh','aber_k@hotmail.com',NULL,'+61405800724','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11967,NULL,NULL,NULL,NULL,NULL,'','Dad of Amina Ibrahim','+61450959659',NULL,'Mom of Amina Ibrahim','',NULL,'Dad of Amina Ibrahim','ameenaibrahim95@gmail.com',NULL,'+61450959659','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11977,NULL,NULL,NULL,NULL,NULL,'','Dad of Aqsa Khalid','+61',NULL,'Mom of Aqsa Khalid','',NULL,'Dad of Aqsa Khalid','shmalik25@hotmail.com',NULL,'+61','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11987,NULL,NULL,NULL,NULL,NULL,'','Dad of Aseyah Shipman','+61434681799',NULL,'Mom of Aseyah Shipman','',NULL,'Dad of Aseyah Shipman','new_aseyah@hotmail.com',NULL,'+61434681799','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(11997,NULL,NULL,NULL,NULL,NULL,'','Dad of Aysha Sian','+61414760708',NULL,'Mom of Aysha Sian','',NULL,'Dad of Aysha Sian','Aysharickard.11@gmail.com',NULL,'+61414760708','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12007,NULL,NULL,NULL,NULL,NULL,'','Dad of Fawzie Abdallah','+61478163551',NULL,'Mom of Fawzie Abdallah','',NULL,'Dad of Fawzie Abdallah','fawzie.abdallah@hotmail.com',NULL,'+61478163551','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12017,NULL,NULL,NULL,NULL,NULL,'','Dad of Hannan Mzakzak','+61481261247',NULL,'Mom of Hannan Mzakzak','',NULL,'Dad of Hannan Mzakzak','hanan.mzakzak@hotmail.com',NULL,'+61481261247','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12027,NULL,NULL,NULL,NULL,NULL,'','Dad of Heba Sukkarieh','+61414329200',NULL,'Mom of Heba Sukkarieh','',NULL,'Dad of Heba Sukkarieh','heba.sukkarieh@hotmail.com',NULL,'+61414329200','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12037,NULL,NULL,NULL,NULL,NULL,'','Dad of Iram Sirguroh','+61405216409',NULL,'Mom of Iram Sirguroh','',NULL,'Dad of Iram Sirguroh','iram.sirguroh@gmail.com',NULL,'+61405216409','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12047,NULL,NULL,NULL,NULL,NULL,'','Dad of Jasmin Akhter','+61411425898',NULL,'Mom of Jasmin Akhter','',NULL,'Dad of Jasmin Akhter','',NULL,'+61411425898','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12057,NULL,NULL,NULL,NULL,NULL,'','Dad of Joumana Fawal','+61431215064',NULL,'Mom of Joumana Fawal','',NULL,'Dad of Joumana Fawal','',NULL,'+61431215064','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12067,NULL,NULL,NULL,NULL,NULL,'','Dad of Liliya Aziz','+61432849604',NULL,'Mom of Liliya Aziz','',NULL,'Dad of Liliya Aziz','Llaziz7@hotmail.com',NULL,'+61432849604','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12077,NULL,NULL,NULL,NULL,NULL,'','Dad of Mia Hamzi','+61405551666',NULL,'Mom of Mia Hamzi','',NULL,'Dad of Mia Hamzi','miahamzi@gmail.com',NULL,'+61405551666','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12087,NULL,NULL,NULL,NULL,NULL,'','Dad of Mosca Shir Khan','+61488031098',NULL,'Mom of Mosca Shir Khan','',NULL,'Dad of Mosca Shir Khan','mosca_skhan@hotmail.com',NULL,'+61488031098','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12097,NULL,NULL,NULL,NULL,NULL,'','Dad of Rebecka Chlela','+61449960017',NULL,'Mom of Rebecka Chlela','',NULL,'Dad of Rebecka Chlela','chlelaa92@gmail.com',NULL,'+61449960017','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12107,NULL,NULL,NULL,NULL,NULL,'','Dad of Samahe Mohamed','+61466841633',NULL,'Mom of Samahe Mohamed','',NULL,'Dad of Samahe Mohamed','samahe.94@hotmail.com',NULL,'+61466841633','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12117,NULL,NULL,NULL,NULL,NULL,'','Dad of Sarah Awad','+61451002055',NULL,'Mom of Sarah Awad','',NULL,'Dad of Sarah Awad','Sarah.awad1@hotmail.com',NULL,'+61451002055','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12127,NULL,NULL,NULL,NULL,NULL,'','Dad of Sarah Charafeddine','+61450902180',NULL,'Mom of Sarah Charafeddine','',NULL,'Dad of Sarah Charafeddine','sarahcharafedd@gmail.com',NULL,'+61450902180','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12137,NULL,NULL,NULL,NULL,NULL,'','Dad of Sarah Woodbury','+61470625368',NULL,'Mom of Sarah Woodbury','',NULL,'Dad of Sarah Woodbury','locochocko89@gmail.com',NULL,'+61470625368','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12147,NULL,NULL,NULL,NULL,NULL,'','Dad of Suzan Hamdache','+61410128967',NULL,'Mom of Suzan Hamdache','',NULL,'Dad of Suzan Hamdache','suzanhamdache@icloud.com',NULL,'+61410128967','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12157,NULL,NULL,NULL,NULL,NULL,'','Dad of Tracy Menzies','+61401970415',NULL,'Mom of Tracy Menzies','',NULL,'Dad of Tracy Menzies','tracey2033@hotmail.com',NULL,'+61401970415','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12167,NULL,NULL,NULL,NULL,NULL,'','Dad of Zoe Allouche','+61478062477',NULL,'Mom of Zoe Allouche','',NULL,'Dad of Zoe Allouche','zoeallouche1996@gmail.com',NULL,'+61478062477','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12177,NULL,NULL,NULL,NULL,NULL,'','Dad of Fatma Arja','+61404082809',NULL,'Mom of Fatma Arja','',NULL,'Dad of Fatma Arja','ffa45@hotmail.com',NULL,'+61404082809','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12187,NULL,NULL,NULL,NULL,NULL,'','Dad of Kareema Alamudi','+61402195853',NULL,'Mom of Kareema Alamudi','',NULL,'Dad of Kareema Alamudi','karima_alamudi@hotmail.com',NULL,'+61402195853','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12197,NULL,NULL,NULL,NULL,NULL,'','Dad of Kristy Lee Cilidonio','+610424842812',NULL,'Mom of Kristy Lee Cilidonio','',NULL,'Dad of Kristy Lee Cilidonio','krriisstyy@gmail.com',NULL,'+610424842812','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12207,NULL,NULL,NULL,NULL,NULL,'','Dad of Marufa Yeasmin','+61425155107',NULL,'Mom of Marufa Yeasmin','',NULL,'Dad of Marufa Yeasmin','marufa_021@yahoo.com',NULL,'+61425155107','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12217,NULL,NULL,NULL,NULL,NULL,'','Dad of Maysa Kanj','+61451146875',NULL,'Mom of Maysa Kanj','',NULL,'Dad of Maysa Kanj','Muslimahkay@gmail.com',NULL,'+61451146875','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12227,NULL,NULL,NULL,NULL,NULL,'','Dad of Nasrine Awad','+61402703878',NULL,'Mom of Nasrine Awad','',NULL,'Dad of Nasrine Awad','nasrine.a@hotmail.com',NULL,'+61402703878','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12237,NULL,NULL,NULL,NULL,NULL,'','Dad of Ronia Hadier','+61424954991',NULL,'Mom of Ronia Hadier','',NULL,'Dad of Ronia Hadier','ranianet90@hotmail.com',NULL,'+61424954991','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12247,NULL,NULL,NULL,NULL,NULL,'','Dad of Wafa Kodat','+61414412337',NULL,'Mom of Wafa Kodat','',NULL,'Dad of Wafa Kodat','',NULL,'+61414412337','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12257,NULL,NULL,NULL,NULL,NULL,'','Dad of Zaynab Emam','+61450650950',NULL,'Mom of Zaynab Emam','',NULL,'Dad of Zaynab Emam','zaynab.emam@hotmail.com',NULL,'+61450650950','',NULL,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00'),(12267,NULL,NULL,NULL,NULL,NULL,'','Dad of Billal Minaoui','+61435837161',NULL,'Mom of Billal Minaoui','',NULL,'Dad of Billal Minaoui','bella.h.92@hotmail.com',NULL,'+61435837161','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12277,NULL,NULL,NULL,NULL,NULL,'','Dad of Feroz Sattar','+61422401781',NULL,'Mom of Feroz Sattar','',NULL,'Dad of Feroz Sattar','feroz.sattar1@gmail.com',NULL,'+61422401781','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12287,NULL,NULL,NULL,NULL,NULL,'','Dad of Hadi Naghi','+61450616065',NULL,'Mom of Hadi Naghi','',NULL,'Dad of Hadi Naghi','',NULL,'+61450616065','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12297,NULL,NULL,NULL,NULL,NULL,'','Dad of Javed Bin Kalam','+61414138910',NULL,'Mom of Javed Bin Kalam','',NULL,'Dad of Javed Bin Kalam','javed.binkalam@gmail.com',NULL,'+61414138910','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12307,NULL,NULL,NULL,NULL,NULL,'','Dad of Kashif Ghous','+61412875167',NULL,'Mom of Kashif Ghous','',NULL,'Dad of Kashif Ghous','mkgg4n@gmail.com',NULL,'+61412875167','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12317,NULL,NULL,NULL,NULL,NULL,'','Dad of Khaled Abbas','+61466058022',NULL,'Mom of Khaled Abbas','',NULL,'Dad of Khaled Abbas','abbasonline@gmail.com',NULL,'+61466058022','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12327,NULL,NULL,NULL,NULL,NULL,'','Dad of Khaled Minaoui','+61452483321',NULL,'Mom of Khaled Minaoui','',NULL,'Dad of Khaled Minaoui','minaoui73@gmail.com',NULL,'+61452483321','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12337,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohamad Kayal','+61414266339 ',NULL,'Mom of Mohamad Kayal','',NULL,'Dad of Mohamad Kayal','Mohamad85k@gmail.com',NULL,'+61414266339 ','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12347,NULL,NULL,NULL,NULL,NULL,'','Dad of Mohamed Jafran Anzar ','+61490682679 ',NULL,'Mom of Mohamed Jafran Anzar ','',NULL,'Dad of Mohamed Jafran Anzar ','jafanz@outlook.com',NULL,'+61490682679 ','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12357,NULL,NULL,NULL,NULL,NULL,'','Dad of Omar AbuMahmoud','+61405464646',NULL,'Mom of Omar AbuMahmoud','',NULL,'Dad of Omar AbuMahmoud','omarabumahmoud@hotmail.com',NULL,'+61405464646','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12367,NULL,NULL,NULL,NULL,NULL,'','Dad of Raihan Iqbal','+61421736086',NULL,'Mom of Raihan Iqbal','',NULL,'Dad of Raihan Iqbal','raihan.iqbal@gmail.com',NULL,'+61421736086','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12377,NULL,NULL,NULL,NULL,NULL,'','Dad of Rashid Mohamed','+61412787706',NULL,'Mom of Rashid Mohamed','',NULL,'Dad of Rashid Mohamed','krashid@live.com',NULL,'+61412787706','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12387,NULL,NULL,NULL,NULL,NULL,'','Dad of Wassim El Saddik','+61406008411',NULL,'Mom of Wassim El Saddik','',NULL,'Dad of Wassim El Saddik','Wassim_jumex@outlook.com',NULL,'+61406008411','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12397,NULL,NULL,NULL,NULL,NULL,'','Dad of Zahi Naghi','+61450670864',NULL,'Mom of Zahi Naghi','',NULL,'Dad of Zahi Naghi','',NULL,'+61450670864','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12407,NULL,NULL,NULL,NULL,NULL,'','Dad of Amina Touma','+61490405697',NULL,'Mom of Amina Touma','',NULL,'Dad of Amina Touma','',NULL,'+61490405697','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12417,NULL,NULL,NULL,NULL,NULL,'','Dad of Ayesha Shipman','+61434681799',NULL,'Mom of Ayesha Shipman','',NULL,'Dad of Ayesha Shipman','',NULL,'+61434681799','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12427,NULL,NULL,NULL,NULL,NULL,'','Dad of Aziza Elsaddik','+61450848988',NULL,'Mom of Aziza Elsaddik','',NULL,'Dad of Aziza Elsaddik','azizaa.e@hotmail.com',NULL,'+61450848988','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12437,NULL,NULL,NULL,NULL,NULL,'','Dad of Fatma Arja','',NULL,'Mom of Fatma Arja','',NULL,'Dad of Fatma Arja','',NULL,'','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12447,NULL,NULL,NULL,NULL,NULL,'','Dad of Hakimah Muslim','+61410 044 938',NULL,'Mom of Hakimah Muslim','',NULL,'Dad of Hakimah Muslim','hakimah007@yahoo.com',NULL,'+61410 044 938','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12457,NULL,NULL,NULL,NULL,NULL,'','Dad of Hasna Woodbury','+61470625368',NULL,'Mom of Hasna Woodbury','',NULL,'Dad of Hasna Woodbury','hasna.ilim@gmail.com',NULL,'+61470625368','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12467,NULL,NULL,NULL,NULL,NULL,'','Dad of Joumana Rifai','+61458080645',NULL,'Mom of Joumana Rifai','',NULL,'Dad of Joumana Rifai','js4whair@gmail.com',NULL,'+61458080645','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12477,NULL,NULL,NULL,NULL,NULL,'','Dad of Manel Aassar','+61490050977',NULL,'Mom of Manel Aassar','',NULL,'Dad of Manel Aassar','elkadri1@hotmail.com',NULL,'+61490050977','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12487,NULL,NULL,NULL,NULL,NULL,'','Dad of Marita Davies','+610423226186',NULL,'Mom of Marita Davies','',NULL,'Dad of Marita Davies','marita_nsw_au@yahoo.com',NULL,'+610423226186','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12497,NULL,NULL,NULL,NULL,NULL,'','Dad of Monira jebin','+61425303318',NULL,'Mom of Monira jebin','',NULL,'Dad of Monira jebin','mjebin@gmail.com',NULL,'+61425303318','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12507,NULL,NULL,NULL,NULL,NULL,'','Dad of Nemat Jneidi','+610424444384',NULL,'Mom of Nemat Jneidi','',NULL,'Dad of Nemat Jneidi','nematj92@hotmail.com',NULL,'+610424444384','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12517,NULL,NULL,NULL,NULL,NULL,'','Dad of Nurshafinah Binte Mohd Isa','+61411570627',NULL,'Mom of Nurshafinah Binte Mohd Isa','',NULL,'Dad of Nurshafinah Binte Mohd Isa','rocketrascal@gmail.com',NULL,'+61411570627','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12527,NULL,NULL,NULL,NULL,NULL,'','Dad of Refah Amin ','+610435011565',NULL,'Mom of Refah Amin ','',NULL,'Dad of Refah Amin ','refahamin99@gmail.com',NULL,'+610435011565','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12537,NULL,NULL,NULL,NULL,NULL,'','Dad of Ronia Kadri','+61410969912',NULL,'Mom of Ronia Kadri','',NULL,'Dad of Ronia Kadri','elkadri1@hotmail.com',NULL,'+61410969912','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12547,NULL,NULL,NULL,NULL,NULL,'','Dad of Sagal Ahmed','+610403452433',NULL,'Mom of Sagal Ahmed','',NULL,'Dad of Sagal Ahmed','sagalahmed299@gmail.com',NULL,'+610403452433','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12557,NULL,NULL,NULL,NULL,NULL,'','Dad of Souheir Ayad','+413773228',NULL,'Mom of Souheir Ayad','',NULL,'Dad of Souheir Ayad','',NULL,'+413773228','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12567,NULL,NULL,NULL,NULL,NULL,'','Dad of Wafa Kodat','+61414412337',NULL,'Mom of Wafa Kodat','',NULL,'Dad of Wafa Kodat','wafa1@live.com.au',NULL,'+61414412337','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12577,NULL,NULL,NULL,NULL,NULL,'','Dad of ','',NULL,'Mom of ','',NULL,'Dad of ','',NULL,'','',NULL,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00'),(12597,NULL,NULL,NULL,NULL,NULL,'father','Abdul','','','Zainab','','','Abdul','','Father','000000000','','','yes','2018-01-30 19:31:24','0000-00-00 00:00:00'),(12607,NULL,NULL,NULL,NULL,NULL,'father','Mohammed','099900999','','Zainab','','','Mohammed','mukthar.shiek@gmail.com','Father','099900999','','','yes','2018-01-31 00:26:24','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `student_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_parent_fees`
--

DROP TABLE IF EXISTS `student_parent_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_parent_fees` (
  `id` int(11) NOT NULL,
  `student_parent_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `final_amount` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` int(11) DEFAULT NULL,
  `month` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_parent_fees`
--

LOCK TABLES `student_parent_fees` WRITE;
/*!40000 ALTER TABLE `student_parent_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_parent_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_session`
--

DROP TABLE IF EXISTS `student_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT '0.00',
  `fees_discount` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject_count` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13297 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_session`
--

LOCK TABLES `student_session` WRITE;
/*!40000 ALTER TABLE `student_session` DISABLE KEYS */;
INSERT INTO `student_session` VALUES (7,11,12617,137,397,0,0,0.00,0.00,'no','2018-01-20 05:06:14','0000-00-00 00:00:00',0),(9657,11,9677,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9667,11,9687,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9677,11,9697,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9687,11,9707,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9697,11,9717,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9707,11,9727,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9717,11,9737,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9727,11,9747,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9737,11,9757,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9747,11,9767,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9757,11,9777,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9767,11,9787,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9777,11,9797,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9787,11,9807,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9797,11,9817,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9807,11,9827,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9817,11,9837,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9827,11,9847,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9837,11,9857,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9847,11,9867,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9857,11,9877,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9867,11,9887,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9877,11,9897,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9887,11,9907,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9897,11,9917,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9907,11,9927,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9917,11,9937,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9927,11,9947,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9937,11,9957,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9947,11,9967,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9957,11,9977,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9967,11,9987,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9977,11,9997,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9987,11,10007,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(9997,11,10017,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10007,11,10027,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10017,11,10037,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10027,11,10047,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10037,11,10057,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10047,11,10067,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10057,11,10077,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10067,11,10087,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10077,11,10097,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10087,11,10107,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10097,11,10117,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10107,11,10127,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10117,11,10137,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10127,11,10147,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10137,11,10157,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10147,11,10167,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10157,11,10177,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10167,11,10187,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10177,11,10197,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10187,11,10207,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10197,11,10217,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10207,11,10227,137,407,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10217,11,10237,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10227,11,10247,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10237,11,10257,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10247,11,10267,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10257,11,10277,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10267,11,10287,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10277,11,10297,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10287,11,10307,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10297,11,10317,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10307,11,10327,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10317,11,10337,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10327,11,10347,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10337,11,10357,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10347,11,10367,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10357,11,10377,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10367,11,10387,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10377,11,10397,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10387,11,10407,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10397,11,10417,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10407,11,10427,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10417,11,10437,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10427,11,10447,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10437,11,10457,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10447,11,10467,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10457,11,10477,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10467,11,10487,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10477,11,10497,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10487,11,10507,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10497,11,10517,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10507,11,10527,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10517,11,10537,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10527,11,10547,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10537,11,10557,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10547,11,10567,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10557,11,10577,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10567,11,10587,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10577,11,10597,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10587,11,10607,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10597,11,10617,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10607,11,10627,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10617,11,10637,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10627,11,10647,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10637,11,10657,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10647,11,10667,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10657,11,10677,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10667,11,10687,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10677,11,10697,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10687,11,10707,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10697,11,10717,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10707,11,10727,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10717,11,10737,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10727,11,10747,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10737,11,10757,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10747,11,10767,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10757,11,10777,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10767,11,10787,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10777,11,10797,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10787,11,10807,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10797,11,10817,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10807,11,10827,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10817,11,10837,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10827,11,10847,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10837,11,10857,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10847,11,10867,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10857,11,10877,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10867,11,10887,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10877,11,10897,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10887,11,10907,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10897,11,10917,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10907,11,10927,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10917,11,10937,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10927,11,10947,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10937,11,10957,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10947,11,10967,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10957,11,10977,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10967,11,10987,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10977,11,10997,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10987,11,11007,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(10997,11,11017,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11007,11,11027,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11017,11,11037,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11027,11,11047,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11037,11,11057,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11047,11,11067,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11057,11,11077,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11067,11,11087,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11077,11,11097,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11087,11,11107,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11097,11,11117,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11107,11,11127,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11117,11,11137,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11127,11,11147,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11137,11,11157,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11147,11,11167,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11157,11,11177,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11167,11,11187,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11177,11,11197,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11187,11,11207,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11197,11,11217,137,397,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11207,11,11227,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11217,11,11237,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11227,11,11247,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11237,11,11257,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11247,11,11267,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11257,11,11277,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11267,11,11287,137,417,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11277,11,11297,137,427,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:07','0000-00-00 00:00:00',0),(11287,11,11307,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11297,11,11317,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11307,11,11327,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11317,11,11337,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11327,11,11347,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11337,11,11357,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11347,11,11367,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11357,11,11377,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11367,11,11387,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11377,11,11397,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11387,11,11407,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11397,11,11417,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11407,11,11427,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11417,11,11437,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11427,11,11447,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11437,11,11457,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11447,11,11467,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11457,11,11477,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11467,11,11487,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11477,11,11497,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11487,11,11507,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11497,11,11517,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11507,11,11527,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11517,11,11537,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11527,11,11547,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11537,11,11557,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11547,11,11567,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11557,11,11577,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11567,11,11587,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11577,11,11597,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11587,11,11607,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11597,11,11617,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11607,11,11627,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11617,11,11637,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11627,11,11647,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11637,11,11657,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11647,11,11667,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11657,11,11677,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11667,11,11687,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11677,11,11697,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11687,11,11707,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11697,11,11717,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11707,11,11727,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11717,11,11737,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11727,11,11747,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11737,11,11757,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11747,11,11767,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11757,11,11777,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11767,11,11787,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11777,11,11797,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11787,11,11807,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11797,11,11817,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11807,11,11827,147,447,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11817,11,11837,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11827,11,11847,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11837,11,11857,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11847,11,11867,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11857,11,11877,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11867,11,11887,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11877,11,11897,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11887,11,11907,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11897,11,11917,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11907,11,11927,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11917,11,11937,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11927,11,11947,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11937,11,11957,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11947,11,11967,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11957,11,11977,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11967,11,11987,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11977,11,11997,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11987,11,12007,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(11997,11,12017,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12007,11,12027,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12017,11,12037,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12027,11,12047,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12037,11,12057,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12047,11,12067,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12057,11,12077,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12067,11,12087,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12077,11,12097,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12087,11,12107,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12097,11,12117,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12107,11,12127,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12117,11,12137,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12127,11,12147,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12137,11,12157,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12147,11,12167,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12157,11,12177,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12167,11,12187,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12177,11,12197,147,437,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12187,11,12207,147,457,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12197,11,12217,147,457,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12207,11,12227,147,457,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12217,11,12237,147,457,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12227,11,12247,147,457,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12237,11,12257,147,457,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12247,11,12267,147,457,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12257,11,12277,147,457,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12267,11,12287,147,457,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:49','0000-00-00 00:00:00',0),(12277,11,12297,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12287,11,12307,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12297,11,12317,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12307,11,12327,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12317,11,12337,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12327,11,12347,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12337,11,12357,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12347,11,12367,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12357,11,12377,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12367,11,12387,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12377,11,12397,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12387,11,12407,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12397,11,12417,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12407,11,12427,157,467,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12417,11,12437,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12427,11,12447,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12437,11,12457,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12447,11,12467,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12457,11,12477,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12467,11,12487,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12477,11,12497,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12487,11,12507,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12497,11,12517,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12507,11,12527,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12517,11,12537,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12527,11,12547,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12537,11,12557,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12547,11,12567,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12557,11,12577,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12567,11,12587,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12577,11,12597,157,477,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12587,11,12607,157,427,0,NULL,0.00,0.00,'yes','2017-10-11 03:31:52','0000-00-00 00:00:00',0),(12597,11,0,137,397,0,NULL,0.00,0.00,'no','2018-01-21 11:08:36','0000-00-00 00:00:00',0),(12607,11,12627,137,397,0,NULL,0.00,0.00,'no','2018-01-21 11:14:01','0000-00-00 00:00:00',0),(12617,11,12637,137,397,0,NULL,0.00,0.00,'no','2018-01-21 11:15:16','0000-00-00 00:00:00',0),(12627,11,12647,147,437,0,NULL,0.00,0.00,'no','2018-01-21 11:23:03','0000-00-00 00:00:00',0),(12637,11,12657,147,437,0,NULL,0.00,0.00,'no','2018-01-21 11:24:03','0000-00-00 00:00:00',0),(12647,11,12667,147,437,0,NULL,0.00,0.00,'no','2018-01-21 11:47:11','0000-00-00 00:00:00',0),(12657,11,12677,137,397,0,NULL,0.00,0.00,'no','2018-01-21 13:06:07','0000-00-00 00:00:00',0),(12667,11,12687,137,397,0,NULL,0.00,0.00,'no','2018-01-21 13:20:09','0000-00-00 00:00:00',0),(12677,11,12697,137,397,0,NULL,0.00,0.00,'no','2018-01-21 13:30:27','0000-00-00 00:00:00',0),(12717,11,12717,137,397,0,NULL,0.00,0.00,'no','2018-01-21 15:12:52','0000-00-00 00:00:00',0),(12727,11,12727,137,397,0,NULL,0.00,0.00,'no','2018-01-30 19:32:17','0000-00-00 00:00:00',0),(12737,11,12727,157,467,0,NULL,0.00,0.00,'no','2018-01-30 19:32:17','0000-00-00 00:00:00',0),(12747,11,12737,137,407,0,NULL,0.00,0.00,'no','2018-01-31 00:29:20','0000-00-00 00:00:00',0),(12757,11,12737,167,487,0,NULL,0.00,0.00,'no','2018-01-31 00:29:20','0000-00-00 00:00:00',0),(12767,11,12747,137,397,0,NULL,0.00,0.00,'no','2018-01-31 00:31:00','0000-00-00 00:00:00',0),(12777,11,12747,167,497,0,NULL,0.00,0.00,'no','2018-01-31 00:31:00','0000-00-00 00:00:00',0),(12787,11,12757,147,447,0,NULL,0.00,0.00,'no','2018-01-31 00:32:33','0000-00-00 00:00:00',0),(12837,11,12767,137,397,0,NULL,0.00,0.00,'no','2018-01-31 20:44:45','0000-00-00 00:00:00',0),(12847,11,12777,137,407,0,NULL,0.00,0.00,'no','2018-01-31 20:46:24','0000-00-00 00:00:00',0),(12857,11,12787,137,407,0,NULL,0.00,0.00,'no','2018-01-31 20:46:51','0000-00-00 00:00:00',0),(13227,11,12707,137,407,0,NULL,0.00,0.00,'no','2018-02-02 21:40:31','0000-00-00 00:00:00',0),(13237,11,12707,147,447,0,NULL,0.00,0.00,'no','2018-02-02 21:40:31','0000-00-00 00:00:00',3),(13247,11,12797,137,507,0,NULL,0.00,0.00,'no','2018-02-02 21:55:09','0000-00-00 00:00:00',0),(13257,11,12797,167,517,0,NULL,0.00,0.00,'no','2018-02-02 21:55:09','0000-00-00 00:00:00',0),(13267,11,12807,147,437,0,NULL,0.00,0.00,'no','2018-02-02 21:58:35','0000-00-00 00:00:00',1),(13277,11,12817,137,397,0,NULL,0.00,0.00,'no','2018-02-02 23:36:45','0000-00-00 00:00:00',0),(13287,11,12827,137,397,0,NULL,0.00,0.00,'no','2018-02-02 23:39:28','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `student_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_sibling`
--

DROP TABLE IF EXISTS `student_sibling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_sibling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_sibling`
--

LOCK TABLES `student_sibling` WRITE;
/*!40000 ALTER TABLE `student_sibling` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_sibling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_statement`
--

DROP TABLE IF EXISTS `student_statement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_statement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guardian_id` int(11) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `credit` decimal(10,2) DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(200) DEFAULT NULL,
  `fee_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `statement_guardian_idx_idx` (`guardian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_statement`
--

LOCK TABLES `student_statement` WRITE;
/*!40000 ALTER TABLE `student_statement` DISABLE KEYS */;
INSERT INTO `student_statement` VALUES (7,12607,'Muhammad 2018 Term 1 Fees - Quran College',100.00,0.00,'2017-10-10 00:00:00','2017-10-10 00:00:00','2017-10-10 00:00:00','admin','admin',NULL,NULL,NULL,NULL),(17,12607,NULL,200.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,12747,12737,NULL,'Term Fees'),(27,12607,NULL,150.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,12757,12737,NULL,'Term Fees'),(37,12607,NULL,200.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,12767,12747,NULL,'Term Fees'),(47,12607,NULL,150.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,12777,12747,NULL,'Term Fees'),(57,12607,NULL,200.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,12847,12777,NULL,'Term Fees'),(67,12607,NULL,200.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,12857,12787,NULL,'Term Fees'),(77,12587,NULL,200.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,13227,12707,NULL,'Term Fees'),(87,12587,'3 Subjects',240.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,13237,12707,NULL,'Term Fees'),(97,12587,NULL,200.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,12717,12717,NULL,'Term Fees'),(107,12587,NULL,200.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,13247,12797,NULL,'Term Fees'),(117,12587,NULL,150.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,13257,12797,NULL,'Term Fees'),(127,12587,'1 Subjects',100.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,13267,12807,NULL,'Term Fees'),(137,12587,NULL,200.00,NULL,'2018-02-03 00:00:00',NULL,NULL,NULL,NULL,13287,12827,NULL,'Term Fees');
/*!40000 ALTER TABLE `student_statement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_transport_fees`
--

DROP TABLE IF EXISTS `student_transport_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_transport_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_transport_fees`
--

LOCK TABLES `student_transport_fees` WRITE;
/*!40000 ALTER TABLE `student_transport_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_transport_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_parent_id` int(11) DEFAULT NULL,
  `admission_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roll_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rte` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobileno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `dob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8_unicode_ci,
  `permanent_address` text COLLATE utf8_unicode_ci,
  `category_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adhar_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `samagra_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_is` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'T',
  `father_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_address` text COLLATE utf8_unicode_ci,
  `guardian_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `previous_school` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12837 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (9677,9647,'9677','S000372',NULL,'Abdullah','AlShehri','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9687,9657,'9687','S000545',NULL,'Ahmad','Tasabehji','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9697,9667,'9697','S000012',NULL,'Aiesha','Tizani','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9707,9677,'9707','S000392',NULL,'Ali','Rima','No','uploads/student_images/no_image.png','','georgettem84@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9717,9687,'9717','S000544',NULL,'Ali','Teffaha','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9727,9697,'9727','S000370',NULL,'Amel','Jarrah','No','uploads/student_images/no_image.png','+61404789777','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9737,9707,'9737','S000371',NULL,'Aya','Jarrah','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9747,9717,'9747','S000595',NULL,'Diana','Elmasri','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9757,9727,'9757','S000349',NULL,'Hijjaz','Abdulrahman','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9767,9737,'9767','S000457',NULL,'Ibrahim','Rima','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9777,9747,'9777','S000013',NULL,'Ismaeel','Raad','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9787,9757,'9787','S000459',NULL,'Israa','Rima','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9797,9767,'9797','S000585',NULL,'Mariam','Azzauui','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9807,9777,'9807','S000309',NULL,'Mariam','Elkassir','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9817,9787,'9817','S000414',NULL,'Mohammed','Almahameed','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9827,9797,'9827','S000510',NULL,'Mountaha','Kobaitri','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9837,9807,'9837','S000219',NULL,'Safiah','Kammoun','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9847,9817,'9847','S000590',NULL,'Sahil','Oowise','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9857,9827,'9857','S000383',NULL,'Tayyibah','Sayeed','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9867,9837,'9867','S000416',NULL,'Zaid','Almahameed','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9877,9847,'9877','S000062',NULL,'Aadiat','Shamim','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9887,9857,'9887','S000529',NULL,'Abdullah','Rifai','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9897,9867,'9897','S000172',NULL,'Abdulrahman','Hamad','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9907,9877,'9907','S000525',NULL,'Abu','Abdelaziz','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9917,9887,'9917','S000050',NULL,'AbuBakr','Alam','No','uploads/student_images/no_image.png','0433 350 980','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9927,9897,'9927','S000523',NULL,'Abubakr','Shaheer','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9937,9907,'9937','S000164',NULL,'Adnaan','Ali','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9947,9917,'9947','S000260',NULL,'Ahmad','Ali','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9957,9927,'9957','S000530',NULL,'Amatullah','Rifai','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9967,9937,'9967','S000080',NULL,'Danyaal','Zafar','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9977,9947,'9977','S000548',NULL,'Gabriel','Marjan','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9987,9957,'9987','S000067',NULL,'Hadi','Naghi','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(9997,9967,'9997','S000399',NULL,'Haldun','Bajramovic','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10007,9977,'10007','S000528',NULL,'Iqtidar','ahmed','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10017,9987,'10017','S000405',NULL,'Khalid','Khalak','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10027,9997,'10027','S000171',NULL,'Mohamed','Hamad','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10037,10007,'10037','S000522',NULL,'Mohammed','Shaheer','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10047,10017,'10047','S000591',NULL,'Muhammad','AlKhateeb','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10057,10027,'10057','S000592',NULL,'Munira','AlKhateeb','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10067,10037,'10067','S000593',NULL,'Mustafa','AlKhateeb','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10077,10047,'10077','S000524',NULL,'Noureldin','Abdelaziz','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10087,10057,'10087','S000068',NULL,'Zahi','Naghi','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10097,10067,'10097','S000520',NULL,'Ghazala','Wahab','No','uploads/student_images/no_image.png','','ghazala@dr.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10107,10077,'10107','S000209',NULL,'Jasmine','Akhter','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10117,10087,'10117','S000560',NULL,'Ahmed','Elzir','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10127,10097,'10127','S000558',NULL,'Ali','Elzir','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10137,10107,'10137','S000561',NULL,'Amir','Elzir','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10147,10117,'10147','S000559',NULL,'Ayman','','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10157,10127,'10157','S000517',NULL,'Omar','Kataieh','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10167,10137,'10167','S000563',NULL,'Amir','Khan','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10177,10147,'10177','S000562',NULL,'Ezadin','Ismail','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10187,10157,'10187','S000521',NULL,'Kashif','Ghous','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10197,10167,'10197','S000092',NULL,'Khaled','Najjar','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10207,10177,'10207','S000550',NULL,'Mohammad','Munayem','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10217,10187,'10217','S000491',NULL,'Ali','Muhieddine','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10227,10197,'10227','S000474',NULL,'Mohammad','Houda','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10237,10207,'10237','S000042',NULL,'Joy','Pese','No','uploads/student_images/no_image.png','','byjoy_@outlook.com.au',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10247,10217,'10247','S000578',NULL,'Manal','Hassan','No','uploads/student_images/no_image.png','','mahr5610@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10257,10227,'10257','S000574',NULL,'Mariam','Ayad','No','uploads/student_images/no_image.png','','mariam.ayad@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10267,10237,'10267','S000410',NULL,'Nasreen','Syeda','No','uploads/student_images/no_image.png','','samsyeda786@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10277,10247,'10277','S000597',NULL,'Nur','Basha','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10287,10257,'10287','S000443',NULL,'Saumiah','Albaf','No','uploads/student_images/no_image.png','','saumiahalbaf@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10297,10267,'10297','S000598',NULL,'Sue','Rifai','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10307,10277,'10307','S000577',NULL,'Suzana','Radosavljevic','No','uploads/student_images/no_image.png','','Suzana.rad@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10317,10287,'10317','S000572',NULL,'Tracey','Menzies','No','uploads/student_images/no_image.png','','tracey2033@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10327,10297,'10327','S000487',NULL,'Veronica','Zaid','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10337,10307,'10337','S000140',NULL,'AbdulQadir','AlBayati','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10347,10317,'10347','S000334',NULL,'Abdulrahman','','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10357,10327,'10357','S000028',NULL,'Ahmad','Alboushama','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10367,10337,'10367','S000458',NULL,'Badr','Rima','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10377,10347,'10377','S000546',NULL,'Emad','Teffaha','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10387,10357,'10387','S000547',NULL,'Ibrahim','Jalloh','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10397,10367,'10397','S000485',NULL,'Issa','Ghazzaoui','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10407,10377,'10407','S000031',NULL,'Mouhamed','Hussein','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10417,10387,'10417','S000051',NULL,'Muhammad','Raad','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10427,10397,'10427','S000243',NULL,'Rania','Islam','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10437,10407,'10437','S000588',NULL,'Shayan','Oowise','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10447,10417,'10447','S000473',NULL,'Wajih','ElSayed','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10457,10427,'10457','S000332',NULL,'Zeyad','AlDulaimi','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10467,10437,'10467','S000428',NULL,'Ziad','Arja','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10477,10447,'10477','S000596',NULL,'Alyssar','Elmasri','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10487,10457,'10487','S000022',NULL,'Jayda','Molhem','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10497,10467,'10497','S000543',NULL,'Raghad','Mosbah','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10507,10477,'10507','S000011',NULL,'Aamina','Tizani','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10517,10487,'10517','S000139',NULL,'Afsheen','Shakhawat','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10527,10497,'10527','S000141',NULL,'Ahmed','AlBayati','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10537,10507,'10537','S000472',NULL,'Aiysha','Rima','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10547,10517,'10547','S000204',NULL,'Anas','Shamim','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10557,10527,'10557','S000020',NULL,'Belal','Hussein','No','uploads/student_images/no_image.png','','zhamdache@icloud.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10567,10537,'10567','S000429',NULL,'Firdous','Arja','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10577,10547,'10577','S000319',NULL,'Jueyrie','Ubaydullah','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10587,10557,'10587','S000308',NULL,'Marwan','Elkassir','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10597,10567,'10597','S000526',NULL,'Rawya','Teffaha','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10607,10577,'10607','S000365',NULL,'Saniya','Mahmoud','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10617,10587,'10617','S000008',NULL,'Sheik','Ubaydullah','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10627,10597,'10627','S000513',NULL,'Simra','Hussein','No','uploads/student_images/no_image.png','','shmalik25@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10637,10607,'10637','S000432',NULL,'Subhan','','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10647,10617,'10647','S000394',NULL,'Yousef','Rima','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10657,10627,'10657','S000023',NULL,'Zayaan','Maleek','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10667,10637,'10667','S000135',NULL,'Aashfi','Shakhawat','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10677,10647,'10677','S000198',NULL,'Afraaz','Siddiqui','No','uploads/student_images/no_image.png','','moona@nticon.com.au',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10687,10657,'10687','S000200',NULL,'Ayeza','Siddiqui','No','uploads/student_images/no_image.png','','moona@nticon.com.au',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10697,10667,'10697','S000331',NULL,'Farhan','Anjum','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10707,10677,'10707','S000583',NULL,'Lubaina','Zia','No','uploads/student_images/no_image.png','','mzia1@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10717,10687,'10717','S000061',NULL,'Lujain','Maleek','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10727,10697,'10727','S000533',NULL,'Maymoonah','Jalloh','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10737,10707,'10737','S000267',NULL,'Rayhaan','Amputch','No','uploads/student_images/no_image.png','','k.amputch@outlook.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10747,10717,'10747','S000266',NULL,'Rayyaan','Amputch','No','uploads/student_images/no_image.png','','k.amputch@outlook.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10757,10727,'10757','S000242',NULL,'Rayyan','Islam','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10767,10737,'10767','S000373',NULL,'Rema','AlShehri','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10777,10747,'10777','S000119',NULL,'Shajarat','Shamim','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10787,10757,'10787','S000261',NULL,'Zaineb','Khalak','No','uploads/student_images/no_image.png','','skhalak@yahoo.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10797,10767,'10797','S000565',NULL,'Adam','AlDhaibi','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10807,10777,'10807','S000566',NULL,'Alyssa','AlDhaibi','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10817,10787,'10817','S000466',NULL,'Amelia','Mahek','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10827,10797,'10827','S000539',NULL,'Asiyah','Wehbe','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10837,10807,'10837','S000564',NULL,'Ayda','AlDhaibi','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10847,10817,'10847','S000315',NULL,'Daneya','Mohammad','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10857,10827,'10857','S000587',NULL,'Faria','Mahboob','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10867,10837,'10867','S000542',NULL,'Fawaz','Assaad','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10877,10847,'10877','S000586',NULL,'Mohammed','Mahmoudurahman','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10887,10857,'10887','S000584',NULL,'Mustafa','Azzauui','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10897,10867,'10897','S000552',NULL,'Rehana','Saifullah','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10907,10877,'10907','S000553',NULL,'Rohana','Saifullah','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10917,10887,'10917','S000469',NULL,'Suhayb','Siddiqui','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10927,10897,'10927','S000320',NULL,'Tasneem','Ayoubi','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10937,10907,'10937','S000532',NULL,'Abdulrahman','AbdulRashid','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10947,10917,'10947','S000505',NULL,'Ahmed','Jalloh','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10957,10927,'10957','S000512',NULL,'Arooba','Sultana','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10967,10937,'10967','S000514',NULL,'Awwab','Hussein','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10977,10947,'10977','S000415',NULL,'Dana','Almahameed','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10987,10957,'10987','S000007',NULL,'Hassan','Alboushama','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(10997,10967,'10997','S000515',NULL,'Ibrahim','Rifai','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11007,10977,'11007','S000504',NULL,'Ismaeel','Jalloh','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11017,10987,'11017','S000506',NULL,'Khadeejah','AlHawari','No','uploads/student_images/no_image.png','','send_it_through@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11027,10997,'11027','S000503',NULL,'Maha','Badreddine','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11037,11007,'11037','S000502',NULL,'Nabeel','Abdul','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11047,11017,'11047','S000501',NULL,'Nabeelah','Abdul','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11057,11027,'11057','S000380',NULL,'Omar','Husseini','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11067,11037,'11067','S000511',NULL,'Rufiul','Kader','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11077,11047,'11077','S000531',NULL,'Safiyyah','Abdulrahman','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11087,11057,'11087','S000381',NULL,'Soliman','Husseini','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11097,11067,'11097','S000507',NULL,'Tasneem','Zia','No','uploads/student_images/no_image.png','','mzia1@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11107,11077,'11107','S000471',NULL,'Tassnim','Rima','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11117,11087,'11117','S000218',NULL,'Amanee','Kammoun','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11127,11097,'11127','S000460',NULL,'Badia','Rima','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11137,11107,'11137','S000393',NULL,'Fateema','Rima','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11147,11117,'11147','S000580',NULL,'Leila','Elmasri','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11157,11127,'11157','S000461',NULL,'Nadine','Rima','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11167,11137,'11167','S000333',NULL,'Nahidah','AlDulaimi','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11177,11147,'11177','S000534',NULL,'Safa','Sayeed','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11187,11157,'11187','S000188',NULL,'Salma','Syeda','No','uploads/student_images/no_image.png','','shakhawat07@yahoo.com.au',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11197,11167,'11197','S000594',NULL,'Sharmin','Khan','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11207,11177,'11207','S000589',NULL,'Shazneen','Oowise','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11217,11187,'11217','S000350',NULL,'Sumayyah','Abdulrahman','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11227,11197,'11227','S000444',NULL,'Abir','AlBayati','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11237,11207,'11237','S000537',NULL,'Aqsa','Sajjad','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11247,11217,'11247','S000536',NULL,'Faria','Ahsan','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11257,11227,'11257','S000431',NULL,'Fatima','Arja','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11267,11237,'11267','S000379',NULL,'Omul','Ayoub','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11277,11247,'11277','S000535',NULL,'Rawand','Abuawwad','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11287,11257,'11287','S000498',NULL,'Souheir','Ayad','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11297,11267,'11297','',NULL,'','','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11307,11277,'11307','S000137',NULL,'Anthea','Costi','No','uploads/student_images/no_image.png','+61405437500','antheacos@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11317,11287,'11317','S000090',NULL,'Bibi','Meher','No','uploads/student_images/no_image.png','+61403060975','saba_shuja@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11327,11297,'11327','S000131',NULL,'Ghaysa','hijazi','No','uploads/student_images/no_image.png','+61431531031','ghaysahijazi@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11337,11307,'11337','S000394',NULL,'Halima','Zraika','No','uploads/student_images/no_image.png','+61405418822','halima.k8378@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11347,11317,'11347','S000396',NULL,'Hannan','Raad','No','uploads/student_images/no_image.png','+61410699696','h.a.raad27@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11357,11327,'11357','S000107',NULL,'Lorraine','Ejje','No','uploads/student_images/no_image.png','+61424652095','lorraine24@live.com.au',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11367,11337,'11367','S000215',NULL,'Manal','Massri','No','uploads/student_images/no_image.png','+61431494707','manal@itmanage.com.au',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11377,11347,'11377','S000110',NULL,'Nemat','Jneidi','No','uploads/student_images/no_image.png','+61424444384','nematj92@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11387,11357,'11387','S000109',NULL,'Nisreen','Haidar','No','uploads/student_images/no_image.png','+61404623641','nisreen1216@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11397,11367,'11397','S000410',NULL,'Razan','Dannoun','No','uploads/student_images/no_image.png','+61421656149','dr_hafda@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11407,11377,'11407','S000119',NULL,'Riham','Abdelhalim','No','uploads/student_images/no_image.png','+61424196646','reez4islam@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11417,11387,'11417','S000118',NULL,'Umm','Omar','No','uploads/student_images/no_image.png','+61490405697','umm_omar2@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11427,11397,'11427','S000364',NULL,'Abdullah','Shaikh','No','uploads/student_images/no_image.png','+614357278177','abdullah_shaikh123@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11437,11407,'11437','S000366',NULL,'Abdulrahman','Nemra','No','uploads/student_images/no_image.png','+61432688067','a.nemra@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11447,11417,'11447','S000351',NULL,'Ahmad','Alameddine','No','uploads/student_images/no_image.png','+61451969653','tyresexcel5811@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11457,11427,'11457','S000339',NULL,'Ahmed','Alameddine','No','uploads/student_images/no_image.png','+61488467117','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11467,11437,'11467','S000400',NULL,'Ahmed','Zreika','No','uploads/student_images/no_image.png','+61450402109','ahmedd_zreika@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11477,11447,'11477','S000346',NULL,'Dawud','','No','uploads/student_images/no_image.png','+61412591122','dawoodlechef@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11487,11457,'11487','S000341',NULL,'Deb','Aili','No','uploads/student_images/no_image.png','+61451502119','hd.telecomm@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11497,11467,'11497','S000415',NULL,'Emad','Issa','No','uploads/student_images/no_image.png','+61430148316','e.issa1991@live.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11507,11477,'11507','S000362',NULL,'Fadi','Assaad','No','uploads/student_images/no_image.png','+61414529354','fadi_assaad@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11517,11487,'11517','S000354',NULL,'Fahad','Shaikh','No','uploads/student_images/no_image.png','+61430519944','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11527,11497,'11527','S000342',NULL,'Haidar','Sakhra','No','uploads/student_images/no_image.png','+61431754419','haider_sakhra143@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11537,11507,'11537','S000353',NULL,'Hesham','Sahib','No','uploads/student_images/no_image.png','+61410367567','heshaam_s@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11547,11517,'11547','S000347',NULL,'Imran','Katieh','No','uploads/student_images/no_image.png','+61478189821','imrankatieh@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11557,11527,'11557','S000361',NULL,'Javed','Kalam','No','uploads/student_images/no_image.png','+61414138910','javed.binkalam@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11567,11537,'11567','S000367',NULL,'Khaled','Abbas','No','uploads/student_images/no_image.png','+61466058022','abbasonline@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11577,11547,'11577','S000365',NULL,'Kheireddine','Melhem','No','uploads/student_images/no_image.png','+61430302812','kheiro.m@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11587,11557,'11587','S000412',NULL,'Mahmoud','Daher','No','uploads/student_images/no_image.png','+61435503585','m.daher1996@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11597,11567,'11597','S000355',NULL,'Milad','Sidiqui','No','uploads/student_images/no_image.png','+61450003942','miladmsidiqui@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11607,11577,'11607','S000409',NULL,'Mohamed','Abdelaziz','No','uploads/student_images/no_image.png','+61416866654','m.n.abdelaziz@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11617,11587,'11617','S000340',NULL,'Mohamed','Hawi','No','uploads/student_images/no_image.png','+61423930952','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11627,11597,'11627','S000349',NULL,'Mohammed','Arja','No','uploads/student_images/no_image.png','+61412521846','mohammedarja@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11637,11607,'11637','S000352',NULL,'Mohammed','Malas','No','uploads/student_images/no_image.png','+61414338001','moemalas@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11647,11617,'11647','S000356',NULL,'Mohammed','Muhieddine','No','uploads/student_images/no_image.png','+61432111476','mohammed.muhieddine@live.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11657,11627,'11657','S000398',NULL,'Mohammed','Shaheed','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11667,11637,'11667','S000369',NULL,'Mustafa','Jabbar','No','uploads/student_images/no_image.png','+61416660786','mustafa.jabbar90@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11677,11647,'11677','S000343',NULL,'Omar','Muhieddine','No','uploads/student_images/no_image.png','+61450046627','omar.zfda@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11687,11657,'11687','S000368',NULL,'Rabee','Alisabri','No','uploads/student_images/no_image.png','+61414445743','rabee.alisabri@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11697,11667,'11697','S000399',NULL,'Rashid','Mohamed','No','uploads/student_images/no_image.png','+61412787706','krashid@live.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11707,11677,'11707','S000363',NULL,'Robert','Todoroski','No','uploads/student_images/no_image.png','+61414196902','roberttodoroski@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11717,11687,'11717','S000358',NULL,'Saiyd','Jamal','No','uploads/student_images/no_image.png','+61435064544','saiyd.jamal@outlook.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11727,11697,'11727','S000350',NULL,'Samir','Kataieh','No','uploads/student_images/no_image.png','+61424658880','bandsmotors@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11737,11707,'11737','S000359',NULL,'Yusuf','Mhaiche','No','uploads/student_images/no_image.png','+61421792594','yussuf91@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11747,11717,'11747','S000344',NULL,'Ziad','Mashkoor','No','uploads/student_images/no_image.png','+61440191014','ziadmashkoor@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11757,11727,'11757','S000323',NULL,'Iqtidar','Ahmed','No','uploads/student_images/no_image.png','+61481143115','iqtidar.ahmed.education@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11767,11737,'11767','S000254',NULL,'Jalal','Kamoun','No','uploads/student_images/no_image.png','+61410 867 007','jalal_kamoun@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11777,11747,'11777','S000245',NULL,'Mahardhika','Hidayatullah','No','uploads/student_images/no_image.png','+61409823952','dhikash1997@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11787,11757,'11787','S000043',NULL,'Mahmoud','ElKhatib','No','uploads/student_images/no_image.png','+61401442073','Moey_khatib@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11797,11767,'11797','S000328',NULL,'Shamim','Babu','No','uploads/student_images/no_image.png','+61422807627','babumunni@yahoo.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11807,11777,'11807','S000262',NULL,'Yasin','Ashley','No','uploads/student_images/no_image.png','+61404 172 132','yasin_ashley@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11817,11787,'11817','S000264',NULL,'Yusuf','Gelder','No','uploads/student_images/no_image.png','+61447396633','yusuf.gelder97@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11827,11797,'11827','S000318',NULL,'Zak','Chahal','No','uploads/student_images/no_image.png','+61401 189 472','zakareya905@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11837,11807,'11837','S000277',NULL,'Amar','Kabbara','No','uploads/student_images/no_image.png','+61424112008','zaatar.hassan@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11847,11817,'11847','S000278',NULL,'Aminata','Wleh','No','uploads/student_images/no_image.png','+61432687501','i.mfofiemj@yahoo.com.au',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11857,11827,'11857','S000280',NULL,'Carly','McQualter','No','uploads/student_images/no_image.png','+61409 814 511','carly.mcqualter@bigpond.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11867,11837,'11867','S000283',NULL,'Emma','Ramlawie','No','uploads/student_images/no_image.png','+61414 869 425','emaarab@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11877,11847,'11877','S000286',NULL,'Hakimah','Muslim','No','uploads/student_images/no_image.png','+61410 044 938','kimm07@icloud.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11887,11857,'11887','S000327',NULL,'Hasina','Kamel','No','uploads/student_images/no_image.png','+61470666493','hasinakamel@yahoo.com.au',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11897,11867,'11897','S000192',NULL,'Hasna','Woodbury','No','uploads/student_images/no_image.png','+610470625368','hasna.ilim@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11907,11877,'11907','S000292',NULL,'Mardhiah','Abedine','No','uploads/student_images/no_image.png','+61416800550','mardhiahz@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11917,11887,'11917','S000295',NULL,'Nada','Jamus','No','uploads/student_images/no_image.png','+61406646196','Nadush7_7@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11927,11897,'11927','S000296',NULL,'Nazira','Samman','No','uploads/student_images/no_image.png','+61415131953','nazirahelsamman@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11937,11907,'11937','S000312',NULL,'Ramatulai','Daramy','No','uploads/student_images/no_image.png','+610402487557','ramatulaidaramy@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11947,11917,'11947','S000298',NULL,'Refah','Amin','No','uploads/student_images/no_image.png','+61416634308','refahamin99@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11957,11927,'11957','S000338',NULL,'Sagal','Ahmed','No','uploads/student_images/no_image.png','+61403452433','sagalahmed299@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11967,11937,'11967','S000302',NULL,'Umm','','No','uploads/student_images/no_image.png','+61404953950','ummibrahim@wasimah.com.au',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11977,11947,'11977','S000303',NULL,'Yonca','Temel','No','uploads/student_images/no_image.png','+61406 177 027','al.ghuraba@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11987,11957,'11987','S000275',NULL,'Aber','Kataieh','No','uploads/student_images/no_image.png','+61405800724','aber_k@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(11997,11967,'11997','S000372',NULL,'Amina','Ibrahim','No','uploads/student_images/no_image.png','+61450959659','ameenaibrahim95@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12007,11977,'12007','S000373',NULL,'Aqsa','Khalid','No','uploads/student_images/no_image.png','+61','shmalik25@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12017,11987,'12017','S000374',NULL,'Aseyah','Shipman','No','uploads/student_images/no_image.png','+61434681799','new_aseyah@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12027,11997,'12027','S000375',NULL,'Aysha','Sian','No','uploads/student_images/no_image.png','+61414760708','Aysharickard.11@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12037,12007,'12037','S000377',NULL,'Fawzie','Abdallah','No','uploads/student_images/no_image.png','+61478163551','fawzie.abdallah@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12047,12017,'12047','S000379',NULL,'Hannan','Mzakzak','No','uploads/student_images/no_image.png','+61481261247','hanan.mzakzak@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12057,12027,'12057','S000380',NULL,'Heba','Sukkarieh','No','uploads/student_images/no_image.png','+61414329200','heba.sukkarieh@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12067,12037,'12067','S000393',NULL,'Iram','Sirguroh','No','uploads/student_images/no_image.png','+61405216409','iram.sirguroh@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12077,12047,'12077','S000416',NULL,'Jasmin','Akhter','No','uploads/student_images/no_image.png','+61411425898','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12087,12057,'12087','S000417',NULL,'Joumana','Fawal','No','uploads/student_images/no_image.png','+61431215064','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12097,12067,'12097','S000419',NULL,'Liliya','Aziz','No','uploads/student_images/no_image.png','+61432849604','Llaziz7@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12107,12077,'12107','S000382',NULL,'Mia','Hamzi','No','uploads/student_images/no_image.png','+61405551666','miahamzi@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12117,12087,'12117','S000418',NULL,'Mosca','Khan','No','uploads/student_images/no_image.png','+61488031098','mosca_skhan@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12127,12097,'12127','S000383',NULL,'Rebecka','Chlela','No','uploads/student_images/no_image.png','+61449960017','chlelaa92@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12137,12107,'12137','S000384',NULL,'Samahe','Mohamed','No','uploads/student_images/no_image.png','+61466841633','samahe.94@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12147,12117,'12147','S000385',NULL,'Sarah','Awad','No','uploads/student_images/no_image.png','+61451002055','Sarah.awad1@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12157,12127,'12157','S000391',NULL,'Sarah','Charafeddine','No','uploads/student_images/no_image.png','+61450902180','sarahcharafedd@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12167,12137,'12167','S000392',NULL,'Sarah','Woodbury','No','uploads/student_images/no_image.png','+61470625368','locochocko89@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12177,12147,'12177','S000386',NULL,'Suzan','Hamdache','No','uploads/student_images/no_image.png','+61410128967','suzanhamdache@icloud.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12187,12157,'12187','S000388',NULL,'Tracy','Menzies','No','uploads/student_images/no_image.png','+61401970415','tracey2033@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12197,12167,'12197','S000390',NULL,'Zoe','Allouche','No','uploads/student_images/no_image.png','+61478062477','zoeallouche1996@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12207,12177,'12207','S000067',NULL,'Fatma','Arja','No','uploads/student_images/no_image.png','+61404082809','ffa45@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12217,12187,'12217','S000411',NULL,'Kareema','Alamudi','No','uploads/student_images/no_image.png','+61402195853','karima_alamudi@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12227,12197,'12227','S000403',NULL,'Kristy','Cilidonio','No','uploads/student_images/no_image.png','+610424842812','krriisstyy@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12237,12207,'12237','S000405',NULL,'Marufa','Yeasmin','No','uploads/student_images/no_image.png','+61425155107','marufa_021@yahoo.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12247,12217,'12247','S000406',NULL,'Maysa','Kanj','No','uploads/student_images/no_image.png','+61451146875','Muslimahkay@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12257,12227,'12257','S000404',NULL,'Nasrine','Awad','No','uploads/student_images/no_image.png','+61402703878','nasrine.a@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12267,12237,'12267','S000407',NULL,'Ronia','Hadier','No','uploads/student_images/no_image.png','+61424954991','ranianet90@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12277,12247,'12277','S000414',NULL,'Wafa','Kodat','No','uploads/student_images/no_image.png','+61414412337','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12287,12257,'12287','S000408',NULL,'Zaynab','Emam','No','uploads/student_images/no_image.png','+61450650950','zaynab.emam@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12297,12267,'12297','Student ID',NULL,'Billal','Minaoui','No','uploads/student_images/no_image.png','+61435837161','bella.h.92@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12307,12277,'12307','S000142',NULL,'Feroz','Sattar','No','uploads/student_images/no_image.png','+61422401781','feroz.sattar1@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12317,12287,'12317','S000146',NULL,'Hadi','Naghi','No','uploads/student_images/no_image.png','+61450616065','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12327,12297,'12327','S000144',NULL,'Javed','Kalam','No','uploads/student_images/no_image.png','+61414138910','javed.binkalam@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12337,12307,'12337','S000139',NULL,'Kashif','Ghous','No','uploads/student_images/no_image.png','+61412875167','mkgg4n@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12347,12317,'12347','S000137',NULL,'Khaled','Abbas','No','uploads/student_images/no_image.png','+61466058022','abbasonline@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12357,12327,'12357','S000141',NULL,'Khaled','Minaoui','No','uploads/student_images/no_image.png','+61452483321','minaoui73@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12367,12337,'12367','S000138',NULL,'Mohamad','Kayal','No','uploads/student_images/no_image.png','+61414266339 ','Mohamad85k@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12377,12347,'12377','S000147',NULL,'Mohamed','','No','uploads/student_images/no_image.png','+61490682679 ','jafanz@outlook.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12387,12357,'12387','S000148',NULL,'Omar','AbuMahmoud','No','uploads/student_images/no_image.png','+61405464646','omarabumahmoud@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12397,12367,'12397','S000140',NULL,'Raihan','Iqbal','No','uploads/student_images/no_image.png','+61421736086','raihan.iqbal@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12407,12377,'12407','S000150',NULL,'Rashid','Mohamed','No','uploads/student_images/no_image.png','+61412787706','krashid@live.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12417,12387,'12417','S000143',NULL,'Wassim','Saddik','No','uploads/student_images/no_image.png','+61406008411','Wassim_jumex@outlook.com',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12427,12397,'12427','S000149',NULL,'Zahi','Naghi','No','uploads/student_images/no_image.png','+61450670864','',NULL,NULL,NULL,NULL,'','2001-0-01','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12437,12407,'12437','S000145',NULL,'Amina','Touma','No','uploads/student_images/no_image.png','+61490405697','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12447,12417,'12447','S000124',NULL,'Ayesha','Shipman','No','uploads/student_images/no_image.png','+61434681799','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12457,12427,'12457','S000136',NULL,'Aziza','Elsaddik','No','uploads/student_images/no_image.png','+61450848988','azizaa.e@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12467,12437,'12467','S000055',NULL,'Fatma','Arja','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12477,12447,'12477','S000132',NULL,'Hakimah','Muslim','No','uploads/student_images/no_image.png','+61410 044 938','hakimah007@yahoo.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12487,12457,'12487','S000101',NULL,'Hasna','Woodbury','No','uploads/student_images/no_image.png','+61470625368','hasna.ilim@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12497,12467,'12497','S000088',NULL,'Joumana','Rifai','No','uploads/student_images/no_image.png','+61458080645','js4whair@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12507,12477,'12507','S000054',NULL,'Manel','Aassar','No','uploads/student_images/no_image.png','+61490050977','elkadri1@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12517,12487,'12517','S000095',NULL,'Marita','Davies','No','uploads/student_images/no_image.png','+610423226186','marita_nsw_au@yahoo.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12527,12497,'12527','S000069',NULL,'Monira','jebin','No','uploads/student_images/no_image.png','+61425303318','mjebin@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12537,12507,'12537','S000084',NULL,'Nemat','Jneidi','No','uploads/student_images/no_image.png','+610424444384','nematj92@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12547,12517,'12547','S000125',NULL,'Nurshafinah','Isa','No','uploads/student_images/no_image.png','+61411570627','rocketrascal@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12557,12527,'12557','S000130',NULL,'Refah','','No','uploads/student_images/no_image.png','+610435011565','refahamin99@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12567,12537,'12567','S000126',NULL,'Ronia','Kadri','No','uploads/student_images/no_image.png','+61410969912','elkadri1@hotmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12577,12547,'12577','S000094',NULL,'Sagal','Ahmed','No','uploads/student_images/no_image.png','+610403452433','sagalahmed299@gmail.com',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12587,12557,'12587','S000127',NULL,'Souheir','Ayad','No','uploads/student_images/no_image.png','+413773228','',NULL,NULL,NULL,NULL,'','2001-0-01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12597,12567,'12597','S000133','2018-01-20','Wafa','Kodat','No','uploads/student_images/no_image.png','+61414412337','wafa1@live.com.au',NULL,NULL,NULL,NULL,'','2018-01-02','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'father','A',NULL,NULL,NULL,NULL,NULL,'A','A','A','',NULL,'','no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12707,12587,'12707',NULL,'2018-01-22','Ahmed','101','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2018-01-01','Male',NULL,NULL,'17',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-02-02 21:40:22','0000-00-00 00:00:00'),(12717,12587,'12717','B101','2018-01-22','Mohammed','B','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2018-02-05','Female',NULL,NULL,'17',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12727,12597,'12727','B201','2018-01-31','Fatah','G','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2018-01-01','Male',NULL,NULL,'27',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12737,12607,'12737','H101','2018-01-31','Abdul','Hameed','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2010-02-02','Male',NULL,NULL,'17',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12747,12607,'12747','R101','2018-01-31','Fatimah','A','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2011-03-01','Female',NULL,NULL,'27',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12757,12607,'12757','ADULT101','2018-01-31','Mohammed','A','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','1974-02-06','Male',NULL,NULL,'47',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-02-02 21:39:14','0000-00-00 00:00:00'),(12767,0,'12767','12767','2018-02-01','Zubair','A','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2018-01-29','Male',NULL,NULL,'7',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-01-31 20:44:45','0000-00-00 00:00:00'),(12777,12607,'12777','12777','2018-02-01','Issam','S','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2018-01-29','Male',NULL,NULL,'47',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-01-31 20:46:24','0000-00-00 00:00:00'),(12787,12607,'12787','12787','2018-02-01','Issam','S','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2018-01-29','Male',NULL,NULL,'47',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-01-31 20:46:51','0000-00-00 00:00:00'),(12797,12587,'12797','12797','2018-02-03','Fatimah','201','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2018-01-30','Female',NULL,NULL,'27',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-02-02 21:55:08','0000-00-00 00:00:00'),(12807,12587,'12807','12807','2018-02-03','Zainad','F','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2018-01-28','Female',NULL,NULL,'47',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-02-02 21:58:35','0000-00-00 00:00:00'),(12817,0,'12817','12817','2018-02-03','Abdul','A','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2018-01-29','Male',NULL,NULL,'7',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-02-02 23:36:45','0000-00-00 00:00:00'),(12827,12587,'12827','12827','2018-02-03','Abdul','A','No','uploads/student_images/no_image.png','','',NULL,NULL,NULL,NULL,'N/A','2018-01-28','Male',NULL,NULL,'17',NULL,NULL,NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,'2018-02-02 23:39:28','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (7,'Fiqh 101','F101','Theory','no','2018-01-31 00:46:19','0000-00-00 00:00:00'),(17,'Quran Class','QURAN','Practical','no','2018-02-01 02:45:57','0000-00-00 00:00:00'),(27,'QRME Level1','QRME Level1','Theory','no','2018-02-01 02:46:52','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_subjects`
--

DROP TABLE IF EXISTS `teacher_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_subjects`
--

LOCK TABLES `teacher_subjects` WRITE;
/*!40000 ALTER TABLE `teacher_subjects` DISABLE KEYS */;
INSERT INTO `teacher_subjects` VALUES (7,11,7087,7,0,NULL,'no','2018-01-31 00:46:38','0000-00-00 00:00:00'),(17,11,8397,27,7,NULL,'no','2018-02-01 02:49:09','0000-00-00 00:00:00'),(27,11,5657,17,17,NULL,'no','2018-02-01 02:49:27','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `teacher_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (7,'Abu Obaydah','abu@miacolleges.com.au',NULL,'','2018-02-21',NULL,'Male','123456568','uploads/student_images/no_image.png','no','2018-02-01 02:48:17','0000-00-00 00:00:00'),(17,'Ali','ali@miacolleges.com.au',NULL,'','2018-02-23',NULL,'Male','22222','uploads/student_images/no_image.png','no','2018-02-01 02:48:37','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetables`
--

DROP TABLE IF EXISTS `timetables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetables`
--

LOCK TABLES `timetables` WRITE;
/*!40000 ALTER TABLE `timetables` DISABLE KEYS */;
INSERT INTO `timetables` VALUES (7,27,'Monday','07:00 PM','07:30 PM','R101','no','2018-02-01 02:52:40','0000-00-00 00:00:00'),(17,27,'Tuesday','07:00 PM','07:30 PM','R101','no','2018-02-01 02:52:40','0000-00-00 00:00:00'),(27,27,'Wednesday','07:00 PM','07:30 PM','R101','no','2018-02-01 02:52:40','0000-00-00 00:00:00'),(37,27,'Thursday','','','','no','2018-02-01 02:52:40','0000-00-00 00:00:00'),(47,27,'Friday','','','','no','2018-02-01 02:52:40','0000-00-00 00:00:00'),(57,27,'Saturday','','','','no','2018-02-01 02:52:40','0000-00-00 00:00:00'),(67,27,'Sunday','','','','no','2018-02-01 02:52:40','0000-00-00 00:00:00'),(77,17,'Monday','','','','no','2018-02-01 02:55:33','0000-00-00 00:00:00'),(87,17,'Tuesday','','','','no','2018-02-01 02:55:33','0000-00-00 00:00:00'),(97,17,'Wednesday','','','','no','2018-02-01 02:55:33','0000-00-00 00:00:00'),(107,17,'Thursday','','','','no','2018-02-01 02:55:33','0000-00-00 00:00:00'),(117,17,'Friday','','','','no','2018-02-01 02:55:33','0000-00-00 00:00:00'),(127,17,'Saturday','11:00 AM','12:00 PM','R102','no','2018-02-01 02:55:33','0000-00-00 00:00:00'),(137,17,'Sunday','11:00 AM','12:00 PM','R102','no','2018-02-01 02:55:33','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `timetables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_route`
--

DROP TABLE IF EXISTS `transport_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_route`
--

LOCK TABLES `transport_route` WRITE;
/*!40000 ALTER TABLE `transport_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES (7,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-19 22:54:18'),(17,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-20 02:21:22'),(27,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-20 08:06:16'),(37,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-20 22:57:36'),(47,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 01:54:42'),(57,'schooladmin@miacolleges.com','admin','121.217.223.42','Chrome 63.0.3239.132, Windows 10','2018-01-21 02:18:57'),(67,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 03:18:27'),(77,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 04:21:19'),(87,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 04:21:41'),(97,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 06:05:17'),(107,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 06:27:00'),(117,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 06:29:35'),(127,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 06:32:19'),(137,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 06:37:02'),(147,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 06:38:07'),(157,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 06:39:09'),(167,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 06:44:59'),(177,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 10:47:11'),(187,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 10:48:13'),(197,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 10:49:22'),(207,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 10:49:56'),(217,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 10:50:12'),(227,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 10:52:05'),(237,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 10:54:17'),(247,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 10:56:04'),(257,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 10:57:26'),(267,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-21 10:59:01'),(277,'schooladmin@miacolleges.com','admin','127.0.0.1','Firefox 57.0, Windows 7','2018-01-21 11:01:06'),(287,'schooladmin@miacolleges.com','admin','127.0.0.1','Firefox 57.0, Windows 7','2018-01-21 11:03:15'),(297,'schooladmin@miacolleges.com','admin','127.0.0.1','Firefox 57.0, Windows 7','2018-01-21 11:06:53'),(307,'schooladmin@miacolleges.com','admin','121.217.223.42','Chrome 63.0.3239.132, Windows 10','2018-01-21 15:34:18'),(317,'schooladmin@miacolleges.com','admin','1.129.110.43','Chrome 63.0.3239.132, Windows 10','2018-01-30 05:05:58'),(327,'schooladmin@miacolleges.com','admin','202.130.44.124','Firefox 57.0, Windows 7','2018-01-30 05:20:23'),(337,'schooladmin@miacolleges.com','admin','110.147.151.180','Chrome 63.0.3239.132, Windows 10','2018-01-30 09:48:45'),(347,'schooladmin@miacolleges.com','admin','110.147.151.180','Chrome 63.0.3239.132, Windows 10','2018-01-30 19:23:22'),(357,'schooladmin@miacolleges.com','admin','120.17.30.81','Chrome 63.0.3239.132, Windows 10','2018-01-31 00:21:52'),(367,'schooladmin@miacolleges.com','admin','110.147.151.180','Chrome 63.0.3239.132, Windows 10','2018-01-31 08:04:33'),(377,'schooladmin@miacolleges.com','admin','110.147.151.180','Chrome 63.0.3239.132, Windows 10','2018-01-31 18:47:13'),(387,'schooladmin@miacolleges.com','admin','120.18.207.64','Chrome 63.0.3239.132, Windows 10','2018-02-01 01:37:45'),(397,'schooladmin@miacolleges.com','admin','120.18.207.64','Chrome 63.0.3239.132, Windows 10','2018-02-01 02:37:55'),(407,'schooladmin@miacolleges.com','admin','1.129.108.151','Chrome 63.0.3239.132, Windows 10','2018-02-01 22:59:29'),(417,'schooladmin@miacolleges.com','admin','121.216.99.233','Chrome 63.0.3239.132, Windows 10','2018-02-02 21:09:02');
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `childs` text COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,12587,'parent12587','63z5rj','','parent','','yes','2018-01-20 02:23:21','0000-00-00 00:00:00'),(17,12617,'std12617','856npq','','student','','yes','2018-01-20 05:06:14','0000-00-00 00:00:00'),(27,12617,'parent12617','789rxk','12617','parent','','yes','2018-01-20 05:06:14','0000-00-00 00:00:00'),(37,0,'std0','9wytvm','','student','','yes','2018-01-21 03:58:08','0000-00-00 00:00:00'),(47,0,'parent0','tu0jpb','0','parent','','yes','2018-01-21 03:58:08','0000-00-00 00:00:00'),(57,0,'std0','nel6az','','student','','yes','2018-01-21 03:59:59','0000-00-00 00:00:00'),(67,0,'parent0','rje5cs','0','parent','','yes','2018-01-21 03:59:59','0000-00-00 00:00:00'),(77,0,'std0','wxegcy','','student','','yes','2018-01-21 04:02:54','0000-00-00 00:00:00'),(87,0,'parent0','vw38um','0','parent','','yes','2018-01-21 04:02:54','0000-00-00 00:00:00'),(97,0,'std0','81ca8g','','student','','yes','2018-01-21 04:05:27','0000-00-00 00:00:00'),(107,0,'parent0','dtv2ap','0','parent','','yes','2018-01-21 04:05:27','0000-00-00 00:00:00'),(117,0,'std0','gms812','','student','','yes','2018-01-21 04:22:06','0000-00-00 00:00:00'),(127,0,'parent0','852s89','0','parent','','yes','2018-01-21 04:22:06','0000-00-00 00:00:00'),(137,0,'std0','yzu63p','','student','','yes','2018-01-21 04:22:44','0000-00-00 00:00:00'),(147,0,'parent0','os49cy','0','parent','','yes','2018-01-21 04:22:44','0000-00-00 00:00:00'),(157,0,'std0','mxf1hn','','student','','yes','2018-01-21 06:30:42','0000-00-00 00:00:00'),(167,0,'parent0','gcxkq0','0','parent','','yes','2018-01-21 06:30:42','0000-00-00 00:00:00'),(177,0,'std0','78qm7t','','student','','yes','2018-01-21 11:08:36','0000-00-00 00:00:00'),(187,0,'parent0','hjk9my','0','parent','','yes','2018-01-21 11:08:36','0000-00-00 00:00:00'),(197,12627,'std12627','hs8l23','','student','','yes','2018-01-21 11:14:01','0000-00-00 00:00:00'),(207,12627,'parent12627','bmje9o','12627','parent','','yes','2018-01-21 11:14:01','0000-00-00 00:00:00'),(217,12637,'std12637','ku6de1','','student','','yes','2018-01-21 11:15:16','0000-00-00 00:00:00'),(227,12637,'parent12637','dfgr7t','12637','parent','','yes','2018-01-21 11:15:16','0000-00-00 00:00:00'),(237,0,'std0','hx81w3','','student','','yes','2018-01-21 11:18:50','0000-00-00 00:00:00'),(247,0,'parent0','brxe56','0','parent','','yes','2018-01-21 11:18:50','0000-00-00 00:00:00'),(257,0,'std0','e96ne5','','student','','yes','2018-01-21 11:20:02','0000-00-00 00:00:00'),(267,0,'parent0','at90xk','0','parent','','yes','2018-01-21 11:20:02','0000-00-00 00:00:00'),(277,12647,'std12647','cn85ha','','student','','yes','2018-01-21 11:23:03','0000-00-00 00:00:00'),(287,12647,'parent12647','lmyfuh','12647,12667','parent','','yes','2018-01-21 11:47:11','0000-00-00 00:00:00'),(297,12657,'std12657','fvrnfg','','student','','yes','2018-01-21 11:24:03','0000-00-00 00:00:00'),(307,12657,'parent12657','j8bcyt','12657','parent','','yes','2018-01-21 11:24:03','0000-00-00 00:00:00'),(317,12667,'std12667','0nzuoj','','student','','yes','2018-01-21 11:47:11','0000-00-00 00:00:00'),(327,12677,'std12677','loa4qh','','student','','yes','2018-01-21 13:06:07','0000-00-00 00:00:00'),(337,12677,'parent12677','zu0jiu','12677','parent','','yes','2018-01-21 13:06:07','0000-00-00 00:00:00'),(347,12687,'std12687','ntum3t','','student','','yes','2018-01-21 13:20:09','0000-00-00 00:00:00'),(357,12687,'parent12687','hntl6a','12687','parent','','yes','2018-01-21 13:20:09','0000-00-00 00:00:00'),(367,12697,'std12697','qhjt92','','student','','yes','2018-01-21 13:30:27','0000-00-00 00:00:00'),(377,12697,'parent12697','tqc3e9','12697','parent','','yes','2018-01-21 13:30:27','0000-00-00 00:00:00'),(387,12707,'std12707','spgmdk','','student','','yes','2018-01-21 13:44:52','0000-00-00 00:00:00'),(397,12707,'parent12707','h3pqmy','12707','parent','','yes','2018-01-21 13:44:52','0000-00-00 00:00:00'),(407,12717,'std12717','9w3elm','','student','','yes','2018-01-21 15:12:52','0000-00-00 00:00:00'),(417,12717,'parent12717','zvwat5','12717','parent','','yes','2018-01-21 15:12:52','0000-00-00 00:00:00'),(427,12597,'parent12597','7pq0jk','','parent','','yes','2018-01-30 19:31:24','0000-00-00 00:00:00'),(437,12727,'std12727','mxeq23','','student','','yes','2018-01-30 19:32:17','0000-00-00 00:00:00'),(447,12727,'parent12727','16ntu0','12727','parent','','yes','2018-01-30 19:32:17','0000-00-00 00:00:00'),(457,12607,'parent12607','urd4uw','','parent','','yes','2018-01-31 00:26:24','0000-00-00 00:00:00'),(467,12737,'std12737','pl0atv','','student','','yes','2018-01-31 00:29:20','0000-00-00 00:00:00'),(477,12737,'parent12737','sz1rap','12737','parent','','yes','2018-01-31 00:29:20','0000-00-00 00:00:00'),(487,12747,'std12747','ojfgon','','student','','yes','2018-01-31 00:31:00','0000-00-00 00:00:00'),(497,12747,'parent12747','qc7k9w','12747','parent','','yes','2018-01-31 00:31:00','0000-00-00 00:00:00'),(507,12757,'std12757','z12xp1','','student','','yes','2018-01-31 00:32:33','0000-00-00 00:00:00'),(517,12757,'parent12757','nivcyf','12757','parent','','yes','2018-01-31 00:32:33','0000-00-00 00:00:00'),(527,12767,'std12767','gostbm','','student','','yes','2018-01-31 20:44:45','0000-00-00 00:00:00'),(537,12767,'parent12767','zl678b','12767','parent','','yes','2018-01-31 20:44:45','0000-00-00 00:00:00'),(547,12777,'std12777','oj89w3','','student','','yes','2018-01-31 20:46:24','0000-00-00 00:00:00'),(557,12777,'parent12777','u6ypbc','12777','parent','','yes','2018-01-31 20:46:24','0000-00-00 00:00:00'),(567,12787,'std12787','kbhyeq','','student','','yes','2018-01-31 20:46:51','0000-00-00 00:00:00'),(577,12787,'parent12787','di16sp','12787','parent','','yes','2018-01-31 20:46:52','0000-00-00 00:00:00'),(587,7,'teacher7','nk92dp','','teacher','','yes','2018-02-01 02:48:17','0000-00-00 00:00:00'),(597,17,'teacher17','ra49oy','','teacher','','yes','2018-02-01 02:48:37','0000-00-00 00:00:00'),(607,27,'teacher27','967zvr','','teacher','','yes','2018-02-01 02:48:39','0000-00-00 00:00:00'),(617,12797,'std12797','cael2s','','student','','yes','2018-02-02 21:55:09','0000-00-00 00:00:00'),(627,12797,'parent12797','vrnfv6','12797','parent','','yes','2018-02-02 21:55:09','0000-00-00 00:00:00'),(637,12807,'std12807','y85w34','','student','','yes','2018-02-02 21:58:35','0000-00-00 00:00:00'),(647,12807,'parent12807','o3zqo7','12807','parent','','yes','2018-02-02 21:58:35','0000-00-00 00:00:00'),(657,12817,'std12817','pbr3pb','','student','','yes','2018-02-02 23:36:45','0000-00-00 00:00:00'),(667,12817,'parent12817','s850y4','12817','parent','','yes','2018-02-02 23:36:45','0000-00-00 00:00:00'),(677,12827,'std12827','rd8lwj','','student','','yes','2018-02-02 23:39:28','0000-00-00 00:00:00'),(687,12827,'parent12827','507ig0','12827','parent','','yes','2018-02-02 23:39:28','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_routes`
--

DROP TABLE IF EXISTS `vehicle_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_routes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_routes`
--

LOCK TABLES `vehicle_routes` WRITE;
/*!40000 ALTER TABLE `vehicle_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-03 15:34:39
