-- Zeigt die Anzahl der Episoden pro Staffel einer bestimmten Serie
--
SELECT 
    ser.titel AS Serie,
    sea.seasonNr AS 'Staffel Nr.',
    MAX(ep.episodeNr) AS 'Anzahl Folgen'
FROM
    SerialSeries.serie AS ser
        JOIN
    SerialSeries.season AS sea ON sea.serie_id = ser.id
        JOIN
    SerialSeries.episode AS ep ON ep.season_id = sea.id
WHERE
    ser.titel = 'Outlander'
    -- ser.id = 4
GROUP BY sea.seasonNr
ORDER BY sea.seasonNr
;