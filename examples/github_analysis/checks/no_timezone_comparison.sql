SELECT 
  column_id,
  classifiers
FROM
  sdf.information_schema.columns
WHERE
  CONTAINS_ARRAY_VARCHAR(classifiers, 'DATE.') AND
  CARDINALITY(ARRAY_DISTINCT(classifiers)) > 1;