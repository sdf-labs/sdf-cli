/*
Find all patents where Nvidia is the designated assignee
*/
WITH patents_in_last_year AS (
    SELECT 
        patent_id,
        patent_type,
        invention_title
    FROM tech__innovation_essentials.cybersyn.uspto_patent_index AS patent
    WHERE patent.DOCUMENT_PUBLICATION_DATE > DATEADD(YEAR, -1, CURRENT_DATE())
)
SELECT 
    patent.patent_id,
    patent.patent_type,
    patent.invention_title
FROM tech__innovation_essentials.cybersyn.uspto_contributor_index AS contrib
JOIN tech__innovation_essentials.cybersyn.uspto_patent_contributor_relationships AS rship
    ON (contrib.contributor_id = rship.contributor_id)
JOIN patents_in_last_year AS patent
    ON (rship.patent_id = patent.patent_id)
WHERE contrib.contributor_name ILIKE 'NVIDIA CORPORATION'
  AND rship.contribution_type = 'Assignee - United States Company Or Corporation'