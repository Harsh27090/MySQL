-- CTEs [Common Table Expressions]

-- 1
WITH cte_table AS (
SELECT
	*
FROM
	dim_product
WHERE unit_price > (SELECT avg(unit_price) FROM dim_product)
)
SELECT 
	*
FROM
	cte_table
WHERE
	product_name IN ('Figure Method', 'Pressure That', 'Huge Change');
    
-- 2 same as 1, but with 2 levels of ctes
WITH cte_table AS (
SELECT 
	*
FROM 
	dim_product
WHERE unit_price > (SELECT avg(unit_price) FROM dim_product)
),
cte_table2 AS (
SELECT 
	*
FROM
	cte_table
WHERE
	product_name IN ('Figure Method', 'Pressure That', 'Huge Change')
)
SELECT 
	* 
FROM
	cte_table2;
