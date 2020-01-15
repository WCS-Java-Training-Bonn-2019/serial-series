-- Zeigt alle gesehenen oder gewünschten Episoden pro User
--
SELECT 
    u.name AS 'User',
    ser.titel AS 'Serie',
    sea.seasonNr AS 'Staffel',
    e.episodeNr AS 'Episode',
    e.title AS 'Titel',
    uhs.seen,
    uhs.wanna_c
FROM
    SerialSeries.user_has_seen_episode AS uhs
        JOIN
    SerialSeries.episode AS e ON uhs.episode_id = e.id
        JOIN
    SerialSeries.user AS u ON uhs.user_id = u.id
        JOIN
    SerialSeries.season AS sea ON e.season_id = sea.id
        JOIN
    SerialSeries.serie AS ser ON sea.serie_id = ser.id
ORDER BY u.name , ser.titel , sea.seasonNr , e.episodeNr
;