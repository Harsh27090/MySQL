-- User Defined Funtions (custom transformation funstions)

DELIMITER //
CREATE FUNCTION cube_it(x INT)
RETURNS INT
DETERMINISTIC 
BEGIN
	RETURN x*x;
END //

DELIMITER ;

SELECT
	*,
    cube_it(unit_price)
FROM 
	dim_product;