SELECT
    d.repo_name,
    e.actor_count,
    e.total_events,
    a.star_growth,
    a.total_stars
FROM fct.repo_engagement e
JOIN fct.repo_activity a
    ON e.repo_id = a.repo_id
JOIN dim.repos d
    ON e.repo_id = d.repo_id
WHERE a.star_growth < 10 -- Low star growth threshold
ORDER BY
    e.actor_count DESC,
    e.total_events DESC
;

