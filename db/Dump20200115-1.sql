CREATE DATABASE  IF NOT EXISTS `SerialSeries` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `SerialSeries`;
-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: SerialSeries
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Temporary table structure for view `Anzahl Episoden pro Staffel aller Serien`
--

DROP TABLE IF EXISTS `Anzahl Episoden pro Staffel aller Serien`;
/*!50001 DROP VIEW IF EXISTS `Anzahl Episoden pro Staffel aller Serien`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Anzahl Episoden pro Staffel aller Serien` AS SELECT 
 1 AS `id`,
 1 AS `Serie`,
 1 AS `Staffel Nr.`,
 1 AS `Anzahl Folgen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `Anzahl Episoden pro Staffel einer bestimmten Serie`
--

DROP TABLE IF EXISTS `Anzahl Episoden pro Staffel einer bestimmten Serie`;
/*!50001 DROP VIEW IF EXISTS `Anzahl Episoden pro Staffel einer bestimmten Serie`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Anzahl Episoden pro Staffel einer bestimmten Serie` AS SELECT 
 1 AS `Serie`,
 1 AS `Staffel Nr.`,
 1 AS `Anzahl Folgen`*/;
SET character_set_client = @saved_cs_client;

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
-- Table structure for table `episode`
--

DROP TABLE IF EXISTS `episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season_id` int(11) NOT NULL,
  `episodeNr` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `ranking` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_episode_season1_idx` (`season_id`),
  CONSTRAINT `fk_episode_season1` FOREIGN KEY (`season_id`) REFERENCES `season` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episode`
--

LOCK TABLES `episode` WRITE;
/*!40000 ALTER TABLE `episode` DISABLE KEYS */;
INSERT INTO `episode` VALUES (1,1,1,'Der Winter naht',0),(2,1,2,'Der Königsweg',0),(3,1,3,'Lord Schnee',0),(4,1,4,'Krüppel, Bastarde und Zerbrochenes',0),(5,1,5,'Der Wolf und der Löwe',0),(6,1,6,'Eine goldene Krone',0),(7,1,7,'Gewinn oder stirb',0),(8,1,8,'Das spitze Ende',0),(9,1,9,'Baelor',0),(10,1,10,'Feuer und Blut',0),(11,2,1,'Der Norden vergisst nicht',0),(12,2,2,'Die Nachtlande',0),(13,2,3,'Was tot ist, kann niemals sterben',0),(14,2,4,'Der Garten der Knochen',0),(15,2,5,'Der Geist von Harrenhal',0),(16,2,6,'Alte und neue Götter',0),(17,2,7,'Ein Mann ohne Ehre',0),(18,2,8,'Der Prinz von Winterfell',0),(19,2,9,'Schwarzwasser',0),(20,2,10,'Valar Morghulis',0),(21,3,1,'Valar Dohaeris',0),(22,3,2,'Dunkle Schwingen, Dunkle Worte',0),(23,3,3,'Der Weg der Züchtigung',0),(24,3,4,'Und jetzt ist seine Wache zu Ende',0),(25,3,5,'Vom Feuer geküsst',0),(26,3,6,'Der Aufstieg',0),(27,3,7,'Der Bär und die Jungfrau Hehr',0),(28,3,8,'Die Zweitgeborenen',0),(29,3,9,'Der Regen von Castamere',0),(30,3,10,'Mhysa',0),(31,4,1,'Zwei Schwerter',0),(32,4,2,'Der Löwe und die Rose',0),(33,4,3,'Sprengerin der Ketten',0),(34,4,4,'Eidwahrer',0),(35,4,5,'Der Erste seines Namens',0),(36,4,6,'Die Gesetze von Göttern und Menschen);',0),(37,4,7,'Die Spottdrossel',0),(38,4,8,'Der Berg und die Viper',0),(39,4,9,'Die Wächter auf der Mauer',0),(40,4,10,'Die Kinder',0),(41,5,1,'Die Kriege, die da kommen',0),(42,5,2,'Das Haus von Schwarz und Weiß',0),(43,5,3,'Der Hohe Spatz',0),(44,5,4,'Die Söhne der Harpyie',0),(45,5,5,'Töte den Jungen',0),(46,5,6,'Ungebeugt, Ungezähmt, Ungebrochen',0),(47,5,7,'Das Geschenk',0),(48,5,8,'Hartheim',0),(49,5,9,'Der Tanz der Drachen',0),(50,5,10,'Die Gnade der Mutter',0),(51,6,1,'Die Rote Frau',0),(52,6,2,'Zuhause',0),(53,6,3,'Eidbrecher',0),(54,6,4,'Das Buch des Fremden',0),(55,6,5,'Das Tor',0),(56,6,6,'Blut von meinem Blut',0),(57,6,7,'Der Gebrochene',0),(58,6,8,'Niemand',0),(59,6,9,'Die Schlacht der Bastarde',0),(60,6,10,'Die Winde des Winters',0),(61,7,1,'Drachenstein',0),(62,7,2,'Sturmtochter',0),(63,7,3,'Die Gerechtigkeit der Königin',0),(64,7,4,'Kriegsbeute',0),(65,7,5,'Ostwacht',0),(66,7,6,'Jenseits der Mauer',0),(67,7,7,'Der Drache und der Wolf',0),(68,8,1,'Winterfell',0),(69,8,2,'Ein Ritter der sieben Königslande',0),(70,8,3,'Die Lange Nacht',0),(71,8,4,'Die Letzten der Starks',0),(72,8,5,'Die Glocken',0),(73,8,6,'Der Eiserne Thron',0),(74,9,1,'Wer ist Jane Doe?',0),(75,9,2,'Die Farben im Nacken',0),(76,9,3,'Vertraue niemandem',0),(77,9,4,'Zweifel',0),(78,9,5,'Radioaktiv',0),(79,9,6,'Die Eule',0),(80,9,7,'Saul Guerrero',0),(81,9,8,'Daylight',0),(82,9,9,'Rich Dotcom',0),(83,9,10,'Die Mission',0),(84,9,11,'Flug PA 921',0),(85,9,12,'ZIP',0),(86,9,13,'Verdächtigungen',0),(87,9,14,'Nur 36 Stunden',0),(88,9,15,'Die brennende Rose',0),(89,9,16,'Alte Liebe',0),(90,9,17,'Schatzsuche',0),(91,9,18,'Meisterdiebe',0),(92,9,19,'Vier Blickwinkel',0),(93,9,20,'Gezeichnet',0),(94,9,21,'Eingeschlossen',0),(95,9,22,'Phase Eins',0),(96,9,23,'Phönix aus der Asche',0),(97,10,1,'Sandsturm',0),(98,10,2,'Eine Art Familie',0),(99,10,3,'Killerinstinkt',0),(100,10,4,'Aurora',0),(101,10,5,'Hinterhalt',0),(102,10,6,'Der Whistleblower',0),(103,10,7,'Auf der sicheren Seite',0),(104,10,8,'Spurlos verschwunden',0),(105,10,9,'Phase zwei',0),(106,10,10,'Gefangen',0),(107,10,11,'Der Leopard',0),(108,10,12,'Kalkuliertes Risiko',0),(109,10,13,'Shepherd',0),(110,10,14,'Dädalus',0),(111,10,15,'Bewährungsprobe',0),(112,10,16,'Abgehängt',0),(113,10,17,'Magnus Steele',0),(114,10,18,'Angeschlagen',0),(115,10,19,'Bangkok',0),(116,10,20,'Vertrauensbruch',0),(117,10,21,'Der Durchbruch',0),(118,10,22,'Janes Entscheidung',0),(119,11,1,'Alles auf Anfang',0),(120,11,2,'Verunsichert',0),(121,11,3,'Die drei blinden Mäuse',0),(122,11,4,'Moskito',0),(123,11,5,'Beweisstücke',0),(124,11,6,'Und Action!',0),(125,11,7,'Van Gogh',0),(126,11,8,'Die Ausstiegsstrategie',0),(127,11,9,'Am Boden zerstört',0),(128,11,10,'In der Falle',0),(129,11,11,'Ausgesperrt',0),(130,11,12,'Puzzleteile',0),(131,11,13,'In falschen Händen',0),(132,11,14,'Unendlich',0),(133,11,15,'Hintergangen',0),(134,11,16,'Dragonfly164',0),(135,11,17,'Die Schlange',0),(136,11,18,'Diskret und tödlich',0),(137,11,19,'Vertrauter Feind',0),(138,11,20,'Charon',0),(139,11,21,'Der nächste Zug',0),(140,11,22,'Alles oder nichts',0),(141,12,1,'Allein',0),(142,12,2,'Die Weltkarte',0),(143,12,3,'Das Michelangelo-Tattoo',0),(144,12,4,'Isolation',0),(145,12,5,'Die Macht der Schatten',0),(146,12,6,'Der Wolf und die Schlange',0),(147,12,7,'In guten und in schlechten Zeiten',0),(148,12,8,'Auf Abwegen',0),(149,12,9,'Jane oder Remi',0),(150,12,10,'Hoffnungsschimmer',0),(151,12,11,'Das Manuskript',0),(152,12,12,'Patterson Jones',0),(153,12,13,'Del Toro',0),(154,12,14,'Romulus und Remus',0),(155,12,15,'Mission: Impossible',0),(156,12,16,'Der schlimmste Feind',0),(157,12,17,'Der Deal',0),(158,12,18,'Familie',0),(159,12,19,'Dämonen der Vergangenheit',0),(160,12,20,'Rache!',0),(161,12,21,'Helios',0),(162,12,22,'Unter Druck',0),(163,13,1,'Hellofriend.mov',0),(164,13,2,'Ones-and-zer0es.mpeg',0),(165,13,3,'D3bug.mkv',0),(166,13,4,'Da3m0ns.mp4',0),(167,13,5,'3xpl0its.wmv',0),(168,13,6,'Br4ve-trave1er.asf',0),(169,13,7,'V1ew-s0urce.flv',0),(170,13,8,'Wh1ter0se.m4v',0),(171,13,9,'M1rr0r1ng.qt',0),(172,13,10,'Zer0-day.avi',0),(173,14,1,'unm4sk-pt1.tc',0),(174,14,2,'unm4sk-pt2.tc',0),(175,14,3,'k3rnel-pan1c.ksd',0),(176,14,4,'init1.asec',0),(177,14,5,'logic-b0mb.hc',0),(178,14,6,'m4ster-s1ave.aes',0),(179,14,7,'h4ndshake.sme',0),(180,14,8,'succ3ss0r.p12',0),(181,14,9,'init5.fve',0),(182,14,10,'h1dden-pr0cess.axx',0),(183,14,11,'pyth0n-pt1.p7z',0),(184,14,12,'pyth0n-pt2.p7z',0),(185,15,1,'power-saver-mode.h',0),(186,15,2,'undo.gz',0),(187,15,3,'legacy.so',0),(188,15,4,'metadata.par2',0),(189,15,5,'runtime-err0r.r00',0),(190,15,6,'kill-process.inc',0),(191,15,7,'fredrick+tanya.chk',0),(192,15,8,'dont-delete-me.ko',0),(193,15,9,'stage3.torrent',0),(194,15,10,'shutdown -r',0),(195,16,1,'Sassenach',0),(196,16,2,'Burg Leoch',0),(197,16,3,'Der Weg zurück',0),(198,16,4,'Die Jagd',0),(199,16,5,'Tribut',0),(200,16,6,'Black Jack',0),(201,16,7,'Die Hochzeit',0),(202,16,8,'Im Steinkreis',0),(203,16,9,'Die Abrechnung',0),(204,16,10,'Tödliche Intrige',0),(205,16,11,'Hexenprozess',0),(206,16,12,'Lallybroch',0),(207,16,13,'Die Wacht',0),(208,16,14,'Die Suche',0),(209,16,15,'Im Kerker',0),(210,16,16,'Erlösung',0),(211,17,1,'Reise ins Ungewisse',0),(212,17,2,'Fern der Heimat Schottland',0),(213,17,3,'Täuschungen und Rätsel',0),(214,17,4,'La Dame Blanche',0),(215,17,5,'Neues Bündnis, alte Feinde',0),(216,17,6,'Das Versprechen',0),(217,17,7,'Der Preis der Freiheit',0),(218,17,8,'Im Fuchsbau',0),(219,17,9,'Bereit zum Kampf',0),(220,17,10,'Schlachtplan',0),(221,17,11,'Rache',0),(222,17,12,'Schmerz',0),(223,17,13,'Die geliehene Zeit',0),(224,18,1,'Nach der Schlacht',0),(225,18,2,'Sechs Jahre',0),(226,18,3,'Ehrenschuld',0),(227,18,4,'Verlust',0),(228,18,5,'Der Entschluss',0),(229,18,6,'Die Rückkehr',0),(230,18,7,'Die Seherin',0),(231,18,8,'Die Forderung',0),(232,18,9,'Die Flaute',0),(233,18,10,'Der Köder',0),(234,18,11,'Die Zuflucht',0),(235,18,12,'Die Bakra',0),(236,18,13,'Im Auge des Sturms',0),(237,19,1,'Die neue Welt',0),(238,19,2,'Versklavt',0),(239,19,3,'Die falsche Braut',0),(240,19,4,'Geteiltes Land',0),(241,19,5,'Flüchtiges Glück',0),(242,19,6,'Blutsbande',0),(243,19,7,'Hartes Regiment',0),(244,19,8,'Wilmington',0),(245,19,9,'Familie',0),(246,19,10,'Getrennte Wege',0),(247,19,11,'Spannungen',0),(248,19,12,'Flucht',0),(249,19,13,'Ein Mann der Ehre',0),(250,20,1,'Des Endes Anfang',0),(251,20,2,'Vier Mark',0),(252,20,3,'Verrätermond',0),(253,20,4,'Bankette, Bastarde und Begräbnisse',0),(254,20,5,'Aufgestaute Begehren',0),(255,20,6,'Seltene Arten',0),(256,20,7,'Vor dem Fall',0),(257,20,8,'Viel mehr',0),(259,21,1,'Gute alte Zeit',0),(260,21,2,'Gefangene der Toten',0),(261,21,3,'Tag der Frösche',0),(262,21,4,'Vatos',0),(263,21,5,'Tag 194',0),(264,21,6,'Nichts mehr',0),(265,22,1,'Zukunft im Rückspiegel',0),(266,22,2,'Blutsbande',0),(267,22,3,'Die letzte Kugel',0),(268,22,4,'Die Cherokee Rose',0),(269,22,5,'Chupacabra',0),(270,22,6,'Beichten',0),(271,22,7,'Tot oder lebendig',0),(272,22,8,'Nebraska',0),(273,22,9,'Am Abzug',0),(274,22,10,'Ausgesetzt',0),(275,22,11,'Sorry, Bruder!',0),(276,22,12,'Die besseren Engel unserer Natur',0),(277,22,13,'Die Mahd',0),(278,23,1,'Die Saat',0),(279,23,2,'Rosskur',0),(280,23,3,'Zeit der Ernte',0),(281,23,4,'Leben und Tod',0),(282,23,5,'Anruf',0),(283,23,6,'Auf der Jagd',0),(284,23,7,'Tod vor der Tür',0),(285,23,8,'Siehe, Dein Bruder',0),(286,23,9,'Kriegsrecht',0),(287,23,10,'Zuflucht',0),(288,23,11,'Judas',0),(289,23,12,'Gesichter der Toten',0),(290,23,13,'Das Ultimatum',0),(291,23,14,'Der Fang',0),(292,23,15,'Der Strick des Jägers',0),(293,23,16,'Stirb und töte',0),(294,24,1,'Kein Tag ohne Unglück',0),(295,24,2,'Tod, überall Tod',0),(296,24,3,'Quarantäne',0),(297,24,4,'Im Zweifel',0),(298,24,5,'Die Krankheit zum Tode',0),(299,24,6,'Lebendköder',0),(300,24,7,'Handicap',0),(301,24,8,'Kein Zurück',0),(302,24,9,'Für Dich',0),(303,24,10,'Neben dem Gleis',0),(304,24,11,'Besetzt',0),(305,24,12,'Alkohol',0),(306,24,13,'Allein',0),(307,24,14,'Schonung',0),(308,24,15,'Vereint',0),(309,24,16,'Terminus',0),(310,25,1,'Keine Zuflucht',0),(311,25,2,'Gabriel',0),(312,25,3,'Vier Wände und ein Dach',0),(313,25,4,'Slabtown',0),(314,25,5,'Selbsthilfe',0),(315,25,6,'Verschwunden',0),(316,25,7,'Zug um Zug',0),(317,25,8,'Coda',0),(318,25,9,'Der hohe Preis fürs Leben',0),(319,25,10,'Lebende Tote',0),(320,25,11,'Akrasia',0),(321,25,12,'Erinnerung',0),(322,25,13,'Vergessen',0),(323,25,14,'Falsches Licht',0),(324,25,15,'Helfer',0),(325,25,16,'Herrsche',0),(326,26,1,'Herdentrieb',0),(327,26,2,'Kämpfer',0),(328,26,3,'Danke',0),(329,26,4,'Hier ist nicht hier',0),(330,26,5,'Hier und Jetzt',0),(331,26,6,'Wer die Wahl hat',0),(332,26,7,'Die Wand',0),(333,26,8,'Nicht das Ende',0),(334,26,9,'In der Falle',0),(335,26,10,'Die neue Welt',0),(336,26,11,'Lösung',0),(337,26,12,'Die Nacht vor dem Morgen',0),(338,26,13,'Im selben Boot',0),(339,26,14,'Keine Gleise',0),(340,26,15,'Nach Osten',0),(341,26,16,'Der letzte Tag auf Erden',0),(342,27,1,'Der Tag wird kommen',0),(343,27,2,'Der Brunnen',0),(344,27,3,'Die Zelle',0),(345,27,4,'Fron',0),(346,27,5,'Draufgänger',0),(347,27,6,'Der Schwur',0),(348,27,7,'Sing mir ein Lied',0),(349,27,8,'Unsere Herzen schlagen noch',0),(350,27,9,'Der Stein in der Straße',0),(351,27,10,'Neue beste Freunde',0),(352,27,11,'Wir sind Negan',0),(353,27,12,'Sag Ja',0),(354,27,13,'Begrabt mich hier',0),(355,27,14,'Auf die andere Seite',0),(356,27,15,'Was wir brauchen',0),(357,27,16,'Heute beginnt der Rest des Lebens',0),(358,28,1,'Erster Kampf',0),(359,28,2,'Die Verdammten',0),(360,28,3,'Wir oder Die',0),(361,28,4,'Nur irgendwer',0),(362,28,5,'Die Beichte',0),(363,28,6,'Der König, die Witwe und Rick',0),(364,28,7,'Für Danach',0),(365,28,8,'Kampf um die Zukunft',0),(366,28,9,'Ehre',0),(367,28,10,'Botschaften',0),(368,28,11,'Flucht nach Hilltop',0),(369,28,12,'Der Schlüssel zur Zukunft',0),(370,28,13,'Der Weg der Toten',0),(371,28,14,'Ich sterbe nicht',0),(372,28,15,'Die rechte Hand',0),(373,28,16,'Zorn',0),(374,29,1,'Ein neuer Anfang',0),(375,29,2,'Die Brücke',0),(376,29,3,'Keine Ausnahmen',0),(377,29,4,'Hungerstreik',0),(378,29,5,'Wach auf',0),(379,29,6,'Die Welt dreht sich weiter',0),(380,29,7,'Stradivarius',0),(381,29,8,'Geflüster',0),(382,29,9,'Home Sweet Home',0),(383,29,10,'Lydia',0),(384,29,11,'Damit leben',0),(385,29,12,'Anführer',0),(386,29,13,'Engpass',0),(387,29,14,'Narben',0),(388,29,15,'Die Ruhe davor',0),(389,29,16,'Der Sturm',0),(390,30,1,'Überschrittene Grenzen',0),(391,30,2,'Wir sind das Ende der Welt',0),(392,30,3,'Geister',0),(393,30,4,'Masken',0),(394,30,5,'Diebstahl und Lügen',0),(395,30,6,'Neue Verbindungen',0),(396,30,7,'Mach die Augen auf',0),(397,30,8,'Nichts ist wie zuvor',0);
/*!40000 ALTER TABLE `episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `gesehene Episoden pro User`
--

DROP TABLE IF EXISTS `gesehene Episoden pro User`;
/*!50001 DROP VIEW IF EXISTS `gesehene Episoden pro User`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gesehene Episoden pro User` AS SELECT 
 1 AS `User`,
 1 AS `Serie`,
 1 AS `Staffel`,
 1 AS `Folge`,
 1 AS `Titel`,
 1 AS `seen`,
 1 AS `wanna_c`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `season` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) NOT NULL,
  `seasonNr` int(11) NOT NULL,
  `titel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_season_serie1_idx` (`serie_id`),
  CONSTRAINT `fk_season_serie1` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (1,1,1,NULL),(2,1,2,NULL),(3,1,3,NULL),(4,1,4,NULL),(5,1,5,NULL),(6,1,6,NULL),(7,1,7,NULL),(8,1,8,NULL),(9,2,1,NULL),(10,2,2,NULL),(11,2,3,NULL),(12,2,4,NULL),(13,3,1,NULL),(14,3,2,NULL),(15,3,3,NULL),(16,4,1,NULL),(17,4,2,NULL),(18,4,3,NULL),(19,4,4,NULL),(20,5,1,NULL),(21,6,1,NULL),(22,6,2,NULL),(23,6,3,NULL),(24,6,4,NULL),(25,6,5,NULL),(26,6,6,NULL),(27,6,7,NULL),(28,6,8,NULL),(29,6,9,NULL),(30,6,10,NULL);
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(100) NOT NULL,
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
INSERT INTO `serie` VALUES (1,'Game of Thrones','https://m.media-amazon.com/images/I/91pHN6XnNqL._AC_UY218_ML3_.jpg','Die Serie Game of Thrones basiert auf der Fantasy-Reihe „Das Lied von Eis und Feuer“ von George R.R. Martin. Die erste Staffel ist Bestandteil des ersten Buchs der Reihe und spielt im mittelalterlichen Westeros. König Robert Baratheon ist der Herrscher über die sieben Königreiche und Inhaber des eisernen Throns. Doch sein Reich befindet sich in Aufruhr. Sein Vertrauter Jon Arryn - die Hand des Königs - ist tot und es sieht nach Mord aus. Robert holt somit seinen besten Freund Sir Eddard Stark (Sean Bean) an den Königshof. „Ned“ Stark ist der Herrscher der Festung Winterfell und Beschützer des Nordens, der nur unwillig an den Intrigen reichen Hof in King\'s Landing gerufen wird. Dort beginnt das Spiel um die verschiedenen Throne des Landes.'),(2,'Blindspot','https://m.media-amazon.com/images/I/91K896a0oXL._AC_UY218_ML3_.jpg','Eine unbekannte Frau ohne Erinnerungen – Jane Doe (Jaimie Alexander) – entsteigt auf dem belebten Times Square in New York City nackt einem Dufflebag. Auf ihrem Körper findet sich ein großflächiges Tattoo. Darin finden Experten bald einen verwirrenden Hinweis: Den Namen Kurt Weller, der einem FBI Agenten gehört (gespielt von Sullivan Stapleton). Ebenfalls bald offensichtlich wird, dass jedes Teil des Tattoos auf ein Verbrechen hinweist, das zu lösen ist. So machen sich Jane und das FBI an die Aufklärung und auf die Suche nach einer Auflösung von Janes rätselhafter Herkunft – und damit mitten hinein in eine großangelegte, internationale Verschwörung.'),(3,'Mr. Robot','https://m.media-amazon.com/images/I/81jqQeQZUIL._AC_UY218_ML3_.jpg','„Mr. Robot“ ist ein Hacker-Thriller rund um den Computerexperten Elliot. Tagsüber ist er ein Cyber-Security-Ingenieur, nachts ein Hacker. Eine im Untergrund operierende Gruppe rekrutiert ihn, um die Firma zu zerstören, die ihn bezahlt.\nIm Mittelpunkt von „Mr. Robot“ steht der junge Computerprogrammierer Elliot, der unter stark ausgeprägten sozialen Ängsten leidet und deshalb kaum „normale“ Beziehungen eingehen kann. Stattdessen hackt er sich in das Leben von Leuten, um so an deren Alltag teilzuhaben und wird dabei auch zu einer Art Schutzengel für sie. Auf Grund seiner ausgeprägten Fähigkeiten hat er einen Job bei der Computer-Sicherheitsfirma AllSafe Cyber Security erhalten, wird jedoch von dem geheimnisvollen Anarchisten Mr. Robot für dessen Hacker-Gruppe angeworben.'),(4,'Outlander','https://m.media-amazon.com/images/I/91vGa2+AIkL._AC_UY218_ML3_.jpg','Nach ihrem Einsatz als Krankenschwester im Zweiten Weltkrieg macht Claire Randall (Caitriona Balfe) mit ihrem Ehemann Frank (Tobias Menzies) eine Reise in die schottischen Highlands. Dort befördert sie ein magischer Steinkreis 200 Jahre in die Vergangenheit, wo sie Jamie Fraser (Sam Heughan) kennenlernt. Die Umstände ermöglichen es ihr nicht, in ihre Zeit zurückzureisen. Sie wird fast vergewaltigt, verfolgt, gekidnappt und auf Burg Leoch, dem Sitz des MacKenzie-Clans festgehalten. Um Claire vor dem brutalen englischen Hauptmann Blackjack Randall zu schützen, wird sie auch noch zwangsverheiratet … '),(5,'The Witcher','http://www.gstatic.com/tv/thumb/tvbanners/17580215/p17580215_b_v8_ac.jpg','Sapkowskis achtteilige Romanreihe der „Witcher Saga“ dreht sich um Witchers, also Jäger, die in jungen Jahren übernatürliche Fähigkeiten entwickelt haben, um böse und gefährliche Monster zu jagen. Geralt von Riva erwacht bei Netflix zum Leben. Die Serienadaption von The Witcher basiert wie schon die Computer-Rollenspielreihe auf der Fantasysaga des polnischen Schriftstellers Andrzej Sapkowski.'),(6,'The Walking Dead','https://is5-ssl.mzstatic.com/image/thumb/Video/v4/e6/a1/99/e6a199fe-83b6-61f3-3751-1d8eb770841d/mzl.mfqaiuac.jpg/268x0w.jpg','Die US-Serie The Walking Dead ist eine Adaption der gleichnamigen Comicbuchreihe von Robert Kirkman. Darin geht es um eine Gruppe von Menschen, die nach der Apokalypse als letzte Überlebende in einer Welt bestehen muss, die von Zombies bevölkert wird. Im Mittelpunkt der Serie steht der Polizist Rick Grimes, der für sich und seine Mitstreiter eine dauerhafte sichere Zuflucht sucht und die zerstörte Gesellschaft neu aufbauen möchte.');
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
INSERT INTO `user` VALUES (1,'Frank'),(2,'Metje'),(3,'Ralf');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_seen_episode`
--

DROP TABLE IF EXISTS `user_has_seen_episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_has_seen_episode` (
  `user_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `wanna_c` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`episode_id`),
  KEY `fk_episode_has_user_user1_idx` (`user_id`),
  KEY `fk_episode_has_user_episode_idx` (`episode_id`),
  CONSTRAINT `fk_episode_has_user_episode` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_episode_has_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_seen_episode`
--

LOCK TABLES `user_has_seen_episode` WRITE;
/*!40000 ALTER TABLE `user_has_seen_episode` DISABLE KEYS */;
INSERT INTO `user_has_seen_episode` VALUES (1,102,0,1),(1,163,0,1),(1,164,0,1),(1,165,0,1),(1,166,0,1),(2,55,0,1),(2,195,0,1),(2,196,0,1),(2,197,0,1),(2,198,0,1),(2,199,0,1),(2,200,0,1),(2,250,1,0),(2,251,1,0),(2,252,1,0),(3,1,1,1),(3,2,1,0),(3,3,1,0),(3,4,1,0),(3,5,1,0),(3,6,1,0),(3,7,1,0),(3,8,1,0),(3,9,1,0),(3,10,1,0),(3,11,1,0),(3,13,1,0),(3,14,1,0),(3,15,1,0),(3,16,1,0),(3,17,1,0),(3,19,1,0),(3,20,1,0),(3,21,1,0),(3,22,1,0),(3,23,1,0),(3,24,1,0),(3,25,1,0),(3,26,1,0),(3,27,1,0),(3,28,1,0),(3,29,1,0),(3,30,1,0),(3,250,0,1),(3,251,0,1),(3,252,0,1),(3,253,0,1),(3,254,0,1),(3,255,0,1),(3,256,0,1),(3,257,0,1);
/*!40000 ALTER TABLE `user_has_seen_episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Anzahl Episoden pro Staffel aller Serien`
--

/*!50001 DROP VIEW IF EXISTS `Anzahl Episoden pro Staffel aller Serien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Anzahl Episoden pro Staffel aller Serien` AS select `ser`.`id` AS `id`,`ser`.`titel` AS `Serie`,`sea`.`seasonNr` AS `Staffel Nr.`,max(`ep`.`episodeNr`) AS `Anzahl Folgen` from ((`serie` `ser` join `season` `sea` on((`sea`.`serie_id` = `ser`.`id`))) join `episode` `ep` on((`ep`.`season_id` = `sea`.`id`))) group by `ser`.`id`,`ser`.`titel`,`sea`.`seasonNr` order by `ser`.`id`,`sea`.`seasonNr` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Anzahl Episoden pro Staffel einer bestimmten Serie`
--

/*!50001 DROP VIEW IF EXISTS `Anzahl Episoden pro Staffel einer bestimmten Serie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Anzahl Episoden pro Staffel einer bestimmten Serie` AS select `ser`.`titel` AS `Serie`,`sea`.`seasonNr` AS `Staffel Nr.`,max(`ep`.`episodeNr`) AS `Anzahl Folgen` from ((`serie` `ser` join `season` `sea` on((`sea`.`serie_id` = `ser`.`id`))) join `episode` `ep` on((`ep`.`season_id` = `sea`.`id`))) where (`ser`.`titel` = 'Outlander') group by `sea`.`seasonNr` order by `sea`.`seasonNr` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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
/*!50001 VIEW `Anzahl Staffeln pro Serie` AS select `serie`.`id` AS `id`,`serie`.`titel` AS `Serie`,max(`season`.`seasonNr`) AS `Anzahl Staffeln` from (`serie` join `season`) where (`serie`.`id` = `season`.`serie_id`) group by `serie`.`titel`,`serie`.`id` order by `serie`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gesehene Episoden pro User`
--

/*!50001 DROP VIEW IF EXISTS `gesehene Episoden pro User`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gesehene Episoden pro User` AS select `u`.`name` AS `User`,`ser`.`titel` AS `Serie`,`sea`.`seasonNr` AS `Staffel`,`e`.`episodeNr` AS `Folge`,`e`.`title` AS `Titel`,`uhs`.`seen` AS `seen`,`uhs`.`wanna_c` AS `wanna_c` from ((((`user_has_seen_episode` `uhs` join `episode` `e` on((`uhs`.`episode_id` = `e`.`id`))) join `user` `u` on((`uhs`.`user_id` = `u`.`id`))) join `season` `sea` on((`e`.`season_id` = `sea`.`id`))) join `serie` `ser` on((`sea`.`serie_id` = `ser`.`id`))) order by `u`.`name`,`ser`.`titel`,`sea`.`seasonNr`,`e`.`episodeNr` */;
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

-- Dump completed on 2020-01-15  8:26:12
