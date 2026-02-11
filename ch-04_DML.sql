-- DML

-- 1. SELECT (already done)

-- 2. UPDATE
UPDATE customers
SET
	name = 'Harsh'
WHERE
	email = 'aa';
    
-- 3. DELETE
DELETE FROM customers
WHERE
	email = 'aa';
    
SELECT * FROM customers;