select
    @dt as dt,
    @time as time,
    uid,
    count(action) action_count_total
from
    events
where
    dt = @dt
    and time = @time
group by
    1,
    2,
    3;
