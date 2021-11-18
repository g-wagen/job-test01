SELECT
    -- Count the unique brochures
    COUNT(DISTINCT c.title) AS num_brochures,
    c.pfrom,
    vp.sector_id
FROM
    content c
-- Join the previously created view to get the sectors
LEFT JOIN v_publisher vp ON
    vp.id = c.publisher_id
WHERE
    -- Just show May 2021
    c.pfrom BETWEEN '2021-05-01' AND '2021-05-31'
GROUP BY
    -- And group the output by the sector
    vp.sector_id

