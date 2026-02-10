CREATE DATABASE sales;

CREATE TABLE stores (
	store_id INT,
    store_name VARCHAR(20)
);

INSERT INTO stores VALUES 
(1, "hfgajf"),
(2, "kjdgdfj");

INSERT INTO stores(store_id) VALUES 
(3);

SELECT * FROM stores;

CREATE TABLE stores_new (
	store_id INT PRIMARY KEY,
    store_name VARCHAR(20) NOT NULL
);

INSERT INTO stores_new VALUES 
(1, "sgghgrir"),
(2, "ljsnjn");

DROP TABLE stores;
TRUNCATE TABLE stores_new;
SELECT * FROM stores_new;

ALTER TABLE stores_new
ADD COLUMN store_city varchar(20);

ALTER TABLE stores_new
RENAME COLUMN store_city to store_loc;





