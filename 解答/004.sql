--SELECT
--	c.name AS 国名,
--	AVG(CAST(height AS DECIMAL(5, 2))) AS 平均身長
--FROM
--	players,
--	(SELECT id, name FROM countries) AS c
--WHERE
--	players.country_id = c.id
--GROUP BY
--	c.id, c.name
--ORDER BY
--	AVG(CAST(height AS DECIMAL(5, 2))) DESC;

SELECT
	(SELECT name FROM countries WHERE p.country_id = id) AS 国名,
	AVG(CAST(height AS DECIMAL(5, 2))) AS 平均身長
FROM
	players AS p
GROUP BY
	country_id
ORDER BY
	AVG(CAST(height AS DECIMAL(5, 2))) DESC;