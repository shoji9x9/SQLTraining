SELECT
	p1.position,
	MAX(p1.height) AS '最大身長',
	(SELECT p2.name FROM players p2 WHERE p1.position = p2.position AND MAX(p1.height) = p2.height) AS '名前'
FROM
	players p1
GROUP BY
	p1.position;