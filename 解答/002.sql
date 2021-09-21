SELECT
	-- 小数点以下を表示するため事前にheight, weightを小数にするのがポイント
	AVG(CAST(height AS DECIMAL(5, 2))) AS 平均身長,
	AVG(CAST(weight AS DECIMAL(5, 2))) AS 平均体重
FROM
	players
WHERE
	position = 'GK';