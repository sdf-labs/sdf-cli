SELECT
    d.repo_name,
    t.year,
    t.month,
    SUM(f.star_growth) AS star_growth
FROM fct.repo_activity f
JOIN dim.repos d
    ON f.repo_id = d.repo_id
JOIN dim.date t
    ON f.first_star_date = t.date
GROUP BY d.repo_name, t.year, t.month
ORDER BY t.year, t.month DESC;

