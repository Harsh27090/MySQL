-- Window Functions

SELECT 
	*
FROM 
	dim_product;

-- 1.
SELECT
	*,
    SUM(unit_price) OVER(ORDER BY launch_date) as running_total_1,
    SUM(unit_price) OVER(ORDER BY launch_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_total_2,
	AVG(unit_price) OVER(ORDER BY launch_date) as moving_average,
    SUM(unit_price) OVER(ORDER BY launch_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as total_price
FROM
	dim_product;
-- running total/sum
-- running/moving average
-- same as 1, but with code running by default

-- 2. Ranking functions:
SELECT
	unit_price,
    ROW_NUMBER() OVER(ORDER BY unit_price) as 'ROW_NUMBER',
    RANK() OVER(ORDER BY unit_price) as 'RANK',
    DENSE_RANK() OVER(ORDER BY unit_price) as 'DENSE_RANK'
FROM
	dim_product;
    
-- with PARTITION BY
SELECT 
	unit_price,
    category,
    ROW_NUMBER() OVER(PARTITION BY category ORDER BY unit_price) as 'ROW_NUMBER',
    RANK() OVER(PARTITION BY category ORDER BY unit_price) as 'RANK',
    DENSE_RANK() OVER(PARTITION BY category ORDER BY unit_price) as 'DENSE_RANK'
FROM
	dim_product;




