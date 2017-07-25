-- Ejercicio 1 
SELECT f1.last_name 
FROM actor f1
WHERE f1.last_name IN (SELECT last_name
							FROM actor f2
							WHERE f1.last_name = f2.last_name AND f1.actor_id <> f2.actor_id)
ORDER BY last_name

-- Ejercicio 2
SELECT first_name, last_name
FROM actor
WHERE actor_id NOT IN (SELECT DISTINCT actor_id
							FROM film_actor)
							
-- Ejercicio 3
SELECT first_name, last_name
FROM customer c1
WHERE NOT EXISTS (SELECT c2.customer_id
							FROM rental r1, customer c2
							WHERE c2.customer_id = r1.customer_id
							AND c1.customer_id <> c2.customer_id )
ORDER BY first_name
							
-- Ejercicio 5






							
							
							