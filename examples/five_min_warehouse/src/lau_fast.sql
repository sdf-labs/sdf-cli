create recursive table lau_fast as

with 
  today as (select * from dau where dt= @dt)
, yesterday as (select * from lau_fast where to_timestamp(dt) + interval '1' day = @dt)

select
    @dt as dt, 
    coalesce(today.uid,yesterday.uid) as uid, 
    coalesce(today.action_count_total, 0) + coalesce(yesterday.action_count_total, 0) as action_count_total
from
  today
  full outer join yesterday using (uid)
