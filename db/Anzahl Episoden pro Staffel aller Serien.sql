-- Zeigt die Anzahl der Episoden pro Staffel aller Serien
--
SELECT 
    ser.id,
    ser.titel AS Serie,
    sea.seasonNr AS 'Staffel Nr.',
    MAX(ep.episodeNr) AS 'Anzahl Folgen'
FROM
    SerialSeries.serie AS ser
        JOIN
    SerialSeries.season AS sea ON sea.serie_id = ser.id
        JOIN
    SerialSeries.episode AS ep ON ep.season_id = sea.id
GROUP BY ser.id , ser.titel , sea.seasonNr
ORDER BY ser.id , sea.seasonNr
;