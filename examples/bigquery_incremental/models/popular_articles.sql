SELECT
  *
FROM
  bigquery-public-data.hacker_news.`full`
WHERE
{% if builtin.is_incremental_mode %}
  -- Only fetch rows that are newer than the newest row in the previous materialization of this table
  `timestamp` >= (SELECT MAX(`timestamp`) FROM popular_articles)
{% else %}
  `timestamp` >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 7 DAY)
{% endif %}
  AND title IS NOT NULL
  AND (dead IS NULL OR dead = FALSE)
  AND score > 100
