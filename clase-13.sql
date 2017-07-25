-- 1
SELECT MAX(b.address_id)
FROM address b
JOIN city USING (city_id)
JOIN country USING (country_id)
WHERE country.country = "United States"

INSERT INTO sakila.customer
(store_id, first_name, last_name, email, address_id, active, create_date)
VALUES(1,'Facundo' ,'Ferreyra', 'facuferreyralp@gmail.com', 599, true, CURRENT_TIMESTAMP);



-- 2

SELECT staff_id
FROM staff
JOIN store USING (store_id)
WHERE store.store_id=2
LIMIT 1

SELECT MAX(inventory_id)
FROM film
JOIN inventory USING(film_id)
SELECT * FROM film
WHERE title = 'AFFAIR PREJUDICE'

INSERT INTO sakila.rental
(rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES(CURRENT_DATE, 543, 1, NULL, 2, CURRENT_TIMESTAMP);


-- 3

UPDATE sakila.film
SET release_year = '2001'
WHERE rating = 'G'

UPDATE sakila.film
SET release_year = '2002'
WHERE rating = 'PG'

UPDATE sakila.film
SET release_year = '2010'
WHERE rating = 'NC-13'

UPDATE sakila.film
SET release_year = '2003'
WHERE rating = 'PG-13'

UPDATE sakila.film
SET release_year = '2001'
WHERE rating = 'R'


SELECT DISTINCT rating FROM film


-- 5

DELETE FROM rental
WHERE inventory_id IN (4569, 4570, 4571, 4572, 4573);

DELETE FROM inventory
WHERE film_id = 999;

DELETE FROM film_actor
WHERE film_id = 999;

DELETE FROM film_category
WHERE film_id = 999;

DELETE FROM film
WHERE title = "AFFAIR PREJUDICE";

														
