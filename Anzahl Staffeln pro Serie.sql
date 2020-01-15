-- Zeigt die Anzahl der Staffeln (Seasons) pro Serie
--
SELECT 
    SerialSeries.serie.id,
    SerialSeries.serie.titel AS Serie,
    MAX(SerialSeries.season.seasonNr) AS 'Anzahl Staffeln'
FROM
    SerialSeries.serie,
    SerialSeries.season
WHERE
    SerialSeries.serie.id = SerialSeries.season.serie_id
GROUP BY SerialSeries.serie.titel , SerialSeries.serie.id
ORDER BY SerialSeries.serie.id
;