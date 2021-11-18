CREATE VIEW v_publisher 
AS SELECT 
	CAST(id AS INT) AS id, 
	CAST(sector_id AS INT) AS sector_id, 
	partition_market 
FROM publisher
