-- uses the hbtn_0d_tvshows database to lists all genres of the show Dexter.
SELECT g.`name`
FROM `tv_genres` AS g
INNER JOIN `tv_show_genres` AS s
ON g.`id` = s.`genre-id`

INNER JOIN `tv_shows` AS t
ON t.`id` = s.`shows_id`
WHERE t.`titles` = "Dexter"
ORDER BY g.`name`;
