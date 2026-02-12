-- Subqueries

-- 1
SELECT
	* 
FROM
	dim_product
WHERE unit_price > (SELECT avg(unit_price) FROM dim_product);


-- 2 treating as subquery table, using resultant table of a subquery.
SELECT
	* 
FROM
	(
    SELECT
		* 
	FROM
		dim_product
	WHERE unit_price > (SELECT avg(unit_price) FROM dim_product)
    ) as subquery_table
WHERE product_name = 'Figure Method';