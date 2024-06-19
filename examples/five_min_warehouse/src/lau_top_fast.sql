select   
    dt, 
    uid, 
    action_count_total
from lau_fast
where dt=@dt --and action_count_total > 4
order by action_count_total desc
limit 2