SELECT
	p1.position,
	p1.height,
	p1.name,
	p1.club
FROM
	players p1,
	(SELECT position, MAX(height) AS max_height FROM players GROUP BY position) p2
WHERE
	p1.position = p2.position
	AND p1.height >= p2.max_height;