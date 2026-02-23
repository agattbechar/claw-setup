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
-- Table structure for table `ref_tableau_de_bord_filter`
--

DROP TABLE IF EXISTS `ref_tableau_de_bord_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_tableau_de_bord_filter` (
  `idRefTdbFilter` int(11) NOT NULL AUTO_INCREMENT,
  `fkidRefTdb` int(11) DEFAULT NULL,
  `fieldName` varchar(145) DEFAULT NULL,
  `controlType` varchar(145) DEFAULT NULL,
  `targetTable` varchar(145) DEFAULT NULL,
  `displayName` varchar(145) DEFAULT NULL,
  `labelText` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`idRefTdbFilter`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_tableau_de_bord_filter`
--

LOCK TABLES `ref_tableau_de_bord_filter` WRITE;
/*!40000 ALTER TABLE `ref_tableau_de_bord_filter` DISABLE KEYS */;
INSERT INTO `ref_tableau_de_bord_filter` VALUES (1,1,'idFinTr','ComboBox','cs_fin_tiers','prenomNomTr','Client'),(2,1,'codePrd','TextBox',NULL,NULL,'Code Produit'),(3,2,'idPrd','ComboBox','ref_produit','codePrd','Produit'),(4,2,'prenomNomTr','TextBox',NULL,NULL,'Client'),(5,1,'dtFct::>=','DateTimePicker',NULL,NULL,'Du'),(6,1,'dtFct::<=','DateTimePicker',NULL,NULL,'Au'),(8,3,'idPrd','ComboBox','ref_produit','codePrd','Produit'),(9,4,'vcodePrd','TextBox','ref_produit','codePrd','Code Produit'),(10,4,'vlibPrd','TextBox','ref_produit','libPrd','Désignation'),(11,5,'idFinTr','ComboBox','cs_fin_tiers','prenomNomTr','Client'),(12,7,'idFinTr','ComboBox','cs_fin_tiers','prenomNomTr','Client'),(13,8,'idService','ComboBox','ref_service','libService','Service'),(14,8,'dtFct::>=','DateTimePicker',NULL,NULL,'Du'),(15,8,'dtFct::<=','DateTimePicker',NULL,NULL,'Au'),(16,8,'ParJour','CheckBox',NULL,NULL,'Par jour'),(17,2,'dtFct::>=','DateTimePicker',NULL,NULL,'Du'),(18,2,'dtFct::<=','DateTimePicker',NULL,NULL,'Au'),(19,2,'codePrd::>=','TextBox',NULL,NULL,'Art Du'),(20,2,'codePrd::<=','TextBox',NULL,NULL,'Art Au');
/*!40000 ALTER TABLE `ref_tableau_de_bord_filter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:17
