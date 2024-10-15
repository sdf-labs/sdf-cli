SELECT DISTINCT
    DATE_TRUNC('day', s.date) AS date,
    EXTRACT (year FROM s.date) AS year,
    EXTRACT (month FROM s.date) AS month,
    EXTRACT (day FROM s.date) AS day,
    EXTRACT (quarter FROM s.date) AS quarter
FROM tech__innovation_essentials.cybersyn.github_stars s
