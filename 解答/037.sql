SELECT
	*
FROM
	players
WHERE
	weight / POWER(CAST(height AS DECIMAL(5, 2)) / 100, 2) >= 20 AND weight / POWER(CAST(height AS DECIMAL(5, 2)) / 100, 2) < 21;