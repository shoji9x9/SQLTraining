SELECT
	*
FROM
	players
WHERE
	CASE
		WHEN DATEADD(year, DATEDIFF(year, birth, '2016-01-13'), birth) > '2016-01-13'
		THEN DATEDIFF(year, birth, '2016-01-13') - 1
		ELSE DATEDIFF(year, birth, '2016-01-13')
	END >= 40;