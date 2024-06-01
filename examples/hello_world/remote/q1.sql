-- Let's find the least populated country in 1999
select region_or_country,
"ISO3_Alpha_code",
"Population_Density_Per_Square_KM"
from un_pop_data
where "Year" = 1999
order by "Population_Density_Per_Square_KM"
limit 1;