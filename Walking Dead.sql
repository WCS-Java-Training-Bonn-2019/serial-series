-- 'Staffel','Nummer','Deutscher Titel');
-- Daten erzeugen
--
-- Da die id's alle AutoIncrement sind, hier keine Eingabe notwendig :-)
--

USE SerialSeries;

-- Serie:
-- The Walking Dead 
-- Index (id) = 6
INSERT INTO `serie` (`titel`) VALUES ('The Walking Dead');
-- 10 Staffeln
-- Index (season_id) = 21 - 30
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (6,1,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (6,2,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (6,3,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (6,4,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (6,5,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (6,6,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (6,7,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (6,8,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (6,9,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (6,10,NULL);

-- Episoden
-- Staffel 1
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (21,1,'Gute alte Zeit');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (21,2,'Gefangene der Toten');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (21,3,'Tag der Frösche');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (21,4,'Vatos');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (21,5,'Tag 194');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (21,6,'Nichts mehr');
-- Staffel 2
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,1,'Zukunft im Rückspiegel');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,2,'Blutsbande');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,3,'Die letzte Kugel');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,4,'Die Cherokee Rose');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,5,'Chupacabra');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,6,'Beichten');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,7,'Tot oder lebendig');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,8,'Nebraska');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,9,'Am Abzug');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,10,'Ausgesetzt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,11,'Sorry, Bruder!');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,12,'Die besseren Engel unserer Natur');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (22,13,'Die Mahd');
-- Staffel 3
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,1,'Die Saat');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,2,'Rosskur');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,3,'Zeit der Ernte');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,4,'Leben und Tod');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,5,'Anruf');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,6,'Auf der Jagd');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,7,'Tod vor der Tür');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,8,'Siehe, Dein Bruder');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,9,'Kriegsrecht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,10,'Zuflucht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,11,'Judas');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,12,'Gesichter der Toten');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,13,'Das Ultimatum');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,14,'Der Fang');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,15,'Der Strick des Jägers');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (23,16,'Stirb und töte');
-- Staffel 4
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,1,'Kein Tag ohne Unglück');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,2,'Tod, überall Tod');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,3,'Quarantäne');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,4,'Im Zweifel');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,5,'Die Krankheit zum Tode');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,6,'Lebendköder');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,7,'Handicap');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,8,'Kein Zurück');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,9,'Für Dich');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,10,'Neben dem Gleis');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,11,'Besetzt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,12,'Alkohol');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,13,'Allein');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,14,'Schonung');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,15,'Vereint');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (24,16,'Terminus');
-- Staffel 5
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,1,'Keine Zuflucht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,2,'Gabriel');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,3,'Vier Wände und ein Dach');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,4,'Slabtown');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,5,'Selbsthilfe');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,6,'Verschwunden');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,7,'Zug um Zug');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,8,'Coda');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,9,'Der hohe Preis fürs Leben');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,10,'Lebende Tote');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,11,'Akrasia');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,12,'Erinnerung');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,13,'Vergessen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,14,'Falsches Licht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,15,'Helfer');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (25,16,'Herrsche');
-- Staffel 6
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,1,'Herdentrieb');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,2,'Kämpfer');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,3,'Danke');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,4,'Hier ist nicht hier');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,5,'Hier und Jetzt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,6,'Wer die Wahl hat');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,7,'Die Wand');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,8,'Nicht das Ende');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,9,'In der Falle');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,10,'Die neue Welt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,11,'Lösung');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,12,'Die Nacht vor dem Morgen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,13,'Im selben Boot');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,14,'Keine Gleise');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,15,'Nach Osten');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (26,16,'Der letzte Tag auf Erden');
-- Staffel 7
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,1,'Der Tag wird kommen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,2,'Der Brunnen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,3,'Die Zelle');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,4,'Fron');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,5,'Draufgänger');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,6,'Der Schwur');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,7,'Sing mir ein Lied');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,8,'Unsere Herzen schlagen noch');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,9,'Der Stein in der Straße');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,10,'Neue beste Freunde');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,11,'Wir sind Negan');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,12,'Sag Ja');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,13,'Begrabt mich hier');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,14,'Auf die andere Seite');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,15,'Was wir brauchen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (27,16,'Heute beginnt der Rest des Lebens');
-- Staffel 8
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,1,'Erster Kampf');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,2,'Die Verdammten');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,3,'Wir oder Die');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,4,'Nur irgendwer');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,5,'Die Beichte');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,6,'Der König, die Witwe und Rick');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,7,'Für Danach');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,8,'Kampf um die Zukunft');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,9,'Ehre');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,10,'Botschaften');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,11,'Flucht nach Hilltop');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,12,'Der Schlüssel zur Zukunft');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,13,'Der Weg der Toten');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,14,'Ich sterbe nicht');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,15,'Die rechte Hand');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (28,16,'Zorn');
-- Staffel 9
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,1,'Ein neuer Anfang');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,2,'Die Brücke');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,3,'Keine Ausnahmen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,4,'Hungerstreik');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,5,'Wach auf');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,6,'Die Welt dreht sich weiter');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,7,'Stradivarius');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,8,'Geflüster');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,9,'Home Sweet Home');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,10,'Lydia');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,11,'Damit leben');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,12,'Anführer');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,13,'Engpass');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,14,'Narben');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,15,'Die Ruhe davor');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (29,16,'Der Sturm');
-- Staffel 10
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (30,1,'Überschrittene Grenzen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (30,2,'Wir sind das Ende der Welt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (30,3,'Geister');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (30,4,'Masken');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (30,5,'Diebstahl und Lügen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (30,6,'Neue Verbindungen');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (30,7,'Mach die Augen auf');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (30,8,'Nichts ist wie zuvor');
-- Ende The Walking Dead

