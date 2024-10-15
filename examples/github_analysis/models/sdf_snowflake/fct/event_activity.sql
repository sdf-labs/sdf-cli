SELECT
    e.repo_id,
    e.type AS event_type,
    COUNT(e.id) AS event_count, -- Total count of events by type
    MIN(
        e.created_at_timestamp
    ) AS first_event, -- First occurrence of the event
    MAX(
        e.created_at_timestamp
    ) AS last_event -- Last occurrence of the event
FROM tech__innovation_essentials.cybersyn.github_events e
WHERE e.repo_id IS NOT NULL
GROUP BY e.repo_id, e.type
