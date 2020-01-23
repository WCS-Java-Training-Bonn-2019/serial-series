CREATE DATABASE  IF NOT EXISTS  `serial-series`;
CREATE USER if NOT EXISTS `series_user`@`localhost` IDENTIFIED BY 'Games2Thrones=?';
GRANT ALL PRIVILEGES ON *.* TO `series_user`@`localhost`;

USE `serial-series`;


DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `picture_url` varchar(200) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` (`id`,`name`,`picture_url`,`description`) VALUES (1,'Game of Thrones','/pictures/GoT.jpg','Die Serie Game of Thrones basiert auf der Fantasy-Reihe „Das Lied von Eis und Feuer“ von George R.R. Martin. Die erste Staffel ist Bestandteil des ersten Buchs der Reihe und spielt im mittelalterlichen Westeros. König Robert Baratheon ist der Herrscher über die sieben Königreiche und Inhaber des eisernen Throns. Doch sein Reich befindet sich in Aufruhr. Sein Vertrauter Jon Arryn - die Hand des Königs - ist tot und es sieht nach Mord aus. Robert holt somit seinen besten Freund Sir Eddard Stark (Sean Bean) an den Königshof. „Ned“ Stark ist der Herrscher der Festung Winterfell und Beschützer des Nordens, der nur unwillig an den Intrigen reichen Hof in King\'s Landing gerufen wird. Dort beginnt das Spiel um die verschiedenen Throne des Landes.');
INSERT INTO `serie` (`id`,`name`,`picture_url`,`description`) VALUES (2,'Blindspot','/pictures/Blindspot.jpg','Eine unbekannte Frau ohne Erinnerungen – Jane Doe (Jaimie Alexander) – entsteigt auf dem belebten Times Square in New York City nackt einem Dufflebag. Auf ihrem Körper findet sich ein großflächiges Tattoo. Darin finden Experten bald einen verwirrenden Hinweis: Den Namen Kurt Weller, der einem FBI Agenten gehört (gespielt von Sullivan Stapleton). Ebenfalls bald offensichtlich wird, dass jedes Teil des Tattoos auf ein Verbrechen hinweist, das zu lösen ist. So machen sich Jane und das FBI an die Aufklärung und auf die Suche nach einer Auflösung von Janes rätselhafter Herkunft – und damit mitten hinein in eine großangelegte, internationale Verschwörung.');
INSERT INTO `serie` (`id`,`name`,`picture_url`,`description`) VALUES (3,'Mr. Robot','/pictures/Mr.Robot.jpg','„Mr. Robot“ ist ein Hacker-Thriller rund um den Computerexperten Elliot. Tagsüber ist er ein Cyber-Security-Ingenieur, nachts ein Hacker. Eine im Untergrund operierende Gruppe rekrutiert ihn, um die Firma zu zerstören, die ihn bezahlt.\nIm Mittelpunkt von „Mr. Robot“ steht der junge Computerprogrammierer Elliot, der unter stark ausgeprägten sozialen Ängsten leidet und deshalb kaum „normale“ Beziehungen eingehen kann. Stattdessen hackt er sich in das Leben von Leuten, um so an deren Alltag teilzuhaben und wird dabei auch zu einer Art Schutzengel für sie. Auf Grund seiner ausgeprägten Fähigkeiten hat er einen Job bei der Computer-Sicherheitsfirma AllSafe Cyber Security erhalten, wird jedoch von dem geheimnisvollen Anarchisten Mr. Robot für dessen Hacker-Gruppe angeworben.');
INSERT INTO `serie` (`id`,`name`,`picture_url`,`description`) VALUES (4,'Outlander','/pictures/Outlander.jpg','Nach ihrem Einsatz als Krankenschwester im Zweiten Weltkrieg macht Claire Randall (Caitriona Balfe) mit ihrem Ehemann Frank (Tobias Menzies) eine Reise in die schottischen Highlands. Dort befördert sie ein magischer Steinkreis 200 Jahre in die Vergangenheit, wo sie Jamie Fraser (Sam Heughan) kennenlernt. Die Umstände ermöglichen es ihr nicht, in ihre Zeit zurückzureisen. Sie wird fast vergewaltigt, verfolgt, gekidnappt und auf Burg Leoch, dem Sitz des MacKenzie-Clans festgehalten. Um Claire vor dem brutalen englischen Hauptmann Blackjack Randall zu schützen, wird sie auch noch zwangsverheiratet … ');
INSERT INTO `serie` (`id`,`name`,`picture_url`,`description`) VALUES (5,'The Witcher','/pictures/Witcher.jpg','Sapkowskis achtteilige Romanreihe der „Witcher Saga“ dreht sich um Witchers, also Jäger, die in jungen Jahren übernatürliche Fähigkeiten entwickelt haben, um böse und gefährliche Monster zu jagen. Geralt von Riva erwacht bei Netflix zum Leben. Die Serienadaption von The Witcher basiert wie schon die Computer-Rollenspielreihe auf der Fantasysaga des polnischen Schriftstellers Andrzej Sapkowski.');
INSERT INTO `serie` (`id`,`name`,`picture_url`,`description`) VALUES (6,'The Walking Dead','/pictures/TheWalkingDead.jpg','Die US-Serie The Walking Dead ist eine Adaption der gleichnamigen Comicbuchreihe von Robert Kirkman. Darin geht es um eine Gruppe von Menschen, die nach der Apokalypse als letzte Überlebende in einer Welt bestehen muss, die von Zombies bevölkert wird. Im Mittelpunkt der Serie steht der Polizist Rick Grimes, der für sich und seine Mitstreiter eine dauerhafte sichere Zuflucht sucht und die zerstörte Gesellschaft neu aufbauen möchte.');

/*!40000 ALTER TABLE `serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Susi Smart'),(2,'Daniel Desktop'),(3,'Frank'),(4,'Metje'),(5,'Ralf');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


-- Dump completed on 2020-01-22 13:45:51


