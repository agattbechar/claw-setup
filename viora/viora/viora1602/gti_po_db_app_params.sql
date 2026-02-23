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
-- Table structure for table `app_params`
--

DROP TABLE IF EXISTS `app_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_params` (
  `idPr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codePr` varchar(30) NOT NULL,
  `libPr_fr` text,
  `libPr_ar` text,
  `val1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPr`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_params`
--

LOCK TABLES `app_params` WRITE;
/*!40000 ALTER TABLE `app_params` DISABLE KEYS */;
INSERT INTO `app_params` VALUES (1,'nom_client','VIORA','Company',NULL),(2,'nom_client_sigle','VIORA','Company',NULL),(3,'fct_entete','VIORA','Company',NULL),(4,'fct_footer_img_A4','imgFtrPageA4.png',NULL,NULL),(5,'fct_pos_entete','VIORA',NULL,NULL),(6,'fct_entete_img_A4','imgFctEnteteA4.png',NULL,NULL),(7,'fct_entete_img_A5','imgFctEnteteA5.png',NULL,NULL),(8,'fct_entete_img_A6','imgFctEnteteA5.png',NULL,NULL),(9,'fct_footer_img_A5','imgFtrPageA5.png',NULL,NULL),(10,'fct_footer_img_A6','imgFtrPageA5.png',NULL,NULL),(11,'fct_entete_vd_gm','fct_entete_vd_gm.png',NULL,NULL),(12,'fct_footer_vd_gm','fct_footer_vd_gm.png',NULL,NULL),(13,'db_current_version','184',NULL,NULL),(14,'app_global_type','stnd',NULL,NULL),(15,'tel','',NULL,NULL),(16,'fax',NULL,NULL,NULL),(17,'adresse','',NULL,NULL),(18,'email','',NULL,NULL),(19,'website','',NULL,NULL),(20,'description','',NULL,NULL),(21,'numeroAV','',NULL,NULL),(22,'val_stock','DPA',NULL,NULL),(23,'APP_NATURE',NULL,NULL,'2'),(24,'fct_inc_nubmer_fc',NULL,NULL,'1'),(25,'fct_inc_nubmer_ft',NULL,NULL,'1'),(26,'fct_inc_nubmer_dv',NULL,NULL,'1'),(27,'fct_inc_nubme_temp_fc',NULL,NULL,'1'),(28,'fct_inc_nubme_temp_ft',NULL,NULL,'1'),(29,'fct_inc_nubme_temp_dv',NULL,NULL,'1'),(30,'CODE_LONG','CODE_LONG',NULL,'13,14'),(31,'signature','',NULL,NULL),(32,'signature_des','',NULL,NULL),(33,'CMD_NB_PUMP',NULL,NULL,'10'),(34,'BALANCE_FORMAT_ID',NULL,NULL,'9'),(35,'DB_LAST_BACKUP_DT',NULL,NULL,'16/02/2026 07:11');
/*!40000 ALTER TABLE `app_params` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:10
