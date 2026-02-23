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
-- Table structure for table `ref_labo`
--

DROP TABLE IF EXISTS `ref_labo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_labo` (
  `idLabo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libLabo` varchar(145) NOT NULL,
  `fk_idPays` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`idLabo`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_labo`
--

LOCK TABLES `ref_labo` WRITE;
/*!40000 ALTER TABLE `ref_labo` DISABLE KEYS */;
INSERT INTO `ref_labo` VALUES (1,'Autre',1),(2,'ABBOTT',1),(3,'ALCON',14),(4,'Aldo union sa',1),(5,'Almirall',13),(6,'ANHUI WELCOME',10),(7,'ARENCO',1),(8,'ASIA',24),(9,'Aspen',14),(10,'Asthellas',14),(11,'Astra Zeneca',4),(12,'B & O Pharma',14),(13,'BAILLY CREAT',1),(14,'BALSAM',24),(15,'BAUSCH',1),(16,'BAYER SCHERING',3),(17,'Beaufour IPSEN',14),(18,'BERG',25),(19,'BESINS',14),(20,'BIAL',22),(21,'BILIM',26),(22,'Biocodex',14),(23,'BIODIM',14),(24,'BIOPHARM',2),(25,'BMS',14),(26,'BOTTU  S.A',19),(27,'Bouchara  Recordati',14),(28,'BOUCHARA Recordati',14),(29,'Caplin  point LTD',16),(30,'Cephalon',14),(31,'chauvin',14),(32,'CHIESI  SA',14),(33,'CINFA',22),(34,'Cipharm',11),(35,'Cipla',16),(36,'COOPER',14),(37,'CREAT',1),(38,'Dafra  Pharma',7),(39,'DAIICHI-SANKYO',14),(40,'DELTA PHARMA',12),(41,'DENK PHARMA',3),(42,'DEXO SAS',14),(43,'DICAMEX',14),(44,'ELCHEHBA',24),(45,'ELERTE',1),(46,'EUROGENERICS LABO',1),(47,'Europhta',14),(48,'Exphar',14),(49,'Faes',13),(50,'FERRER',13),(51,'FERRING',1),(52,'FRESENIUS Kabi',16),(53,'FRILAB',14),(54,'GALANTIC PHARMA',1),(55,'GalPharma',25),(56,'Genpharma',19),(57,'GEYMONAT',1),(58,'Glenmark',4),(59,'GMPMSCO',18),(60,'GSK',4),(61,'GUERBET',1),(62,'GUILIN',10),(63,'GUSUN PHARMA',10),(64,'HIGHNOON',21),(65,'HRAPharma',14),(66,'HUBEI HUAZHONG',10),(67,'IBN EL Baytar',25),(68,'IDA',15),(69,'INCEPTA',6),(70,'INNOTECH',14),(71,'IPRAD',14),(72,'Janssen Cilag',14),(73,'JOSWE MEDICAL',17),(74,'KIMI',24),(75,'LABORATE',16),(76,'Laprophan',19),(77,'LDI',1),(78,'LDP',13),(79,'LEO',14),(80,'LEURQUIN',14),(81,'LISA- PHARM',14),(82,'MAYOLY',14),(83,'MC NEIL',1),(84,'MEDA',1),(85,'MEDA PHARMA',1),(86,'Medical  supply',8),(87,'Medilab',16),(88,'MEDIS',25),(89,'Medreich',16),(90,'MEPHA',23),(91,'MERCK',1),(92,'MERCK MEDICATION FAMILIALE',14),(93,'MERCK SERONO',14),(94,'MERINAL',2),(95,'Microlab',16),(96,'Mihika',16),(97,'MSD',3),(98,'MUP',12),(99,'Nabi Quassim',6),(100,'NOVARTIS  Consumer Health SA',14),(101,'NOVARTIS  PHARMA',14),(102,'NYD PHARMA',23),(103,'ODYPHARM',14),(104,'OKASA',16),(105,'OM PHARMA',1),(106,'OMEGA PHARMA',14),(107,'ORGANON SA',14),(108,'PFIZER',14),(109,'Pharma 5',19),(110,'Philco Pharma',3),(111,'Pierre  Fabre',14),(113,'PIERRE FABRE MED',1),(114,'Polymedic',19),(115,'PPM',9),(116,'PRECISE BIOPHARMA',16),(117,'RANBAXY',16),(119,'Riva Pharma',12),(120,'ROSA PHYTO PHARMA',14),(121,'S.E.R.P',1),(122,'SAIDAL',2),(123,'SAIPH',1),(124,'SALEM',2),(125,'SALVAT',14),(126,'SANDOZ',1),(127,'Sandoz Biochemie',5),(128,'SANGULA',16),(129,'Sanofi  Aventis',14),(131,'Sanofi Pasteur',14),(132,'Schering  Plough',14),(133,'Schering SA',14),(134,'SERVIER',14),(135,'SOLVAY',14),(136,'SOTHEMA',19),(137,'SQUARE',6),(138,'SURG',21),(139,'SYPHCO',24),(140,'THEA',14),(141,'THERABEL',14),(142,'THERAMEX',14),(143,'TONIPHARM',14),(144,'UBITHERA',14),(145,'UCB  Pharma',7),(146,'VEGEBOM',14),(147,'VIATRIS',14),(148,'WYETH',14),(149,'Zambon',14);
/*!40000 ALTER TABLE `ref_labo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:15
