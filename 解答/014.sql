SELECT
	p.kickoff,
	c1.name AS my_country,
	c2.name AS enemy_country,
	c1.ranking AS my_ranking,
	c2.ranking AS enemy_ranking,
	COUNT(g.id) AS my_goals
FROM
	pairings p
	LEFT JOIN countries c1 ON p.my_country_id = c1.id
	LEFT JOIN countries c2 ON p.enemy_country_id = c2.id
	LEFT JOIN goals g ON p.id = g.pairing_id
WHERE
	c1.group_name = 'C' AND c2.group_name = 'C'
GROUP BY
	p.id, p.kickoff, c1.name, c2.name, c1.ranking, c2.ranking
ORDER BY
	p.kickoff, c1.ranking;