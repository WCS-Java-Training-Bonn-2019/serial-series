CREATE DATABASE  IF NOT EXISTS `serial-series`
/*!40100 DEFAULT CHARACTER SET latin1 */;
CREATE USER if NOT EXISTS `series_user`@`localhost` IDENTIFIED BY 'Games2Thrones=?';
GRANT ALL PRIVILEGES ON *.* TO `series_user`@`localhost`;

USE `serial-series`;
-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: serial-series
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4


--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
CREATE TABLE `serie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `name` varchar(100) DEFAULT NULL,
  `picture_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 
;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
INSERT INTO `serie` (`id`, `description`, `name`, `picture_url`) VALUES (1,'Die Serie Game of Thrones basiert auf der Fantasy-Reihe „Das Lied von Eis und Feuer“ von George R.R. Martin. Die erste Staffel ist Bestandteil des ersten Buchs der Reihe und spielt im mittelalterlichen Westeros. König Robert Baratheon ist der Herrscher über die sieben Königreiche und Inhaber des eisernen Throns. Doch sein Reich befindet sich in Aufruhr. Sein Vertrauter Jon Arryn - die Hand des Königs - ist tot und es sieht nach Mord aus. Robert holt somit seinen besten Freund Sir Eddard Stark (Sean Bean) an den Königshof. „Ned“ Stark ist der Herrscher der Festung Winterfell und Beschützer des Nordens, der nur unwillig an den Intrigen reichen Hof in King\'s Landing gerufen wird. Dort beginnt das Spiel um die verschiedenen Throne des Landes.','Game of Thrones','/pictures/GoT.jpg');
INSERT INTO `serie` (`id`, `description`, `name`, `picture_url`) VALUES (2,'Eine unbekannte Frau ohne Erinnerungen – Jane Doe (Jaimie Alexander) – entsteigt auf dem belebten Times Square in New York City nackt einem Dufflebag. Auf ihrem Körper findet sich ein großflächiges Tattoo. Darin finden Experten bald einen verwirrenden Hinweis: Den Namen Kurt Weller, der einem FBI Agenten gehört (gespielt von Sullivan Stapleton). Ebenfalls bald offensichtlich wird, dass jedes Teil des Tattoos auf ein Verbrechen hinweist, das zu lösen ist. So machen sich Jane und das FBI an die Aufklärung und auf die Suche nach einer Auflösung von Janes rätselhafter Herkunft – und damit mitten hinein in eine großangelegte, internationale Verschwörung.','Blindspot','/pictures/Blindspot.jpg');
INSERT INTO `serie` (`id`, `description`, `name`, `picture_url`) VALUES (3,'„Mr. Robot“ ist ein Hacker-Thriller rund um den Computerexperten Elliot. Tagsüber ist er ein Cyber-Security-Ingenieur, nachts ein Hacker. Eine im Untergrund operierende Gruppe rekrutiert ihn, um die Firma zu zerstören, die ihn bezahlt.\nIm Mittelpunkt von „Mr. Robot“ steht der junge Computerprogrammierer Elliot, der unter stark ausgeprägten sozialen Ängsten leidet und deshalb kaum „normale“ Beziehungen eingehen kann. Stattdessen hackt er sich in das Leben von Leuten, um so an deren Alltag teilzuhaben und wird dabei auch zu einer Art Schutzengel für sie. Auf Grund seiner ausgeprägten Fähigkeiten hat er einen Job bei der Computer-Sicherheitsfirma AllSafe Cyber Security erhalten, wird jedoch von dem geheimnisvollen Anarchisten Mr. Robot für dessen Hacker-Gruppe angeworben.','Mr. Robot','/pictures/Mr.Robot.jpg');
INSERT INTO `serie` (`id`, `description`, `name`, `picture_url`) VALUES (4,'Nach ihrem Einsatz als Krankenschwester im Zweiten Weltkrieg macht Claire Randall (Caitriona Balfe) mit ihrem Ehemann Frank (Tobias Menzies) eine Reise in die schottischen Highlands. Dort befördert sie ein magischer Steinkreis 200 Jahre in die Vergangenheit, wo sie Jamie Fraser (Sam Heughan) kennenlernt. Die Umstände ermöglichen es ihr nicht, in ihre Zeit zurückzureisen. Sie wird fast vergewaltigt, verfolgt, gekidnappt und auf Burg Leoch, dem Sitz des MacKenzie-Clans festgehalten. Um Claire vor dem brutalen englischen Hauptmann Blackjack Randall zu schützen, wird sie auch noch zwangsverheiratet … ','Outlander','/pictures/Outlander.jpg');
INSERT INTO `serie` (`id`, `description`, `name`, `picture_url`) VALUES (5,'Sapkowskis achtteilige Romanreihe der „Witcher Saga“ dreht sich um Witchers, also Jäger, die in jungen Jahren übernatürliche Fähigkeiten entwickelt haben, um böse und gefährliche Monster zu jagen. Geralt von Riva erwacht bei Netflix zum Leben. Die Serienadaption von The Witcher basiert wie schon die Computer-Rollenspielreihe auf der Fantasysaga des polnischen Schriftstellers Andrzej Sapkowski.','The Witcher','/pictures/Witcher.jpg');
INSERT INTO `serie` (`id`, `description`, `name`, `picture_url`) VALUES (6,'Die US-Serie The Walking Dead ist eine Adaption der gleichnamigen Comicbuchreihe von Robert Kirkman. Darin geht es um eine Gruppe von Menschen, die nach der Apokalypse als letzte Überlebende in einer Welt bestehen muss, die von Zombies bevölkert wird. Im Mittelpunkt der Serie steht der Polizist Rick Grimes, der für sich und seine Mitstreiter eine dauerhafte sichere Zuflucht sucht und die zerstörte Gesellschaft neu aufbauen möchte.','The Walking Dead','/pictures/TheWalkingDead.jpg');
INSERT INTO `serie` (`id`, `description`, `name`, `picture_url`) VALUES (7,'Meredith Greys (Ellen Pompeo) erster Tag als Ärztin im Praktikum am „Seattle Grace Hospital“ beginnt chaotisch. Nicht nur, dass der Mann, den sie am Abend zuvor kennengelernt hat und neben dem sie am Morgen aufgewacht ist, sich als ihr Chef Dr. Derek Shepherd (Patrick Dempsey) herausstellt, zu allem Überfluss sind ihre Kolleginnen und Kollegen im Praktikum genauso ahnungslos wie sie. Zwischen Beinahe-Zusammenbrüchen und Erfolgserlebnissen schlagen sich Meredith und ihre Kollegen, Cristina Yang (Sandra Oh), George O’Malley (T. R. Knight), Izzie Stevens (Katherine Heigl) und Alex Karev (Justin Chambers), durch den Klinikalltag mit dem Ziel den Tag zu überstehen, ohne einen Patienten umzubringen. Die Ausbildung der jungen Assistenzärzte wird zunächst der Abteilungsärztin Dr. Miranda Bailey zugewiesen.','Grey’s Anatomy','/pictures/GreysAnatomy.jpg');
INSERT INTO `serie` (`id`, `description`, `name`, `picture_url`) VALUES (8,'Clark Gregg schlüpft nach dem Kinoerfolg „The Avengers“ erneut in seine Rolle als Agent Phil Coulson, der zusammen mit einer auserwählten kleinen Gruppe als Strafverfolgungs-Organisation S.H.I.E.L.D. den Kampf gegen das Böse aufnimmt. Die Serie schließt an den Kinofilm an und beginnt nach dem Angriff auf New York, der die Existenz von Superhelden und Außerirdischen unter Beweis gestellt hat. Nachdem Agent Coulson scheinbar durch Loki ermordet wurde, kehrt er zu S.H.I.E.L.D. zurück, um ein neues Team zusammenzustellen. Die Aufgabe der geheimen Einheit besteht darin, übernatürliche Bedrohungen auf der Erde zu untersuchen und die Menschen zu schützen.','Marvel’s Agents of S.H.I.E.L.D.','/pictures/Shield.jpg');
INSERT INTO `serie` (`id`, `description`, `name`, `picture_url`) VALUES (9,'Die Krankenhausserie basiert auf den Memoiren von Dr. Eric Manheimer, einem früheren Chefarzt des bekannten Bellevue-Krankenhauses in New York City. Es handelt sich um das älteste öffentliche Krankenhaus Amerikas. Die Hauptfigur der Serie ist der neue Boss des Krankenhauses, Dr. Max Goodwin (gespielt von „The Blacklist“-Veteran Ryan Eggold). Sein Führungsstil rüttelt den Status Quo auf, er kämpft gegen Bürokratie und stellt stets die Pflege der Patienten in den Mittelpunkt. Er lässt sich von keinen Widerständen seiner Mitarbeiter beirren und will das unterbesetzte, unterfinanzierte und unterschätze Krankenhaus aufmöbeln – schließlich handelt es sich um das einzige Krankenhaus der Welt, in dem Ebola-Patienten, Häftlinge von Rikers Island und der Präsident der Vereinigten Staaten unter dem gleichen Dach behandelt werden können.','New Amsterdam','/pictures/NewAmsterdam.jpg');
INSERT INTO `serie` (`id`, `description`, `name`, `picture_url`) VALUES (10,'Das Vorstadtehepaar Reed (Stephen Moyer) und Kate (Amy Acker) hat sich gerade getrennt, als sie feststellen, dass ihre beiden Kinder im Teenager-Alter übernatürliche Kräfte haben. Allerdings ist die Regierung der USA solchen außergewöhnlich begabten Menschen gegenüber feindlich gesinnt, so dass die Familie gezwungen ist, in den Untergrund zu gehen und sich einem Netzwerk von anderen Flüchtlingen vor der Regierung anzuschließen.','The Gifted','/pictures/TheGifted.jpg');
UNLOCK TABLES;

--
-- Table structure for table `serie_user`
--

DROP TABLE IF EXISTS `serie_user`;
CREATE TABLE `serie_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serie_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 
;

--
-- Dumping data for table `serie_user`
--

LOCK TABLES `serie_user` WRITE;
INSERT INTO `serie_user` (`id`,`serie_id`,`user_id`) VALUES (1,10,2);
INSERT INTO `serie_user` (`id`,`serie_id`,`user_id`) VALUES (2,4,1);
INSERT INTO `serie_user` (`id`,`serie_id`,`user_id`) VALUES (3,7,1);
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 
;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
INSERT INTO `user` (`id`, `name`) VALUES (1,'Susi Smart');
INSERT INTO `user` (`id`, `name`) VALUES (2,'Daniel Desktop');
INSERT INTO `user` (`id`, `name`) VALUES (3,'Frank');
INSERT INTO `user` (`id`, `name`) VALUES (4,'Metje');
INSERT INTO `user` (`id`, `name`) VALUES (5,'Ralf');
UNLOCK TABLES;

/*
-- Query: SELECT 
    *
FROM
    SerialSeries.episode
LIMIT 0, 10000

-- Date: 2020-01-29 13:25
*/
-- Staffeln
-- Game of Thrones
INSERT INTO `season` (`id`,`serie_id`) VALUES (1,1);
INSERT INTO `season` (`id`,`serie_id`) VALUES (2,1);
INSERT INTO `season` (`id`,`serie_id`) VALUES (3,1);
INSERT INTO `season` (`id`,`serie_id`) VALUES (4,1);
INSERT INTO `season` (`id`,`serie_id`) VALUES (5,1);
INSERT INTO `season` (`id`,`serie_id`) VALUES (6,1);
INSERT INTO `season` (`id`,`serie_id`) VALUES (7,1);
INSERT INTO `season` (`id`,`serie_id`) VALUES (8,1);
-- Blindspot
INSERT INTO `season` (`id`,`serie_id`) VALUES (9,2);
INSERT INTO `season` (`id`,`serie_id`) VALUES (10,2);
INSERT INTO `season` (`id`,`serie_id`) VALUES (11,2);
INSERT INTO `season` (`id`,`serie_id`) VALUES (12,2);
-- Mr. Robot
INSERT INTO `season` (`id`,`serie_id`) VALUES (13,3);
INSERT INTO `season` (`id`,`serie_id`) VALUES (14,3);
INSERT INTO `season` (`id`,`serie_id`) VALUES (15,3);
-- Outlander
INSERT INTO `season` (`id`,`serie_id`) VALUES (16,4);
INSERT INTO `season` (`id`,`serie_id`) VALUES (17,4);
INSERT INTO `season` (`id`,`serie_id`) VALUES (18,4);
INSERT INTO `season` (`id`,`serie_id`) VALUES (19,4);
-- The Witcher
INSERT INTO `season` (`id`,`serie_id`) VALUES (20,5);
-- The Walking Dead
INSERT INTO `season` (`id`,`serie_id`) VALUES (21,6);
INSERT INTO `season` (`id`,`serie_id`) VALUES (22,6);
INSERT INTO `season` (`id`,`serie_id`) VALUES (23,6);
INSERT INTO `season` (`id`,`serie_id`) VALUES (24,6);
INSERT INTO `season` (`id`,`serie_id`) VALUES (25,6);
INSERT INTO `season` (`id`,`serie_id`) VALUES (26,6);
INSERT INTO `season` (`id`,`serie_id`) VALUES (27,6);
INSERT INTO `season` (`id`,`serie_id`) VALUES (28,6);
INSERT INTO `season` (`id`,`serie_id`) VALUES (29,6);
INSERT INTO `season` (`id`,`serie_id`) VALUES (30,6);
-- Grey's Anatomy
-- New Amsterdam
-- The Gifted
-- The Simpsons


-- Episoden
-- Game of Thrones, Staffel 1
INSERT INTO `episode` (`season_id`,`name`) VALUES (1,'Der Winter naht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (1,'Der Königsweg');
INSERT INTO `episode` (`season_id`,`name`) VALUES (1,'Lord Schnee');
INSERT INTO `episode` (`season_id`,`name`) VALUES (1,'Krüppel, Bastarde und Zerbrochenes');
INSERT INTO `episode` (`season_id`,`name`) VALUES (1,'Der Wolf und der Löwe');
INSERT INTO `episode` (`season_id`,`name`) VALUES (1,'Eine goldene Krone');
INSERT INTO `episode` (`season_id`,`name`) VALUES (1,'Gewinn oder stirb');
INSERT INTO `episode` (`season_id`,`name`) VALUES (1,'Das spitze Ende');
INSERT INTO `episode` (`season_id`,`name`) VALUES (1,'Baelor');
INSERT INTO `episode` (`season_id`,`name`) VALUES (1,'Feuer und Blut');
-- Game of Thrones, Staffel 2
INSERT INTO `episode` (`season_id`,`name`) VALUES (2,'Der Norden vergisst nicht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (2,'Die Nachtlande');
INSERT INTO `episode` (`season_id`,`name`) VALUES (2,'Was tot ist, kann niemals sterben');
INSERT INTO `episode` (`season_id`,`name`) VALUES (2,'Der Garten der Knochen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (2,'Der Geist von Harrenhal');
INSERT INTO `episode` (`season_id`,`name`) VALUES (2,'Alte und neue Götter');
INSERT INTO `episode` (`season_id`,`name`) VALUES (2,'Ein Mann ohne Ehre');
INSERT INTO `episode` (`season_id`,`name`) VALUES (2,'Der Prinz von Winterfell');
INSERT INTO `episode` (`season_id`,`name`) VALUES (2,'Schwarzwasser');
INSERT INTO `episode` (`season_id`,`name`) VALUES (2,'Valar Morghulis');
-- Game of Thrones, Staffel 3
INSERT INTO `episode` (`season_id`,`name`) VALUES (3,'Valar Dohaeris');
INSERT INTO `episode` (`season_id`,`name`) VALUES (3,'Dunkle Schwingen, Dunkle Worte');
INSERT INTO `episode` (`season_id`,`name`) VALUES (3,'Der Weg der Züchtigung');
INSERT INTO `episode` (`season_id`,`name`) VALUES (3,'Und jetzt ist seine Wache zu Ende');
INSERT INTO `episode` (`season_id`,`name`) VALUES (3,'Vom Feuer geküsst');
INSERT INTO `episode` (`season_id`,`name`) VALUES (3,'Der Aufstieg');
INSERT INTO `episode` (`season_id`,`name`) VALUES (3,'Der Bär und die Jungfrau Hehr');
INSERT INTO `episode` (`season_id`,`name`) VALUES (3,'Die Zweitgeborenen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (3,'Der Regen von Castamere');
INSERT INTO `episode` (`season_id`,`name`) VALUES (3,'Mhysa');
-- Game of Thrones, Staffel 4
INSERT INTO `episode` (`season_id`,`name`) VALUES (4,'Zwei Schwerter');
INSERT INTO `episode` (`season_id`,`name`) VALUES (4,'Der Löwe und die Rose');
INSERT INTO `episode` (`season_id`,`name`) VALUES (4,'Sprengerin der Ketten');
INSERT INTO `episode` (`season_id`,`name`) VALUES (4,'Eidwahrer');
INSERT INTO `episode` (`season_id`,`name`) VALUES (4,'Der Erste seines Namens');
INSERT INTO `episode` (`season_id`,`name`) VALUES (4,'Die Gesetze von Göttern und Menschen);');
INSERT INTO `episode` (`season_id`,`name`) VALUES (4,'Die Spottdrossel');
INSERT INTO `episode` (`season_id`,`name`) VALUES (4,'Der Berg und die Viper');
INSERT INTO `episode` (`season_id`,`name`) VALUES (4,'Die Wächter auf der Mauer');
INSERT INTO `episode` (`season_id`,`name`) VALUES (4,'Die Kinder');
-- Game of Thrones, Staffel 5
INSERT INTO `episode` (`season_id`,`name`) VALUES (5,'Die Kriege, die da kommen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (5,'Das Haus von Schwarz und Weiß');
INSERT INTO `episode` (`season_id`,`name`) VALUES (5,'Der Hohe Spatz');
INSERT INTO `episode` (`season_id`,`name`) VALUES (5,'Die Söhne der Harpyie');
INSERT INTO `episode` (`season_id`,`name`) VALUES (5,'Töte den Jungen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (5,'Ungebeugt, Ungezähmt, Ungebrochen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (5,'Das Geschenk');
INSERT INTO `episode` (`season_id`,`name`) VALUES (5,'Hartheim');
INSERT INTO `episode` (`season_id`,`name`) VALUES (5,'Der Tanz der Drachen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (5,'Die Gnade der Mutter');
-- Game of Thrones, Staffel 6
INSERT INTO `episode` (`season_id`,`name`) VALUES (6,'Die Rote Frau');
INSERT INTO `episode` (`season_id`,`name`) VALUES (6,'Zuhause');
INSERT INTO `episode` (`season_id`,`name`) VALUES (6,'Eidbrecher');
INSERT INTO `episode` (`season_id`,`name`) VALUES (6,'Das Buch des Fremden');
INSERT INTO `episode` (`season_id`,`name`) VALUES (6,'Das Tor');
INSERT INTO `episode` (`season_id`,`name`) VALUES (6,'Blut von meinem Blut');
INSERT INTO `episode` (`season_id`,`name`) VALUES (6,'Der Gebrochene');
INSERT INTO `episode` (`season_id`,`name`) VALUES (6,'Niemand');
INSERT INTO `episode` (`season_id`,`name`) VALUES (6,'Die Schlacht der Bastarde');
INSERT INTO `episode` (`season_id`,`name`) VALUES (6,'Die Winde des Winters');
-- Game of Thrones, Staffel 7
INSERT INTO `episode` (`season_id`,`name`) VALUES (7,'Drachenstein');
INSERT INTO `episode` (`season_id`,`name`) VALUES (7,'Sturmtochter');
INSERT INTO `episode` (`season_id`,`name`) VALUES (7,'Die Gerechtigkeit der Königin');
INSERT INTO `episode` (`season_id`,`name`) VALUES (7,'Kriegsbeute');
INSERT INTO `episode` (`season_id`,`name`) VALUES (7,'Ostwacht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (7,'Jenseits der Mauer');
INSERT INTO `episode` (`season_id`,`name`) VALUES (7,'Der Drache und der Wolf');
-- Game of Thrones, Staffel 8
INSERT INTO `episode` (`season_id`,`name`) VALUES (8,'Winterfell');
INSERT INTO `episode` (`season_id`,`name`) VALUES (8,'Ein Ritter der sieben Königslande');
INSERT INTO `episode` (`season_id`,`name`) VALUES (8,'Die Lange Nacht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (8,'Die Letzten der Starks');
INSERT INTO `episode` (`season_id`,`name`) VALUES (8,'Die Glocken');
INSERT INTO `episode` (`season_id`,`name`) VALUES (8,'Der Eiserne Thron');
-- Blindspot, Staffel 1-4
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Wer ist Jane Doe?');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Die Farben im Nacken');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Vertraue niemandem');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Zweifel');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Radioaktiv');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Die Eule');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Saul Guerrero');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Daylight');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Rich Dotcom');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Die Mission');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Flug PA 921');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'ZIP');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Verdächtigungen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Nur 36 Stunden');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Die brennende Rose');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Alte Liebe');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Schatzsuche');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Meisterdiebe');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Vier Blickwinkel');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Gezeichnet');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Eingeschlossen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Phase Eins');
INSERT INTO `episode` (`season_id`,`name`) VALUES (9,'Phönix aus der Asche');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Sandsturm');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Eine Art Familie');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Killerinstinkt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Aurora');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Hinterhalt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Der Whistleblower');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Auf der sicheren Seite');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Spurlos verschwunden');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Phase zwei');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Gefangen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Der Leopard');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Kalkuliertes Risiko');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Shepherd');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Dädalus');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Bewährungsprobe');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Abgehängt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Magnus Steele');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Angeschlagen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Bangkok');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Vertrauensbruch');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Der Durchbruch');
INSERT INTO `episode` (`season_id`,`name`) VALUES (10,'Janes Entscheidung');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Alles auf Anfang');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Verunsichert');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Die drei blinden Mäuse');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Moskito');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Beweisstücke');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Und Action!');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Van Gogh');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Die Ausstiegsstrategie');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Am Boden zerstört');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'In der Falle');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Ausgesperrt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Puzzleteile');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'In falschen Händen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Unendlich');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Hintergangen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Dragonfly164');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Die Schlange');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Diskret und tödlich');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Vertrauter Feind');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Charon');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Der nächste Zug');
INSERT INTO `episode` (`season_id`,`name`) VALUES (11,'Alles oder nichts');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Allein');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Die Weltkarte');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Das Michelangelo-Tattoo');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Isolation');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Die Macht der Schatten');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Der Wolf und die Schlange');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'In guten und in schlechten Zeiten');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Auf Abwegen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Jane oder Remi');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Hoffnungsschimmer');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Das Manuskript');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Patterson Jones');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Del Toro');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Romulus und Remus');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Mission: Impossible');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Der schlimmste Feind');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Der Deal');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Familie');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Dämonen der Vergangenheit');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Rache!');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Helios');
INSERT INTO `episode` (`season_id`,`name`) VALUES (12,'Unter Druck');
-- Mr. Robot, Staffel 1-3
INSERT INTO `episode` (`season_id`,`name`) VALUES (13,'Hellofriend.mov');
INSERT INTO `episode` (`season_id`,`name`) VALUES (13,'Ones-and-zer0es.mpeg');
INSERT INTO `episode` (`season_id`,`name`) VALUES (13,'D3bug.mkv');
INSERT INTO `episode` (`season_id`,`name`) VALUES (13,'Da3m0ns.mp4');
INSERT INTO `episode` (`season_id`,`name`) VALUES (13,'3xpl0its.wmv');
INSERT INTO `episode` (`season_id`,`name`) VALUES (13,'Br4ve-trave1er.asf');
INSERT INTO `episode` (`season_id`,`name`) VALUES (13,'V1ew-s0urce.flv');
INSERT INTO `episode` (`season_id`,`name`) VALUES (13,'Wh1ter0se.m4v');
INSERT INTO `episode` (`season_id`,`name`) VALUES (13,'M1rr0r1ng.qt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (13,'Zer0-day.avi');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'unm4sk-pt1.tc');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'unm4sk-pt2.tc');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'k3rnel-pan1c.ksd');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'init1.asec');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'logic-b0mb.hc');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'m4ster-s1ave.aes');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'h4ndshake.sme');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'succ3ss0r.p12');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'init5.fve');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'h1dden-pr0cess.axx');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'pyth0n-pt1.p7z');
INSERT INTO `episode` (`season_id`,`name`) VALUES (14,'pyth0n-pt2.p7z');
INSERT INTO `episode` (`season_id`,`name`) VALUES (15,'power-saver-mode.h');
INSERT INTO `episode` (`season_id`,`name`) VALUES (15,'undo.gz');
INSERT INTO `episode` (`season_id`,`name`) VALUES (15,'legacy.so');
INSERT INTO `episode` (`season_id`,`name`) VALUES (15,'metadata.par2');
INSERT INTO `episode` (`season_id`,`name`) VALUES (15,'runtime-err0r.r00');
INSERT INTO `episode` (`season_id`,`name`) VALUES (15,'kill-process.inc');
INSERT INTO `episode` (`season_id`,`name`) VALUES (15,'fredrick+tanya.chk');
INSERT INTO `episode` (`season_id`,`name`) VALUES (15,'dont-delete-me.ko');
INSERT INTO `episode` (`season_id`,`name`) VALUES (15,'stage3.torrent');
INSERT INTO `episode` (`season_id`,`name`) VALUES (15,'shutdown -r');
-- Outlander, Staffel 1-4
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Sassenach');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Burg Leoch');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Der Weg zurück');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Die Jagd');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Tribut');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Black Jack');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Die Hochzeit');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Im Steinkreis');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Die Abrechnung');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Tödliche Intrige');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Hexenprozess');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Lallybroch');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Die Wacht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Die Suche');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Im Kerker');
INSERT INTO `episode` (`season_id`,`name`) VALUES (16,'Erlösung');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Reise ins Ungewisse');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Fern der Heimat Schottland');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Täuschungen und Rätsel');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'La Dame Blanche');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Neues Bündnis, alte Feinde');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Das Versprechen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Der Preis der Freiheit');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Im Fuchsbau');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Bereit zum Kampf');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Schlachtplan');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Rache');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Schmerz');
INSERT INTO `episode` (`season_id`,`name`) VALUES (17,'Die geliehene Zeit');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Nach der Schlacht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Sechs Jahre');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Ehrenschuld');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Verlust');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Der Entschluss');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Die Rückkehr');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Die Seherin');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Die Forderung');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Die Flaute');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Der Köder');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Die Zuflucht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Die Bakra');
INSERT INTO `episode` (`season_id`,`name`) VALUES (18,'Im Auge des Sturms');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Die neue Welt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Versklavt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Die falsche Braut');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Geteiltes Land');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Flüchtiges Glück');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Blutsbande');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Hartes Regiment');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Wilmington');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Familie');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Getrennte Wege');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Spannungen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Flucht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (19,'Ein Mann der Ehre');
-- The Witcher, Staffel 1
INSERT INTO `episode` (`season_id`,`name`) VALUES (20,'Des Endes Anfang');
INSERT INTO `episode` (`season_id`,`name`) VALUES (20,'Vier Mark');
INSERT INTO `episode` (`season_id`,`name`) VALUES (20,'Verrätermond');
INSERT INTO `episode` (`season_id`,`name`) VALUES (20,'Bankette, Bastarde und Begräbnisse');
INSERT INTO `episode` (`season_id`,`name`) VALUES (20,'Aufgestaute Begehren');
INSERT INTO `episode` (`season_id`,`name`) VALUES (20,'Seltene Arten');
INSERT INTO `episode` (`season_id`,`name`) VALUES (20,'Vor dem Fall');
INSERT INTO `episode` (`season_id`,`name`) VALUES (20,'Viel mehr');
-- The Walking Dead, Staffel 1 - 10
INSERT INTO `episode` (`season_id`,`name`) VALUES (21,'Gute alte Zeit');
INSERT INTO `episode` (`season_id`,`name`) VALUES (21,'Gefangene der Toten');
INSERT INTO `episode` (`season_id`,`name`) VALUES (21,'Tag der Frösche');
INSERT INTO `episode` (`season_id`,`name`) VALUES (21,'Vatos');
INSERT INTO `episode` (`season_id`,`name`) VALUES (21,'Tag 194');
INSERT INTO `episode` (`season_id`,`name`) VALUES (21,'Nichts mehr');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Zukunft im Rückspiegel');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Blutsbande');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Die letzte Kugel');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Die Cherokee Rose');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Chupacabra');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Beichten');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Tot oder lebendig');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Nebraska');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Am Abzug');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Ausgesetzt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Sorry, Bruder!');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Die besseren Engel unserer Natur');
INSERT INTO `episode` (`season_id`,`name`) VALUES (22,'Die Mahd');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Die Saat');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Rosskur');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Zeit der Ernte');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Leben und Tod');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Anruf');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Auf der Jagd');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Tod vor der Tür');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Siehe, Dein Bruder');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Kriegsrecht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Zuflucht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Judas');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Gesichter der Toten');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Das Ultimatum');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Der Fang');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Der Strick des Jägers');
INSERT INTO `episode` (`season_id`,`name`) VALUES (23,'Stirb und töte');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Kein Tag ohne Unglück');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Tod, überall Tod');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Quarantäne');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Im Zweifel');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Die Krankheit zum Tode');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Lebendköder');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Handicap');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Kein Zurück');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Für Dich');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Neben dem Gleis');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Besetzt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Alkohol');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Allein');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Schonung');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Vereint');
INSERT INTO `episode` (`season_id`,`name`) VALUES (24,'Terminus');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Keine Zuflucht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Gabriel');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Vier Wände und ein Dach');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Slabtown');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Selbsthilfe');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Verschwunden');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Zug um Zug');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Coda');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Der hohe Preis fürs Leben');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Lebende Tote');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Akrasia');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Erinnerung');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Vergessen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Falsches Licht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Helfer');
INSERT INTO `episode` (`season_id`,`name`) VALUES (25,'Herrsche');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Herdentrieb');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Kämpfer');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Danke');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Hier ist nicht hier');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Hier und Jetzt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Wer die Wahl hat');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Die Wand');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Nicht das Ende');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'In der Falle');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Die neue Welt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Lösung');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Die Nacht vor dem Morgen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Im selben Boot');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Keine Gleise');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Nach Osten');
INSERT INTO `episode` (`season_id`,`name`) VALUES (26,'Der letzte Tag auf Erden');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Der Tag wird kommen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Der Brunnen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Die Zelle');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Fron');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Draufgänger');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Der Schwur');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Sing mir ein Lied');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Unsere Herzen schlagen noch');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Der Stein in der Straße');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Neue beste Freunde');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Wir sind Negan');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Sag Ja');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Begrabt mich hier');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Auf die andere Seite');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Was wir brauchen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (27,'Heute beginnt der Rest des Lebens');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Erster Kampf');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Die Verdammten');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Wir oder Die');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Nur irgendwer');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Die Beichte');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Der König, die Witwe und Rick');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Für Danach');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Kampf um die Zukunft');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Ehre');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Botschaften');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Flucht nach Hilltop');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Der Schlüssel zur Zukunft');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Der Weg der Toten');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Ich sterbe nicht');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Die rechte Hand');
INSERT INTO `episode` (`season_id`,`name`) VALUES (28,'Zorn');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Ein neuer Anfang');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Die Brücke');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Keine Ausnahmen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Hungerstreik');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Wach auf');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Die Welt dreht sich weiter');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Stradivarius');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Geflüster');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Home Sweet Home');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Lydia');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Damit leben');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Anführer');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Engpass');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Narben');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Die Ruhe davor');
INSERT INTO `episode` (`season_id`,`name`) VALUES (29,'Der Sturm');
INSERT INTO `episode` (`season_id`,`name`) VALUES (30,'Überschrittene Grenzen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (30,'Wir sind das Ende der Welt');
INSERT INTO `episode` (`season_id`,`name`) VALUES (30,'Geister');
INSERT INTO `episode` (`season_id`,`name`) VALUES (30,'Masken');
INSERT INTO `episode` (`season_id`,`name`) VALUES (30,'Diebstahl und Lügen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (30,'Neue Verbindungen');
INSERT INTO `episode` (`season_id`,`name`) VALUES (30,'Mach die Augen auf');
INSERT INTO `episode` (`season_id`,`name`) VALUES (30,'Nichts ist wie zuvor');


