SELECT
    repo_id,
    max(created_at_timestamp) as last_event_timestamp
FROM tech__innovation_essentials.cybersyn.github_events
WHERE repo_id IS NOT NULL
GROUP BY repo_id
