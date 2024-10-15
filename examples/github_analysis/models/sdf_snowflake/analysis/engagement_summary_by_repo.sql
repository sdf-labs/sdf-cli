SELECT
    d.repo_name,
    re.actor_count,
    re.event_type_count,
    re.total_events,
    re.first_interaction,
    re.last_interaction
FROM fct.repo_engagement re
JOIN dim.repos d
    ON re.repo_id = d.repo_id
ORDER BY re.total_events DESC, re.actor_count DESC;

