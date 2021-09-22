SELECT
	p.kickoff,
	c1.name AS my_country,
	c2.name AS enemy_country
FROM
	pairings p
	LEFT JOIN countries c1 ON p.my_country_id = c1.id
	LEFT JOIN countries c2 ON p.enemy_country_id = c2.id;