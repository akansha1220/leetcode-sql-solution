

select player_id ,event_date as first_login 
from(select *,
dense_rank() over(partition by player_id order by event_date asc) as fd
from activity) T1
where fd=1


