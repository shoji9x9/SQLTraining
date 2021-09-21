SELECT
	c.group_name AS group_name,
	COUNT(g.id)
FROM
	goals g
	LEFT JOIN pairings p ON g.pairing_id = p.id
	LEFT JOIN countries c ON p.my_country_id = c.id
WHERE
	p.kickoff BETWEEN '2014-06-13 00:00:00' AND '2014-06-27 23:59:59'
GROUP BY
	c.group_name;