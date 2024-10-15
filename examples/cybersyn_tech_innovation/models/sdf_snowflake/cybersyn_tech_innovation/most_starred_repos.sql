/*
Pull the repos with the most stars in the past year
*/
WITH latest_repo_name AS (
    SELECT repo_name,
           repo_id
    FROM tech__innovation_essentials.cybersyn.github_repos
    QUALIFY ROW_NUMBER() OVER (PARTITION BY repo_id ORDER BY first_seen DESC) = 1
)
SELECT repo.repo_name,
       repo.repo_id,
       SUM(stars.count) AS sum_stars
FROM tech__innovation_essentials.cybersyn.github_stars AS stars
JOIN latest_repo_name AS repo
    ON (repo.repo_id = stars.repo_id)
WHERE stars.date >= DATEADD('day', -365, CURRENT_DATE)
GROUP BY repo.repo_name, repo.repo_id
ORDER BY sum_stars DESC NULLS LAST
LIMIT 50
