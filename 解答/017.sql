SELECT
	p.kickoff,
	c1.name AS my_country,
	c2.name AS enemy_country,
	c1.ranking AS my_ranking,
	c2.ranking AS enemy_ranking,
	(SELECT COUNT(g.id) FROM goals g WHERE p.id = g.pairing_id) AS my_goals,
	(SELECT COUNT(g.id) FROM goals g WHERE p2.id = g.pairing_id) AS enemy_goals,
	(SELECT COUNT(g.id) FROM goals g WHERE p.id = g.pairing_id) - (SELECT COUNT(g.id) FROM goals g WHERE p2.id = g.pairing_id) AS goals_diff
FROM
	pairings p
	LEFT JOIN countries c1 ON p.my_country_id = c1.id
	LEFT JOIN countries c2 ON p.enemy_country_id = c2.id
	LEFT JOIN pairings p2 ON
		p.kickoff = p2.kickoff AND
		p.my_country_id = p2.enemy_country_id AND
		p.enemy_country_id = p2.my_country_id
WHERE
	c1.group_name = 'C' AND c2.group_name = 'C'
ORDER BY
	p.kickoff, c1.ranking;

--別解
SELECT kickoff, my_country, enemy_country, my_ranking, enemy_ranking, my_goals, enemy_goals, my_goals - enemy_goals AS goals_diff
FROM (
	SELECT
		p.kickoff AS kickoff,
		c1.name AS my_country,
		c2.name AS enemy_country,
		c1.ranking AS my_ranking,
		c2.ranking AS enemy_ranking,
		(SELECT COUNT(g.id) FROM goals g WHERE p.id = g.pairing_id) AS my_goals,
		(SELECT COUNT(g.id) FROM goals g WHERE p2.id = g.pairing_id) AS enemy_goals
	FROM
		pairings p
		LEFT JOIN countries c1 ON p.my_country_id = c1.id
		LEFT JOIN countries c2 ON p.enemy_country_id = c2.id
		LEFT JOIN pairings p2 ON
			p.kickoff = p2.kickoff AND
			p.my_country_id = p2.enemy_country_id AND
			p.enemy_country_id = p2.my_country_id
	WHERE
		c1.group_name = 'C' AND c2.group_name = 'C'
) A
ORDER BY
	kickoff, my_ranking