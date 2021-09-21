SELECT
	name AS 名前,
	position AS ポジション,
	club AS 所属クラブ,
	(SELECT COUNT(*) FROM goals WHERE goals.player_id = p.id) AS ゴール数
FROM
	players p
WHERE
	(SELECT COUNT(*) FROM goals WHERE goals.player_id = p.id) >= 1
ORDER BY
	ゴール数 DESC;