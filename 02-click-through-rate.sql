SELECT
    -- Grab columns from different tables
    ci.publisher_id,
    vp.sector_id,
    s.name AS sector_name,
    -- Sum up all the clicks and impressions
    SUM(ci.clicks) AS clicks,
    SUM(ci.reached_user) AS reached_user,
    -- Unsure what this number represents
    SUM(ci.impressions) AS impressions,
    -- Calculate Click-Through-Rate and round to two digits
    ROUND(SUM(ci.clicks)/ SUM(ci.impressions) * 100, 2) AS CTR
FROM
    agg_clicks_impressions ci
    -- Join v_publisher and sector to agg_clicks_impressions
LEFT JOIN v_publisher vp ON
    ci.publisher_id = vp.id
LEFT JOIN sector s ON
    vp.sector_id = s.sector_id
    -- Finally group the output by the sector
GROUP BY
    vp.sector_id

