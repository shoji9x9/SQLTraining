SELECT
	kickoff,
	DATEADD(hour, -12, kickoff) AS kickoff_jp
FROM
	pairings
WHERE
	my_country_id = 1 AND enemy_country_id = 4;