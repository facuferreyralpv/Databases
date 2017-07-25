-- 1

SELECT CONCAT_WS(" ",first_name,last_name) as full_name, address.address, city.city
FROM customer 
	INNER JOIN address USING(address_id)
	INNER JOIN city USING(city_id)
	INNER JOIN country USING(country_id)
WHERE country.country LIKE 'Argentina';


-- 3
	
SELECT title, release_year
  FROM film 
	INNER JOIN film_actor USING(film_id)  INNER JOIN actor USING(actor_id)
WHERE CONCAT_WS(" ",first_name,last_name) LIKE TRIM(UPPER("    cosito     "));


-- 2

SELECT title,
`language`.name, 
CASE
	WHEN rating = 'G' THEN 'All Ages Are Admitted.'
	WHEN rating = 'PG' THEN 'Some Material May Not Be Suitable For Children.'
	WHEN rating = 'PG-13' THEN 'Some Material May Be Inappropriate For Children Under 13.'
	WHEN rating = 'R' THEN 'Under 17 Requires Accompanying Parent Or Adult Guardian.'
	WHEN rating = 'NC-17' THEN 'No One 17 and Under Admitted.'
END AS rating_description
  FROM film
	INNER JOIN `language` USING (language_id);


	

-- 5

-- CAST and CONVERT can be used interchangeably in most situations
-- Both are used to convert data from one type to another.  Thought their syntax is different, both functions are able to convert values from one formation to another.Anything you can do with CAST you can do with CONVERT.  If you’re wondering whether there is a difference in performance in performance, according to Nakul Vachhrajani’s post, there isn’t.  In fact, Nakul show that CAST is really implemented internally via CONVERT!


SELECT CAST(last_update AS DATE) as only_date
FROM rental;

SELECT CONVERT("2013-09-15", DATETIME);



El ejercicio 4 y 6 no me salen :(
