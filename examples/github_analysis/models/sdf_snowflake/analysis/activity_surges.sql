WITH User_Event_Engagement AS (
    -- Aggregate total events and distinct actors, calculate the percentage of repeat users
    SELECT
        e.repo_id,
        r.repo_name,
        e.first_interaction,
        e.last_interaction,
        e.actor_count as total_events,
        e.event_type_count as distinct_user_count,
        (COUNT(e.id) - COUNT(DISTINCT e.actor_id)) AS repeat_user_events, -- Contributions from repeat users
        (
            COUNT(e.id) - COUNT(DISTINCT e.actor_id)
        )
        * 100.0
        / count(e.id) AS repeat_user_percentage, -- % of repeat events
        COUNT(
            DISTINCT e.type
        ) AS event_type_count -- Number of distinct event types
    FROM fct.repo_engagement e
    JOIN dim.repos r
        ON e.repo_id = r.repo_id
    GROUP BY e.repo_id, r.repo_name, e.first_interaction, e.last_interaction, e.actor_count, e.event_type_count
),
Highly_Engaged_Repos AS (
    -- Identify repositories with high repeat user percentage and diverse event types
    SELECT
        repo_id,
        repo_name,
        distinct_user_count,
        total_events,
        repeat_user_events,
        repeat_user_percentage,
        event_type_count,
        first_interaction,
        last_interaction,
        CASE
            -- Define repositories as highly engaged if repeat user percentage > 40% and event types > 3
            WHEN repeat_user_percentage > 40 AND event_type_count > 3
                THEN 'highly_engaged'
            ELSE 'moderate_engagement'
        END AS engagement_level
    FROM User_Event_Engagement
)
SELECT
    repo_name,
    distinct_user_count,
    total_events,
    repeat_user_percentage,
    event_type_count,
    engagement_level,
    first_interaction,
    last_interaction
FROM Highly_Engaged_Repos
WHERE engagement_level = 'highly_engaged'
ORDER BY repeat_user_percentage DESC, total_events DESC;

