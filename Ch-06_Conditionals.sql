-- Conditionals: similar if-else
-- 1
SELECT 
	*,
    CASE 
    WHEN unit_price <= 100 THEN 'affordable'
	WHEN unit_price <= 200 THEN 'normal'
    ELSE 'expensive (but not for you)'
    END AS price_category
FROM 
	dim_product;

-- 2
SELECT 
	*,
    CASE
    WHEN category = 'Clothing' AND unit_price <= 100 THEN 'affordable'
    WHEN category = 'CLothing' AND unit_price <= 200 THEN 'normal'
    WHEN category = 'Clothing' THEN 'expensinve (but not for you)'
    ELSE concat('Not for ',category)
    END as clothing_price_category
FROM
	dim_product;