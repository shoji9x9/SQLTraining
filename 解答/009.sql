SELECT
	birth,
	CASE
		WHEN DATEADD(year, DATEDIFF(year, birth, '2014-06-13'), birth) <= '2014-06-13'
		THEN DATEDIFF(year, birth, '2014-06-13')
		ELSE DATEDIFF(year, birth, '2014-06-13') - 1
	END AS age,
	name,
	position
FROM
	players
ORDER BY
	age DESC;