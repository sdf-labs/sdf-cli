SELECT
    g.repo_id,
    d.repo_name,
    g.first_star_date,
    g.last_star_date,
    g.star_growth,
    g.total_stars_acquired as total_stars,
    SUM(e.event_count) as total_events,
    SUM(e.event_count) / NULLIF(g.star_growth, 0) as events_per_star -- Example metric
FROM stg.star_growth g
JOIN dim.repos d
    ON g.repo_id = d.repo_id
LEFT JOIN stg.repo_event_aggregates e
    ON g.repo_id = e.repo_id
GROUP BY g.repo_id, d.repo_name, g.first_star_date, g.last_star_date, g.star_growth, g.total_stars_acquired
