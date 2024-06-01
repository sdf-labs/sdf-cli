SELECT
    DISTINCT c.table_ref as "table_name",
    c.column_name as "column name",
    c.classifiers
FROM
    sdf.information_schema.columns c
WHERE
    c.classifiers like '%PII.name%'