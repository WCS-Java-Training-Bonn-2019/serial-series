SET FOREIGN_KEY_CHECKS=0;
-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: serial-series
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Temporary table structure for view `Anzahl Staffeln pro Serie`
--

DROP TABLE IF EXISTS `Anzahl Staffeln pro Serie`;
/*!50001 DROP VIEW IF EXISTS `Anzahl Staffeln pro Serie`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Anzahl Staffeln pro Serie` AS SELECT 
 1 AS `id`,
 1 AS `Serie`,
 1 AS `Anzahl Staffeln`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `alle User alle Serien alle Staffeln alle Episoden`
--

DROP TABLE IF EXISTS `alle User alle Serien alle Staffeln alle Episoden`;
/*!50001 DROP VIEW IF EXISTS `alle User alle Serien alle Staffeln alle Episoden`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `alle User alle Serien alle Staffeln alle Episoden` AS SELECT 
 1 AS `User`,
 1 AS `Serie`,
 1 AS `Staffel`,
 1 AS `Episode`,
 1 AS `Titel`,
 1 AS `watched`,
 1 AS `wanna_c`,
 1 AS `ranking`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `episode`
--

DROP TABLE IF EXISTS `episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `episode_nr` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `season_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr5ifuxa82mfaxrhgahps7iu2m` (`season_id`),
  CONSTRAINT `FKr5ifuxa82mfaxrhgahps7iu2m` FOREIGN KEY (`season_id`) REFERENCES `season` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `frage` varchar(255) DEFAULT NULL,
  `antwort` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `season` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serie_id` bigint(20) DEFAULT NULL,
  `season_nr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi0t8tg8u8dgx8iykh31yxwdvr` (`serie_id`),
  CONSTRAINT `FKi0t8tg8u8dgx8iykh31yxwdvr` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `description` longtext,
  `hashtag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `serie_user`
--

DROP TABLE IF EXISTS `serie_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serie_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKckl8i6w1dnsirhai2444yunn9` (`serie_id`),
  KEY `FKjteqivgi49ovvdn65tgneqfte` (`user_id`),
  CONSTRAINT `FKckl8i6w1dnsirhai2444yunn9` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`),
  CONSTRAINT `FKjteqivgi49ovvdn65tgneqfte` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `serie_user_episode`
--

DROP TABLE IF EXISTS `serie_user_episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie_user_episode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ranking` int(11) NOT NULL,
  `wanna_c` bit(1) NOT NULL,
  `watched` bit(1) NOT NULL,
  `episopde_id` bigint(20) DEFAULT NULL,
  `serie_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhwftf53ktl4323wk6axu9y2x` (`episopde_id`),
  KEY `FKi72utuauol8k92bl5cesc00k8` (`serie_user_id`),
  CONSTRAINT `FKhwftf53ktl4323wk6axu9y2x` FOREIGN KEY (`episopde_id`) REFERENCES `episode` (`id`),
  CONSTRAINT `FKi72utuauol8k92bl5cesc00k8` FOREIGN KEY (`serie_user_id`) REFERENCES `serie_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `Anzahl Staffeln pro Serie`
--

/*!50001 DROP VIEW IF EXISTS `Anzahl Staffeln pro Serie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Anzahl Staffeln pro Serie` AS select `serie`.`id` AS `id`,`serie`.`name` AS `Serie`,count(`season`.`serie_id`) AS `Anzahl Staffeln` from (`serie` join `season`) where (`serie`.`id` = `season`.`serie_id`) group by `serie`.`name`,`serie`.`id` order by `serie`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alle User alle Serien alle Staffeln alle Episoden`
--

/*!50001 DROP VIEW IF EXISTS `alle User alle Serien alle Staffeln alle Episoden`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alle User alle Serien alle Staffeln alle Episoden` AS select `us`.`username` AS `User`,`ser`.`name` AS `Serie`,`sea`.`season_nr` AS `Staffel`,`ep`.`episode_nr` AS `Episode`,`ep`.`name` AS `Titel`,`sue`.`watched` AS `watched`,`sue`.`wanna_c` AS `wanna_c`,`sue`.`ranking` AS `ranking` from (((((`serie_user_episode` `sue` join `episode` `ep` on((`sue`.`episopde_id` = `ep`.`id`))) join `serie_user` `su` on((`sue`.`serie_user_id` = `su`.`id`))) join `user` `us` on((`su`.`user_id` = `us`.`id`))) join `season` `sea` on((`ep`.`season_id` = `sea`.`id`))) join `serie` `ser` on((`sea`.`serie_id` = `ser`.`id`))) order by `us`.`username`,`ser`.`name`,`sea`.`season_nr`,`ep`.`episode_nr` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-20  8:36:01
SET FOREIGN_KEY_CHECKS=1;
