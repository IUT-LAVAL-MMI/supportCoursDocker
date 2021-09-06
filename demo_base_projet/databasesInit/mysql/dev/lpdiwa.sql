-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lpdiwa
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB-1:10.4.14+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20201027053107','2020-10-29 07:26:24');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todolist_entry`
--

DROP TABLE IF EXISTS `todolist_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todolist_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todolist_entry`
--

LOCK TABLES `todolist_entry` WRITE;
/*!40000 ALTER TABLE `todolist_entry` DISABLE KEYS */;
INSERT INTO `todolist_entry` VALUES (1,'Pellentesque mattis consequat posuere. Phasellus sed eros ut ante semper.','2020-11-24'),(2,'Mauris aliquet quam at luctus vestibulum. Duis porta, enim a.','2021-01-23'),(3,'Vestibulum suscipit orci nisi, sed pharetra ipsum sollicitudin porttitor. Aliquam.','2021-01-14'),(4,'Praesent sit amet aliquet lacus. Aliquam mattis orci eros, dictum.','2021-01-17'),(5,'Curabitur fringilla leo non purus luctus, non posuere metus congue.','2020-10-06'),(6,'Pellentesque posuere venenatis libero, eget varius arcu maximus ac. Sed.','2021-01-10'),(7,'Suspendisse in risus arcu. Duis erat est, viverra ac leo.','2020-12-28'),(8,'Aenean a faucibus nibh, ac interdum sem. Morbi ut felis.','2020-10-31'),(9,'In rutrum fermentum metus nec interdum. Cras quis elit ut.','2020-11-08'),(10,'Mauris nec malesuada felis, nec auctor augue. Morbi et accumsan.','2020-12-26'),(11,'Pellentesque at luctus purus. Suspendisse ut metus laoreet ante suscipit.','2020-11-04'),(12,'Quisque iaculis pellentesque pellentesque. Quisque accumsan massa eros, ut tristique.','2020-12-30'),(13,'Vestibulum ac mauris ut sem lacinia vehicula ac vitae justo.','2020-10-05'),(14,'Maecenas imperdiet lorem ac ornare maximus. Aliquam pulvinar odio eget.','2020-12-17'),(15,'Ut massa metus, dignissim ut suscipit in, ultrices sed enim.','2020-12-14'),(16,'Vestibulum accumsan commodo lobortis. Pellentesque ac vulputate libero, non cursus.','2021-01-22'),(17,'In hac habitasse platea dictumst. Nulla varius mattis elementum. Nam.','2020-10-09'),(18,'Praesent dictum, lacus non luctus faucibus, ex sapien semper lectus.','2020-12-14'),(19,'Suspendisse nec suscipit neque, nec tincidunt turpis. Aliquam erat volutpat.','2020-12-06'),(20,'Aliquam tincidunt leo enim, eget facilisis metus congue sed. Vestibulum.','2021-01-29');
/*!40000 ALTER TABLE `todolist_entry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-29  7:29:38
