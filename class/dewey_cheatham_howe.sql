-- MySQL dump 10.14  Distrib 5.5.65-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: test5
-- ------------------------------------------------------
-- Server version	5.5.65-MariaDB

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
-- Table structure for table `associates`
--

DROP TABLE IF EXISTS `associates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `associates` (
  `assoc_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hourly_rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`assoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associates`
--

LOCK TABLES `associates` WRITE;
/*!40000 ALTER TABLE `associates` DISABLE KEYS */;
INSERT INTO `associates` VALUES (1,'John Dewey',250),(2,'Eli Cheatham',280),(3,'Reginald Howe',390);
/*!40000 ALTER TABLE `associates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billable_hours`
--

DROP TABLE IF EXISTS `billable_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billable_hours` (
  `work_unit` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `assoc_id` int(11) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  PRIMARY KEY (`work_unit`),
  KEY `case_id` (`case_id`),
  KEY `assoc_id` (`assoc_id`),
  CONSTRAINT `billable_hours_ibfk_2` FOREIGN KEY (`assoc_id`) REFERENCES `associates` (`assoc_id`),
  CONSTRAINT `billable_hours_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `cases` (`case_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billable_hours`
--

LOCK TABLES `billable_hours` WRITE;
/*!40000 ALTER TABLE `billable_hours` DISABLE KEYS */;
INSERT INTO `billable_hours` VALUES (1,60606,3,4);
/*!40000 ALTER TABLE `billable_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `case_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `client` int(11) DEFAULT NULL,
  `associate` int(11) DEFAULT NULL,
  PRIMARY KEY (`case_id`),
  KEY `client` (`client`),
  KEY `associate` (`associate`),
  CONSTRAINT `cases_ibfk_1` FOREIGN KEY (`client`) REFERENCES `clients` (`client_id`),
  CONSTRAINT `cases_ibfk_2` FOREIGN KEY (`associate`) REFERENCES `associates` (`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES (10100,'Prince Corwin v. rebma.gov',1,1),(12013,'United Federation v. Rollins Group, LLC',2,3),(60606,'Crowley v. Anathema Device',4,3),(91108,'Rincewind Wizard v. Unseen University, Inc.',3,2);
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `payment_account` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Roger Zelazny','10151-11-20188'),(2,'Dan Simmons','20810-21-19384'),(3,'Terry Pratchett','11111-22-91842'),(4,'Neil Gaiman','66600-66-00666');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-09  9:15:11
