SELECT
	goals.id,
	goal_time,
	name
FROM
	goals
	INNER JOIN players ON goals.player_id = players.id;