SELECT
    repo_id,
    MIN(date) AS first_star_date,
    MAX(date) AS last_star_date
from tech__innovation_essentials.cybersyn.github_stars
GROUP BY repo_id
