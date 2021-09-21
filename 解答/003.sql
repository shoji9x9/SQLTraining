SELECT
	countries.name AS 国名,
	AVG(CAST(players.height AS DECIMAL(5, 2))) AS 平均身長
FROM
	countries
	INNER JOIN players ON countries.id = players.country_id
GROUP BY
	countries.id, countries.name
ORDER BY
	AVG(CAST(players.height AS DECIMAL(5, 2))) DESC;