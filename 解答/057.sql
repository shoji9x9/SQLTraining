SELECT
	SUM(ranking) AS 'CグループのFIFAランクの合計値'
FROM
	countries
WHERE
	group_name = 'C';