SELECT
    repo_id,
    SUM(count) AS total_stars
FROM tech__innovation_essentials.cybersyn.github_stars s
WHERE s.count IS NOT NULL
GROUP BY repo_id
