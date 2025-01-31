SELECT first_name
FROM actor
WHERE first_name NOT IN (SELECT first_name FROM customer)
ORDER BY first_name;
