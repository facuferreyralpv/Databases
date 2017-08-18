-- 1: Write a function that returns the amount of copies of a film in sakila-db. Pass either the film id or the film name

SELECT COUNT(DISTINCT film_id)
FROM inventory
WHERE store_id=2;


SELECT COUNT(*)
FROM inventory
INNER JOIN store USING(store_id)
INNER JOIN film USING(film_id)
WHERE film_id=29
AND store_id=2;



CREATE FUNCTION Contador(p_pelis INT,p_store INT) RETURNS INT(2)
BEGIN
    DECLARE asd INT(2);
	SELECT COUNT(*) 
	FROM inventory
	INNER JOIN store USING(store_id)
	INNER JOIN film USING(film_id)
	WHERE film_id=p_pelis
	AND store_id = p_store;
    RETURN (asd);
END

SELECT Contador(29,1);


-- 2: Write a stored procedure that returns a list of customer first and last names 
-- separated by ";", that live in a certain country. You pass the country it gives you the list of people living there.


CREATE PROCEDURE build_name_list (IN p_country VARCHAR(10), OUT name_list VARCHAR(4000))
BEGIN
	DECLARE v_finished INTEGER DEFAULT 0;
	DECLARE v_name VARCHAR(100) DEFAULT "";
	DECLARE v_second VARCHAR(100) DEFAULT "";

    DEClARE name_cursor CURSOR FOR 
    SELECT first_name, last_name
    FROM customer
    INNER JOIN address USING(address_id)
    INNER JOIN city USING(city_id)
    INNER JOIN country USING(country_id)
    WHERE country=p_country;

    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;

    OPEN name_cursor;

    get_name: LOOP

        FETCH name_cursor INTO v_name,v_second;

        IF v_finished = 1 THEN 
            LEAVE get_name;
        END IF;

        SET name_list = CONCAT(v_name," ",v_second," ; ",name_list);

    END LOOP get_name;

    CLOSE name_cursor;

END

SET @name_list ="";
CALL build_name_list('Argentina',@name_list);
SELECT @name_list;
