SELECT * FROM dim_customer;

SELECT 
	customer_id,
    email
FROM 
	dim_customer;
    
-- WHERE clause [conditions to filter rows]
SELECT 
	*
FROM 
	dim_customer
WHERE
	(gender = 'F');

-- AND
SELECT 
	*
FROM 
	dim_customer
WHERE
	(gender = 'F') AND (country = 'Italy') AND (join_date > '2022-01-01');
    
-- OR
SELECT 
	*
FROM 
	dim_customer
WHERE
	(gender = 'F') AND ((country = 'Italy') OR (join_date > '2022-01-01'));
    
-- LIKE 
-- [%: any no. of characters], [_: a single character]
SELECT 
	*
FROM 
	dim_customer
WHERE
	first_name LIKE 'T__f%y';
    
-- ORDER BY: sorting
SELECT
	* 
FROM
	dim_product
ORDER BY 
	unit_price DESC
LIMIT 10;

-- AS: alias
SELECT 
	product_id,
    product_name as 'product name'
FROM
	dim_product;
    
-- GROUP BY: grouping, for categorical data
SELECT
	category,
    avg(unit_price) AS avg_price,
    sum(unit_price) AS 'total price'
FROM
	dim_product
GROUP BY 
	category;

-- HAVING clause: similar to WHERE clause, but for columns not in the table, used with group by
SELECT
	category,
    avg(unit_price) AS avg_price,
    sum(unit_price) AS 'total price'
FROM
	dim_product
GROUP BY 
	category
HAVING
	avg_price > 500;

	
	
    
    
