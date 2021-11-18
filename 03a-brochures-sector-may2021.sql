SELECT
    -- Count the unique brochures
    COUNT(DISTINCT c.title) AS num_brochures,
    c.pfrom,
    vp.sector_id
FROM
    content c
LEFT JOIN v_publisher vp ON
    vp.id = c.publisher_id
WHERE
    c.pfrom BETWEEN '2021-05-01' AND '2021-05-31'
GROUP BY
    vp.sector_id