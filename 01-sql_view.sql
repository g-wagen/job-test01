-- Create the view please
CREATE VIEW v_publisher
AS
SELECT
    id,
    -- Remove decimal point by converting the column to integer
	  CAST(sector_id AS INT) AS sector_id,
    partition_market
FROM
    publisher
