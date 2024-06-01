-- Creates an root table with an S3 Location
-- Note: Set aws Region
create external table un_pop_data 
stored as csv 
with header row 
location 's3://sdfdatasets/hello-world/world_population_full.csv';