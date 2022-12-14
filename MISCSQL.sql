# Template for admin to reset MySQL user password
SET PASSWORD FOR ‘userName’@’host’ = “newPassHere”;

USE testdb1; 
SELECT * from customer;
UPDATE customer SET first_name = "Bob" 
WHERE first_name = "new";
UPDATE customer SET password = "newPassword!" 
WHERE first_name = "Bob";
UPDATE customer 
SET first_name = "Bobby" 
WHERE first_name = "Bob" AND email = "new@email.com";
SELECT first_name, c_id FROM customer
WHERE email = "new@email.com";
UPDATE customer SET email = "BobbyBoby@email.com"
WHERE email = "new@email.com" AND c_id = 4;

SELECT * from search_object;
DELETE FROM search_object 
WHERE search_object_id <=3;
ALTER TABLE search_object 
	DROP COLUMN listing_type,
    DROP COLUMN listing_name,
    DROP COLUMN zip;
ALTER TABLE search_object 
MODIFY COLUMN state VARCHAR(255);
DELETE FROM SEARCH_OBJECT 
WHERE listing_name IS NULL;

UPDATE SEARCH_OBJECT 
SET purchase_type = "Rent" 
WHERE price = 2000;
SELECT * FROM SEARCH_OBJECT;

SELECT * FROM LOVED_LISTINGS;
ALTER TABLE loved_listings 
DROP COLUMN listing_name;
ALTER TABLE loved_listings 
DROP COLUMN rental_purchase;
DELETE FROM loved_listings 
WHERE l_id >=1;
UPDATE loved_listings 
SET listing_name = "Beautiful University Park house" 
WHERE price = 250000;
UPDATE loved_listings 
SET listing_name = "Low cost 2-bedroom apt" 
WHERE price = 1400;
UPDATE loved_listings 
SET listing_name = "Mid range 3-bedroom apt" 
WHERE price = 1600;
UPDATE loved_listings 
SET listing_name = "Nice University Park apt" 
WHERE price = 2000;
UPDATE loved_listings 
SET purchase_type = rental_purchase;
UPDATE loved_listings 
SET name = "Beautiful University Park house" 
WHERE price = 250000;
UPDATE loved_listings 
SET name = "Low cost 2-bedroom apt" 
WHERE price = 1400;

UPDATE loved_listings 
SET name = "Mid range 3-bedroom apt" 
WHERE price = 1600;
UPDATE loved_listings 
SET name = "Nice University Park apt" 
WHERE price = 2000;

INSERT INTO loved_listings
(llid, city, name, num_baths, num_beds, 
price, purchase_type, state, zip, customer_id)
VALUES (1, "Redmond", "Cozy suburban home", 2, 3, 
300000, "Purchase", "Washington - WA", "98052", 0);
INSERT INTO loved_listings
(llid, city, name, num_baths, num_beds, 
price, purchase_type, state, zip, customer_id)
VALUES (2, "Redmond", "Nice 2-bedroom apt", 2, 2, 
2000, "Rent", "Washington - WA", "98052", 0)
INSERT INTO loved_listings
(llid, city, name, num_baths, num_beds, 
price, purchase_type, state, zip, customer_id)
VALUES (3, "Bellevue", "Mid range 2-bedroom apt", 2, 2, 
1600, "Rent", "Washington - WA", "98004", 0);
INSERT INTO loved_listings
(llid, city, name, num_baths, num_beds, 
price, purchase_type, state, zip, customer_id)
VALUES (4, "Seattle", "Beautiful Seattle house", 2, 4, 
450000, "Purchase", "Washington - WA", "98101", 0);
SELECT * FROM LOVED_LISTINGS;
