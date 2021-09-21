-- Webページと結果は異なるが、想定解答SQLは同じ
SELECT
	position AS ポジション,
	COUNT(goals.id) AS ゴール数
FROM 
	players
	LEFT JOIN goals ON players.id = goals.player_id
GROUP BY
	position
ORDER BY
	ゴール数 DESC;