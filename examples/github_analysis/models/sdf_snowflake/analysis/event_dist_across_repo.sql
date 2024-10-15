SELECT
    d.repo_name,
    e.event_type,
    sum(e.event_count) AS total_events,
    min(e.first_event) AS first_event,
    max(e.last_event) AS last_event
FROM fct.event_activity e
JOIN dim.repos d
    ON e.repo_id = d.repo_id
GROUP BY d.repo_name, e.event_type
ORDER BY total_events DESC;

