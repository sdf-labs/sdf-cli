select
    dt,
    uid,
    sum(action_count_total) as action_count_total
from
    hau
where
    dt = @dt
group by
    dt,
    uid