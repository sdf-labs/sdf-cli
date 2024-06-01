-- The given external table, can be local or on s3.
create external table events(
    dt varchar, 
    time varchar, 
    action varchar, 
    uid bigint
) stored as csv partitioned by (dt, time) location 'events/';
