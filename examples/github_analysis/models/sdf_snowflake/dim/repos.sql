SELECT
    r.repo_id,
    n.repo_name,
    r.first_seen,
    r.last_seen,
    e.event_count,
    l.last_event_timestamp
FROM tech__innovation_essentials.cybersyn.github_repos r
LEFT JOIN stg.repo_event_aggregates e
    ON r.repo_id = e.repo_id
LEFT JOIN stg.latest_repo_events l
    ON r.repo_id = l.repo_id
LEFT JOIN stg.repo_names n
    ON r.repo_id = n.repo_id

