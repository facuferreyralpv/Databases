-- Ejercicio 1 
SELECT DISTINCT country, (SELECT COUNT(city)
							FROM city 
							where country.country_id = city.country_id) as total
							
FROM country
ORDER BY country.country_id

-- Ejercicio 2
SELECT country, COUNT(*)
FROM country 
INNER JOIN city USING (country_id)
GROUP BY country
HAVING COUNT(*) > 10
ORDER BY country.country_id

-- Ejercicio 3
SELECT first_name, last_name, address, COUNT(*) AS total_films,
	SUM(amount) AS total_money
FROM customer
INNER JOIN address
		ON customer.customer_id = address.address_id
INNER JOIN rental
		ON customer.customer_id = rental.customer_id
INNER JOIN payment
		ON rental.rental_id = payment.payment_id
GROUP BY first_name, last_name, address
ORDER BY total_money DESC

-- Ejercicio 4


