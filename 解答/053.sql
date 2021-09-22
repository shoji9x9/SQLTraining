SELECT
	COUNT(g.id) AS '日本のゴール数'
FROM
	goals g
	LEFT JOIN players p ON g.player_id = p.id
	LEFT JOIN countries c ON p.country_id = c.id
WHERE
	c.name = N'日本';