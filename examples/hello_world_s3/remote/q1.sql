-- Let's find the least populated country in 1999
SELECT 
  region_or_country,
  "ISO3_Alpha_code",
  "Population_Density_Per_Square_KM"
FROM un_pop_data
WHERE "Year" = 1999
ORDER BY "Population_Density_Per_Square_KM"
LIMIT 1;