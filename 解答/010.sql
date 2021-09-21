SELECT
	COUNT(goals.id)
FROM
	goals
WHERE
	player_id IS NULL;