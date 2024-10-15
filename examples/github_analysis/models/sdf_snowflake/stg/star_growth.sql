SELECT
    s.repo_id,
    s.date,
    MIN(s.date) AS first_star_date,
    MAX(s.date) AS last_star_date,
    SUM(
        CASE
            WHEN s.date = d.first_star_date
                THEN s.count
            ELSE 0
        END
    ) AS first_star_count,
    SUM(
        CASE
            WHEN s.date = d.last_star_date
                THEN s.count
            ELSE 0
        END
    ) AS last_star_count,
    SUM(s.count) AS total_stars_acquired,
    (
        SUM(
            CASE
                WHEN s.date = d.last_star_date
                    THEN s.count
                ELSE 0
            END
        )
        - SUM(
            CASE
                WHEN s.date = d.first_star_date
                    THEN s.count
                ELSE 0
            END
        )
    ) AS star_growth
FROM tech__innovation_essentials.cybersyn.github_stars s
JOIN stg.star_dates d
    ON s.repo_id = d.repo_id
GROUP BY s.repo_id, s.date
