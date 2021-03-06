SELECT
	age,
	COUNT(id) AS player_count
FROM (
	SELECT
		id,
		FLOOR(age / 5) * 5 AS age
	FROM (
		SELECT
			id,
			CASE
				WHEN DATEADD(year, DATEDIFF(year, birth, '2014-06-13'), birth) > '2014-06-13'
				THEN DATEDIFF(year, birth, '2014-06-13') - 1
				ELSE DATEDIFF(year, birth, '2014-06-13')
			END AS age 
		FROM
			players
	) A ) B
GROUP BY
	age;