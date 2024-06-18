CREATE TABLE raw_inapp_events 
WITH (FORMAT='CSV', skip_header_line_count=1, LOCATION='seeds/inapp_events.csv');