SELECT 
    -- install events data
    install_time, -- TODO: have install date
    campaign_name,
    platform,
    COUNT(DISTINCT customer_id) AS distinct_installs
FROM app_installs
GROUP BY 1,2,3