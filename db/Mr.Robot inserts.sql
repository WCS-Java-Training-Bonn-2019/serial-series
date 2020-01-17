-- 'Staffel','Nummer','Deutscher Titel');
-- Daten erzeugen
--
-- Da die id's alle AutoIncrement sind, hier keine Eingabe notwendig :-)
--

USE SerialSeries;

-- Serie:
-- Mr. Robot 
-- Index (id) = 3

INSERT INTO `serie` (`titel`) VALUES ('Mr. Robot');
-- 3 Staffeln
-- Index (season_id) = 13 - 15
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (3,1,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (3,2,NULL);
INSERT INTO `season` (`serie_id`,`seasonNr`,`titel`) VALUES (3,3,NULL);


-- Episoden
-- Staffel 1
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (13,1,'Hellofriend.mov');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (13,2,'Ones-and-zer0es.mpeg');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (13,3,'D3bug.mkv');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (13,4,'Da3m0ns.mp4');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (13,5,'3xpl0its.wmv');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (13,6,'Br4ve-trave1er.asf');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (13,7,'V1ew-s0urce.flv');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (13,8,'Wh1ter0se.m4v');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (13,9,'M1rr0r1ng.qt');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (13,10,'Zer0-day.avi');
-- Staffel 2
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,1,'unm4sk-pt1.tc');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,2,'unm4sk-pt2.tc');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,3,'k3rnel-pan1c.ksd');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,4,'init1.asec');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,5,'logic-b0mb.hc');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,6,'m4ster-s1ave.aes');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,7,'h4ndshake.sme');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,8,'succ3ss0r.p12');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,9,'init5.fve');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,10,'h1dden-pr0cess.axx');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,11,'pyth0n-pt1.p7z');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (14,12,'pyth0n-pt2.p7z');
-- Staffel 3
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (15,1,'power-saver-mode.h');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (15,2,'undo.gz');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (15,3,'legacy.so');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (15,4,'metadata.par2');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (15,5,'runtime-err0r.r00');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (15,6,'kill-process.inc');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (15,7,'fredrick+tanya.chk');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (15,8,'dont-delete-me.ko');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (15,9,'stage3.torrent');
INSERT INTO `episode` (`season_id`,`episodeNr`,`title`) VALUES (15,10,'shutdown -r');
-- Ende Mr. Robot

