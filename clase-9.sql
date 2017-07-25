SELECT c.customer_id, first_name, last_name, COUNT(*)
FROM rental r1, customer c 
WHERE c.customer