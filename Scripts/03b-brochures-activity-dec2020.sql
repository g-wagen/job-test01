SELECT
	vp.sector_id,
	c.brochure_id,
	c.pfrom,
	c.puntil,
	COUNT(vp.sector_id) AS active
FROM
	content c
	-- Grab our trusty v_publisher view to access publisher ids and sectors
LEFT JOIN v_publisher vp ON
	c.publisher_id = vp.id
WHERE
	-- Only brochures that appeared in December 2020
	c.pfrom BETWEEN '2020-12-01' AND '2020-12-31'
GROUP BY
	-- Group by sector to count the active brochures
	vp.sector_id