SELECT
	group_name,
	MAX(ranking) AS 'MAX(ranking)',
	MIN(ranking) AS 'MIN(ranking)'
FROM
	countries
GROUP BY
	group_name
HAVING
	MAX(ranking) - MIN(ranking) > 50;