SELECT
	AVG(CAST(height AS DECIMAL(5, 2))) AS 平均身長,
	AVG(CAST(weight AS DECIMAL(5, 2))) AS 平均体重
FROM
	players;