SELECT
    table_name,
    classifiers
FROM sdf.information_schema.tables 
WHERE classifiers LIKE '%TABLE_STATUS.deprecated%'