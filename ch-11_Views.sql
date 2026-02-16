CREATE VIEW dedup_view AS
SELECT
	*
FROM (
	SELECT 
		*,
		ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) as dedup
	FROM
		customers
) as subquery
WHERE dedup = 1;


