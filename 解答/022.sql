SELECT
	age,
	position,
	COUNT(id) AS player_count,
	AVG(CAST(height AS DECIMAL(5, 2))) AS 'AVG(height)',
	AVG(CAST(weight AS DECIMAL(5, 2))) AS 'AVG(weight)'
FROM (
	SELECT
		id,
		position,
		height,
		weight,
		FLOOR(age / 5) * 5 AS age
	FROM (
		SELECT
			id,
			position,
			height,
			weight,
			CASE
				WHEN DATEADD(year, DATEDIFF(year, birth, '2014-06-13'), birth) > '2014-06-13'
				THEN DATEDIFF(year, birth, '2014-06-13') - 1
				ELSE DATEDIFF(year, birth, '2014-06-13')
			END AS age 
		FROM
			players
	) A ) B
GROUP BY
	age, position
ORDER BY
	age, position;