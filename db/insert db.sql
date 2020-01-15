-- Daten erzeugen
--
-- ACHTUNG!
-- id's sind bereits vergeben!!!
--

USE SerialSeries;
/*

INSERT INTO `serie` (`id`,`titel`) VALUES (1,'Game of Thrones');

INSERT INTO `season` (`serie_id`,`id`,`seasonNr`,`titel`) VALUES (1,1,1,NULL);
INSERT INTO `season` (`serie_id`,`id`,`seasonNr`,`titel`) VALUES (1,2,2,NULL);
INSERT INTO `season` (`serie_id`,`id`,`seasonNr`,`titel`) VALUES (1,3,3,NULL);
INSERT INTO `season` (`serie_id`,`id`,`seasonNr`,`titel`) VALUES (1,4,4,NULL);
INSERT INTO `season` (`serie_id`,`id`,`seasonNr`,`titel`) VALUES (1,5,5,NULL);
INSERT INTO `season` (`serie_id`,`id`,`seasonNr`,`titel`) VALUES (1,6,6,NULL);
INSERT INTO `season` (`serie_id`,`id`,`seasonNr`,`titel`) VALUES (1,7,7,NULL);
INSERT INTO `season` (`serie_id`,`id`,`seasonNr`,`titel`) VALUES (1,8,8,NULL);

INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (1,1,1,'Der Winter naht');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (2,1,2,'Der Königsweg');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (3,1,3,'Lord Schnee');

*/
/*
-- Reste aus Staffel 1
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (4,1,4,'Krüppel, Bastarde und Zerbrochenes');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (5,1,5,'Der Wolf und der Löwe');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (6,1,6,'Eine goldene Krone');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (7,1,7,'Gewinn oder stirb');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (8,1,8,'Das spitze Ende');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (9,1,9,'Baelor');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (10,1,10,'Feuer und Blut');
-- Staffel 2
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (11,2,1,'Der Norden vergisst nicht');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (12,2,2,'Die Nachtlande');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (13,2,3,'Was tot ist, kann niemals sterben');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (14,2,4,'Der Garten der Knochen');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (15,2,5,'Der Geist von Harrenhal');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (16,2,6,'Alte und neue Götter');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (17,2,7,'Ein Mann ohne Ehre');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (18,2,8,'Der Prinz von Winterfell');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (19,2,9,'Schwarzwasser');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (20,2,10,'Valar Morghulis');
-- Staffel 3
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (21,3,1,'Valar Dohaeris');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (22,3,2,'Dunkle Schwingen, Dunkle Worte');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (23,3,3,'Der Weg der Züchtigung');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (24,3,4,'Und jetzt ist seine Wache zu Ende');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (25,3,5,'Vom Feuer geküsst');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (26,3,6,'Der Aufstieg');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (27,3,7,'Der Bär und die Jungfrau Hehr');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (28,3,8,'Die Zweitgeborenen');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (29,3,9,'Der Regen von Castamere');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (30,3,10,'Mhysa');
-- Staffel 4
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (31,4,1,'Zwei Schwerter');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (32,4,2,'Der Löwe und die Rose');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (33,4,3,'Sprengerin der Ketten');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (34,4,4,'Eidwahrer');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (35,4,5,'Der Erste seines Namens');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (36,4,6,'Die Gesetze von Göttern und Menschen);');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (37,4,7,'Die Spottdrossel');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (38,4,8,'Der Berg und die Viper');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (39,4,9,'Die Wächter auf der Mauer');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (40,4,10,'Die Kinder');
-- Staffel 5
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (41,5,1,'Die Kriege, die da kommen');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (42,5,2,'Das Haus von Schwarz und Weiß');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (43,5,3,'Der Hohe Spatz');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (44,5,4,'Die Söhne der Harpyie');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (45,5,5,'Töte den Jungen');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (46,5,6,'Ungebeugt, Ungezähmt, Ungebrochen');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (47,5,7,'Das Geschenk');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (48,5,8,'Hartheim');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (49,5,9,'Der Tanz der Drachen');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (50,5,10,'Die Gnade der Mutter');
-- Staffel 6
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (51,6,1,'Die Rote Frau');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (52,6,2,'Zuhause');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (53,6,3,'Eidbrecher');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (54,6,4,'Das Buch des Fremden');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (55,6,5,'Das Tor');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (56,6,6,'Blut von meinem Blut');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (57,6,7,'Der Gebrochene');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (58,6,8,'Niemand');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (59,6,9,'Die Schlacht der Bastarde');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (60,6,10,'Die Winde des Winters');
-- Staffel 7
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (61,7,1,'Drachenstein');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (62,7,2,'Sturmtochter');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (63,7,3,'Die Gerechtigkeit der Königin');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (64,7,4,'Kriegsbeute');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (65,7,5,'Ostwacht');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (66,7,6,'Jenseits der Mauer');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (67,7,7,'Der Drache und der Wolf');
-- finale Staffel 8
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (68,8,1,'Winterfell');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (69,8,2,'Ein Ritter der sieben Königslande');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (70,8,3,'Die Lange Nacht');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (71,8,4,'Die Letzten der Starks');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (72,8,5,'Die Glocken');
INSERT INTO `episode` (`id`,`season_id`,`episodeNr`,`title`) VALUES (73,8,6,'Der Eiserne Thron');
-- Ende Game of Thrones

*/



