SELECT DISTINCT
    type AS event_type,
    COUNT(*) AS event_count
FROM tech__innovation_essentials.cybersyn.github_events
WHERE type IS NOT NULL
GROUP BY type
