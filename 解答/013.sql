SELECT
	c.name AS name,
	COUNT(g.id)
FROM
	goals g
	LEFT JOIN pairings p ON g.pairing_id = p.id
	LEFT JOIN countries c ON p.my_country_id = c.id
WHERE
	g.pairing_id = 39 OR g.pairing_id = 103
GROUP BY
	c.id, c.name;