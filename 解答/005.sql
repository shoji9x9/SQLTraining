SELECT 
	kickoff AS キックオフ日時,
	c1.name AS 国名1,
	c2.name AS 国名2
FROM
	pairings
	LEFT JOIN countries c1 ON my_country_id = c1.id
	LEFT JOIN countries c2 ON enemy_country_id = c2.id
ORDER BY
	kickoff