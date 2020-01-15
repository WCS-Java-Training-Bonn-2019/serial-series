-- Daten erzeugen
--
-- Da die id's alle AutoIncrement sind, hier keine Eingabe notwendig :-)
--

USE SerialSeries;
-- Serie:
-- Game of Thrones,
-- Index (id) = 1
INSERT INTO `serie` (`titel`) VALUES ('Game of Thrones');
-- 8 Staffeln
-- Index (season_id) = 1 - 8
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (1,1,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (1,2,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (1,3,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (1,4,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (1,5,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (1,6,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (1,7,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (1,8,NULL);
-- Episoden
-- Staffel 1
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (1,1,'Der Winter naht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (1,2,'Der Königsweg');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (1,3,'Lord Schnee');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (1,4,'Krüppel, Bastarde und Zerbrochenes');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (1,5,'Der Wolf und der Löwe');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (1,6,'Eine goldene Krone');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (1,7,'Gewinn oder stirb');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (1,8,'Das spitze Ende');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (1,9,'Baelor');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (1,10,'Feuer und Blut');
-- Staffel 2
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (2,1,'Der Norden vergisst nicht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (2,2,'Die Nachtlande');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (2,3,'Was tot ist, kann niemals sterben');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (2,4,'Der Garten der Knochen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (2,5,'Der Geist von Harrenhal');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (2,6,'Alte und neue Götter');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (2,7,'Ein Mann ohne Ehre');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (2,8,'Der Prinz von Winterfell');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (2,9,'Schwarzwasser');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (2,10,'Valar Morghulis');
-- Staffel 3
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (3,1,'Valar Dohaeris');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (3,2,'Dunkle Schwingen, Dunkle Worte');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (3,3,'Der Weg der Züchtigung');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (3,4,'Und jetzt ist seine Wache zu Ende');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (3,5,'Vom Feuer geküsst');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (3,6,'Der Aufstieg');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (3,7,'Der Bär und die Jungfrau Hehr');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (3,8,'Die Zweitgeborenen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (3,9,'Der Regen von Castamere');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (3,10,'Mhysa');
-- Staffel 4
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (4,1,'Zwei Schwerter');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (4,2,'Der Löwe und die Rose');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (4,3,'Sprengerin der Ketten');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (4,4,'Eidwahrer');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (4,5,'Der Erste seines Namens');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (4,6,'Die Gesetze von Göttern und Menschen);');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (4,7,'Die Spottdrossel');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (4,8,'Der Berg und die Viper');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (4,9,'Die Wächter auf der Mauer');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (4,10,'Die Kinder');
-- Staffel 5
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (5,1,'Die Kriege, die da kommen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (5,2,'Das Haus von Schwarz und Weiß');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (5,3,'Der Hohe Spatz');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (5,4,'Die Söhne der Harpyie');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (5,5,'Töte den Jungen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (5,6,'Ungebeugt, Ungezähmt, Ungebrochen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (5,7,'Das Geschenk');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (5,8,'Hartheim');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (5,9,'Der Tanz der Drachen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (5,10,'Die Gnade der Mutter');
-- Staffel 6
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (6,1,'Die Rote Frau');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (6,2,'Zuhause');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (6,3,'Eidbrecher');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (6,4,'Das Buch des Fremden');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (6,5,'Das Tor');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (6,6,'Blut von meinem Blut');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (6,7,'Der Gebrochene');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (6,8,'Niemand');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (6,9,'Die Schlacht der Bastarde');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (6,10,'Die Winde des Winters');
-- Staffel 7
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (7,1,'Drachenstein');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (7,2,'Sturmtochter');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (7,3,'Die Gerechtigkeit der Königin');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (7,4,'Kriegsbeute');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (7,5,'Ostwacht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (7,6,'Jenseits der Mauer');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (7,7,'Der Drache und der Wolf');
-- finale Staffel 8
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (8,1,'Winterfell');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (8,2,'Ein Ritter der sieben Königslande');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (8,3,'Die Lange Nacht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (8,4,'Die Letzten der Starks');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (8,5,'Die Glocken');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (8,6,'Der Eiserne Thron');
-- Ende Game of Thrones



