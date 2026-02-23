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
-- Table structure for table `ref_produit_famille`
--

DROP TABLE IF EXISTS `ref_produit_famille`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_produit_famille` (
  `idPrdF` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libPrdF` varchar(200) NOT NULL DEFAULT '0',
  `fkIdParent` int(10) unsigned NOT NULL,
  `ccChildIds` text,
  `saisieDt` datetime DEFAULT NULL,
  `saisieIdUsr` int(10) unsigned DEFAULT '0',
  `hideInTS` int(2) DEFAULT '1',
  PRIMARY KEY (`idPrdF`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_produit_famille`
--

LOCK TABLES `ref_produit_famille` WRITE;
/*!40000 ALTER TABLE `ref_produit_famille` DISABLE KEYS */;
INSERT INTO `ref_produit_famille` VALUES (1,'Skin Hair and Body',0,'1',NULL,0,1),(2,'Supplements',0,'2',NULL,0,1),(3,'Niche Perfumes',0,'3',NULL,0,1),(4,'Home Products',0,'4',NULL,0,1),(5,'Skincare',0,'5',NULL,0,1);
/*!40000 ALTER TABLE `ref_produit_famille` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:16
