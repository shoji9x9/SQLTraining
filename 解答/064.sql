SELECT
	id,
	goal_time,
	(SELECT name FROM players WHERE player_id = id) AS name
FROM
	goals
WHERE
	player_id IS NOT NULL;