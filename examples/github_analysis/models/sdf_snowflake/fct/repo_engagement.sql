SELECT
    e.id,
    e.type,
    e.repo_id,
    e.actor_id,
    COUNT(DISTINCT e.actor_id) AS actor_count, -- Number of distinct users who interacted
    COUNT(
        DISTINCT e.type
    ) AS event_type_count, -- Number of distinct event types
    COUNT(
        e.id
    ) AS total_events, -- Total number of events
    MIN(
        e.created_at_timestamp
    ) AS first_interaction, -- First interaction timestamp
    MAX(
        e.created_at_timestamp
    ) AS last_interaction -- Last interaction timestamp
FROM tech__innovation_essentials.cybersyn.github_events e
WHERE e.repo_id IS NOT NULL
GROUP BY e.id, e.type, e.repo_id, e.actor_id
