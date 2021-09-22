SELECT
	(SELECT name FROM countries c WHERE p.country_id = c.id ) AS country_name,
	name,
	uniform_num
FROM
	players p