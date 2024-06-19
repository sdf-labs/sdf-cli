-- The given external table, can be local or on s3.
create table events(
    dt varchar, 
    time varchar, 
    action varchar, 
    uid bigint
) with (format='csv', partitioned_by=array['dt', 'time'], location='events/');
