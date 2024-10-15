SELECT
    repo_id,
    type,
    count(*) as event_count
FROM tech__innovation_essentials.cybersyn.github_events
WHERE repo_id IS NOT NULL
GROUP BY repo_id, type
