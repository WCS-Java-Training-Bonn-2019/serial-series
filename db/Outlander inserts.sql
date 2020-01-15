-- 'Staffel','Nummer','Deutscher Titel');
-- Daten erzeugen
--
-- Da die id's alle AutoIncrement sind, hier keine Eingabe notwendig :-)
--

USE SerialSeries;

-- Serie:
-- Outlander 
-- Index (id) = 4

INSERT INTO `serie` (`titel`) VALUES ('Outlander');
-- 4 Staffeln
-- Index (season_id) = 16 - 19
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (4,1,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (4,2,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (4,3,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (4,4,NULL);


-- Episoden
-- Staffel 1
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,1,'Sassenach');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,2,'Burg Leoch');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,3,'Der Weg zurück');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,4,'Die Jagd');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,5,'Tribut');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,6,'Black Jack');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,7,'Die Hochzeit');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,8,'Im Steinkreis');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,9,'Die Abrechnung');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,10,'Tödliche Intrige');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,11,'Hexenprozess');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,12,'Lallybroch');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,13,'Die Wacht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,14,'Die Suche');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,15,'Im Kerker');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (16,16,'Erlösung');
-- Staffel 2
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,1,'Reise ins Ungewisse');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,2,'Fern der Heimat Schottland');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,3,'Täuschungen und Rätsel');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,4,'La Dame Blanche');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,5,'Neues Bündnis, alte Feinde');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,6,'Das Versprechen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,7,'Der Preis der Freiheit');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,8,'Im Fuchsbau');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,9,'Bereit zum Kampf');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,10,'Schlachtplan');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,11,'Rache');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,12,'Schmerz');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (17,13,'Die geliehene Zeit');
-- Staffel 3
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,1,'Nach der Schlacht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,2,'Sechs Jahre');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,3,'Ehrenschuld');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,4,'Verlust');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,5,'Der Entschluss');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,6,'Die Rückkehr');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,7,'Die Seherin');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,8,'Die Forderung');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,9,'Die Flaute');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,10,'Der Köder');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,11,'Die Zuflucht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,12,'Die Bakra');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (18,13,'Im Auge des Sturms');
-- Staffel 4
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,1,'Die neue Welt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,2,'Versklavt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,3,'Die falsche Braut');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,4,'Geteiltes Land');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,5,'Flüchtiges Glück');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,6,'Blutsbande');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,7,'Hartes Regiment');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,8,'Wilmington');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,9,'Familie');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,10,'Getrennte Wege');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,11,'Spannungen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,12,'Flucht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (19,13,'Ein Mann der Ehre');

-- Ende Outlander

