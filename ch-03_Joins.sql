-- JOINS

-- 1. INNER JOIN: records available in both table
SELECT 
	*
FROM 
	orders o
INNER JOIN
	customers c
ON 
	o.cust_id = c.id;


-- 2. LEFT JOIN: all records from left table
SELECT 
	*
FROM
	orders o
LEFT JOIN
	customers c
ON
	o.cust_id = c.id;
    
-- 3. RIGHT JOIN: all records from right table,
-- not generally used coz it can be achhieved via exchanging the tables in LEFT JOIN
SELECT 
	*
FROM
	orders o
RIGHT JOIN
	customers c
ON
	o.cust_id = c.id;
    
-- 4. FULL JOIN: all records of all table
-- not supported in MySQL, but can be achieved using "UNION" of LEFT JOIN and RIGHT JOIN
SELECT 
	* 
FROM
	orders o
LEFT JOIN
	customers c
	ON
		o.cust_id = c.id
    
UNION

SELECT 
	*
FROM
	orders o	
RIGHT JOIN
	customers c
	ON
		o.cust_id = c.id;
    
