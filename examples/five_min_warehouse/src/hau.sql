-- Six-Hourly Active Users, 
with expanded as (
  select *, substr(cast(time as varchar), 1, 2) as hr
  from minau
)
select
    @dt as dt,
    @hr as hr,
    uid,
    sum(action_count_total) action_count_total
from
    expanded
where
    dt = @dt
    and hr >= @hr and cast(hr as int) < cast(@hr as int) + 6
group by
    1,
    2,
    3;
