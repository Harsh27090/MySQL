-- Scenario 1. finding nth highest record
-- find 5th most expensive product, not top 5

SELECT
	*,
    DENSE_RANK() OVER(ORDER BY unit_price DESC) as dense_rank_col
FROM
 dim_product;
 
 
 SELECT
	product_name,
    category,
    unit_price,
    dense_rank_col
FROM
	(
    SELECT
		*,
		DENSE_RANK() OVER(ORDER BY unit_price DESC) as dense_rank_col
	FROM
		dim_product
	) as subquery_table
WHERE dense_rank_col = 5;

-- top 5th in all categories
SELECT
	product_name,
    category,
    unit_price,
    dense_rank_col
FROM
	(
    SELECT
		*,
		DENSE_RANK() OVER(PARTITION BY category ORDER BY unit_price DESC) as dense_rank_col
	FROM
		dim_product
	) as subquery_table
WHERE dense_rank_col = 5;


-- Scenario 2. removing duplicates
SELECT
	*, 
    ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) as dedup
FROM
	customers;
    
SELECT
	*
FROM
	(
    SELECT
		*, 
		ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) as dedup
	FROM
		customers
    ) as subquery
WHERE dedup = 1;

-- Scenario 3. Lead and Lag
SELECT 
	*,
    LAG(temp,1,'not available') OVER(ORDER BY id) as prev_day_temp,
    LEAD(temp,1,-9999) OVER(ORDER BY id) as next_day_temp
FROM
	weather;
	
 