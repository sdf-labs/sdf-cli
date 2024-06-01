-- SDF automatically infers the data types and column names from the CSV data.
CREATE EXTERNAL TABLE raw_payments STORED AS CSV WITH HEADER ROW LOCATION 'data/raw_payments.csv';