-- 'Staffel','Nummer','Deutscher Titel');
-- Daten erzeugen
--
-- Da die id's alle AutoIncrement sind, hier keine Eingabe notwendig :-)
--

USE SerialSeries;

-- Serie:
-- Blindspot 
-- Index (id) = 2
INSERT INTO `serie` (`titel`) VALUES ('Blindspot');
-- 4 Staffeln
-- Index (season_id) = 9 - 12
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (2,1,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (2,2,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (2,3,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (2,4,NULL);

-- Episoden
-- Staffel 1
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,1,'Wer ist Jane Doe?');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,2,'Die Farben im Nacken');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,3,'Vertraue niemandem');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,4,'Zweifel');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,5,'Radioaktiv');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,6,'Die Eule');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,7,'Saul Guerrero');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,8,'Daylight');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,9,'Rich Dotcom');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,10,'Die Mission');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,11,'Flug PA 921');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,12,'ZIP');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,13,'Verdächtigungen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,14,'Nur 36 Stunden');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,15,'Die brennende Rose');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,16,'Alte Liebe');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,17,'Schatzsuche');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,18,'Meisterdiebe');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,19,'Vier Blickwinkel');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,20,'Gezeichnet');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,21,'Eingeschlossen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,22,'Phase Eins');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (9,23,'Phönix aus der Asche');
-- Staffel 2
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,1,'Sandsturm');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,2,'Eine Art Familie');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,3,'Killerinstinkt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,4,'Aurora');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,5,'Hinterhalt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,6,'Der Whistleblower');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,7,'Auf der sicheren Seite');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,8,'Spurlos verschwunden');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,9,'Phase zwei');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,10,'Gefangen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,11,'Der Leopard');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,12,'Kalkuliertes Risiko');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,13,'Shepherd');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,14,'Dädalus');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,15,'Bewährungsprobe');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,16,'Abgehängt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,17,'Magnus Steele');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,18,'Angeschlagen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,19,'Bangkok');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,20,'Vertrauensbruch');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,21,'Der Durchbruch');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (10,22,'Janes Entscheidung');
-- Staffel 3
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,1,'Alles auf Anfang');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,2,'Verunsichert');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,3,'Die drei blinden Mäuse');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,4,'Moskito');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,5,'Beweisstücke');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,6,'Und Action!');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,7,'Van Gogh');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,8,'Die Ausstiegsstrategie');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,9,'Am Boden zerstört');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,10,'In der Falle');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,11,'Ausgesperrt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,12,'Puzzleteile');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,13,'In falschen Händen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,14,'Unendlich');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,15,'Hintergangen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,16,'Dragonfly164');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,17,'Die Schlange');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,18,'Diskret und tödlich');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,19,'Vertrauter Feind');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,20,'Charon');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,21,'Der nächste Zug');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (11,22,'Alles oder nichts');
-- Staffel 4
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,1,'Allein');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,2,'Die Weltkarte');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,3,'Das Michelangelo-Tattoo');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,4,'Isolation');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,5,'Die Macht der Schatten');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,6,'Der Wolf und die Schlange');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,7,'In guten und in schlechten Zeiten');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,8,'Auf Abwegen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,9,'Jane oder Remi');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,10,'Hoffnungsschimmer');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,11,'Das Manuskript');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,12,'Patterson Jones');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,13,'Del Toro');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,14,'Romulus und Remus');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,15,'Mission: Impossible');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,16,'Der schlimmste Feind');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,17,'Der Deal');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,18,'Familie');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,19,'Dämonen der Vergangenheit');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,20,'Rache!');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,21,'Helios');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (12,22,'Unter Druck');
-- Ende Blindspot
