-- Transformations

-- 1. Numeric

SELECT
	unit_price,
    unit_price * 0.8 as discounted_price,
    unit_price + 10 as taxed_price,
    unit_price / 10 as fractional_price,
    unit_price * unit_price as multiplied_price,
    unit_price % 2 as modulo_2,
    ROUND(unit_price,0) as rounded_price
FROM 
	dim_product;


-- 2. Date
-- 2.1
SELECT 
	date,
    now(),
    utc_date(),
    utc_time(),
    utc_timestamp()
FROM 
	dim_date;

-- 2.2
SELECT 
	date,
    year(date),
    month(date),
    day(date),
    weekday(date),
    dayname(date),
    adddate(date,2),
    subdate(date,2),
    datediff(utc_date, date),
    cast("2026-01-01" AS datetime)
FROM 
	dim_date;

-- 2.3
SELECT 
	date,
    date_format(date,"%e %M %Y")
FROM 
	dim_date;
    
-- 3. Type casting
SELECT 
	customer_key,
    cast(customer_key AS CHAR(100))
FROM
	dim_customer;
    
-- 4. String functions
SELECT
	first_name,
    last_name,
    concat(first_name,' ',last_name) as full_name,
    concat_ws(' ',first_name,last_name,country),
    length(first_name),
    substring(first_name,1,3),
    lower(first_name),
    replace(email, '@', '%'),
    left(first_name, 3),
    right(first_name,3),
    reverse(first_name),
    repeat(first_name,2)
    FROM
	dim_customer;