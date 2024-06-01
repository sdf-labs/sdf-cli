
select
    @dt as dt, uid, sum(action_count_total) as action_count_total
from
  dau
where
    dt <= @dt
group by
    dt, uid