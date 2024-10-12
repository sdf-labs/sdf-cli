CREATE VIEW staging.stg_installs_per_campaign AS
SELECT
    campaign_id,
    COUNT(event_id) AS total_num_installs
FROM staging.app_installs
GROUP BY 1
