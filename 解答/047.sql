SELECT
	id,
	country_id,
	uniform_num,
	SUBSTRING(position, 1, 1),
	name
FROM
	players;