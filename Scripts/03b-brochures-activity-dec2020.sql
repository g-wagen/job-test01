SELECT
    vp.sector_id,
    s.name,
    c.brochure_id,
    c.pfrom,
    c.puntil,
    COUNT(DISTINCT c.title) AS active
FROM
    content c
    -- Grab our trusty v_publisher view
    -- to access publisher ids and sectors
LEFT JOIN agg_clicks_impressions ci ON
    ci.brochure_id = c.brochure_id
LEFT JOIN v_publisher vp ON
    c.publisher_id = vp.id
LEFT JOIN sector s ON
    s.sector_id = vp.sector_id
WHERE
    -- Only brochures that appeared in December 2020
    '2020-12-31' BETWEEN c.pfrom AND c.puntil
GROUP BY
    -- Group by sector to count the active brochures
    vp.sector_id
ORDER BY active DESC

