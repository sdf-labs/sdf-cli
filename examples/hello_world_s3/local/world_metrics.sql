select 
    sum(population) as world_pop,
    min(population) as smallest_country,
    max(population) as largest_country
from popdata;

select 
    country,
    split(date, ' ')[1] as day,
    split_part(source, ' ', 2) as source,
    split_part(source, ' ', 3) as source3
from popdata;
