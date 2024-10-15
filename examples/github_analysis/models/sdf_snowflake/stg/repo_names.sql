SELECT
    repo_name,
    repo_id
FROM tech__innovation_essentials.cybersyn.github_repos
QUALIFY row_number() OVER (PARTITION BY repo_id ORDER BY first_seen DESC) = 1
