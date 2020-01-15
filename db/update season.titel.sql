-- Staffel-Titel nicht leer lassen...
-- notfalls mit Serien-Titel belegen
--
UPDATE season
        JOIN
    serie ON season.serie_id = serie.id 
SET 
    season.titel = serie.titel
WHERE
    season.titel IS NULL
;