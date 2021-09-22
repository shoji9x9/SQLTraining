SELECT
	g.goal_time,
	p.uniform_num,
	p.position,
	p.name
FROM
	goals g
	LEFT JOIN players p ON g.player_id = p.id;