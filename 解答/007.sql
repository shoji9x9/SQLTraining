SELECT
	name AS 名前,
	position AS ポジション,
	club AS 所属クラブ,
	COUNT(*) AS ゴール数
FROM players
	LEFT JOIN goals on players.id = goals.player_id
GROUP BY
	players.id, name, position, club
ORDER BY
	ゴール数 DESC;
