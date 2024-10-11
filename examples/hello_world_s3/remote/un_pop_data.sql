-- Creates an root table with an S3 Location
-- Note: Set aws Region
create table un_pop_data WITH (
  FORMAT='CSV', 
  skip_header_line_count=1,
  LOCATION='s3://sdfdatasets/hello-world/world_population_full.csv'
);