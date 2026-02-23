-- MySQL dump 10.13  Distrib 5.7.10, for Win64 (x86_64)
--
-- Host: localhost    Database: gti_po_db
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `sys_licences`
--

DROP TABLE IF EXISTS `sys_licences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_licences` (
  `idLic` int(11) NOT NULL AUTO_INCREMENT,
  `licenceCode` text,
  `ActivCode` text,
  `dtActivation` datetime DEFAULT NULL,
  `licenceType` text,
  `val` text,
  PRIMARY KEY (`idLic`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_licences`
--

LOCK TABLES `sys_licences` WRITE;
/*!40000 ALTER TABLE `sys_licences` DISABLE KEYS */;
INSERT INTO `sys_licences` VALUES (1,'43cd1da67bc8f06d16d4736edf5a0247','Yet8gFZ9Ybn4JHCNgQJYRFwDFaXQuvDzBkwrbGAG4cZVffJ3fp4Leg==','2021-10-06 06:55:06','HRev2Zo/r94udwvA7FS6mWHLUOV9wHB8',NULL),(2,'33b7bbafab40701bda719b59ce274db9','hfFv/pEPy5Ovf6wcG004k1inDKB3ACz+q5LC8eWnr9VVffJ3fp4Leg==','2025-10-23 10:52:18','HRev2Zo/r9634CfsGDDIk82ohxy9A3O0',NULL);
/*!40000 ALTER TABLE `sys_licences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:19
