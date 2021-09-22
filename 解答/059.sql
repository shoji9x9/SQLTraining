SELECT
	c.name AS country_name,
	p.name AS name,
	g.goal_time
FROM
	goals g
	INNER JOIN players p ON g.player_id = p.id
	LEFT JOIN countries c ON p.country_id = c.id