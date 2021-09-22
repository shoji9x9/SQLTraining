SELECT
	name,
	LEN(name) AS 'len'
	--DATALENGTH(name) AS 'len'
FROM
	countries
ORDER BY
	'len' DESC;