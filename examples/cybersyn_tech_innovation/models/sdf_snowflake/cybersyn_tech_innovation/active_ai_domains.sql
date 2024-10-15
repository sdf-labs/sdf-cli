/*
Select only domains that use the ‘.ai’ top level domain and for which the most recent HTTP response check by Cybersyn was successful
*/
SELECT domain_id
FROM tech__innovation_essentials.cybersyn.domain_characteristics
WHERE domain_id ILIKE '%.ai'
  AND relationship_type = 'successful_http_response_status'
  AND value = 'true'
  AND relationship_end_date IS NULL
