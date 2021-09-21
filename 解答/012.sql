SELECT
	g.goal_time
FROM
	goals g
	LEFT JOIN players p ON g.player_id = p.id
	LEFT JOIN countries c ON p.country_id = c.id
WHERE
	g.pairing_id = 103
	AND c.name = N'コロンビア';