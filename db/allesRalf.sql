SELECT 
    *
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
WHERE
    uhs.user_id = 3
;