WITH
deprecated_tables AS (
    SELECT
        table_id
    FROM sdf.information_schema.tables 
    WHERE 
        CONTAINS(classifiers, 'TABLE_STATUS.deprecated')
)

SELECT 
    t.to_table_id AS table_name, 
    d.from_table_id AS upstream_deprecated_table_name,
FROM sdf.information_schema.table_lineage tl
WHERE tl.from_table_id IN (SELECT table_id FROM deprecated_tables)