-- The given external table, can be local or on s3.
create external table events(
    dt varchar, 
    time varchar, 
    action varchar, 
    uid bigint
) stored as parquet partitioned by (dt, time) location 's3://sdf-deploy-demo/mike/root_data/events/';
