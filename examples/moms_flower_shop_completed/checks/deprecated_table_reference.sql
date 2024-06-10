WITH
deprecated_tables AS (
    SELECT
        table_id,
        table_name
    FROM sdf.information_schema.tables 
    WHERE 
        CONTAINS(classifiers, 'TABLE_STATUS.deprecated')
)

SELECT 
    t.table_name AS table_name, 
    d.table_name AS upstram_deprecated_table_name,
FROM sdf.information_schema.table_lineage tl
    JOIN deprecated_tables d 
        ON (d.table_id = tl.from_table_id)
    JOIN sdf.information_schema.tables t
        ON (t.table_id = tl.to_table_id)