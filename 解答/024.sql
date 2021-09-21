SELECT
	name,
	height,
	weight
FROM (
	SELECT
		name,
		height,
		weight,
		ROW_NUMBER() OVER (ORDER BY height DESC) AS record_num
	FROM
		players
	) A
WHERE
	record_num BETWEEN 6 AND 20;