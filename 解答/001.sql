select
	group_name as グループ,
	min(ranking) as ランキング最上位,
	max(ranking) as ランキング最下位
from countries
group by group_name;