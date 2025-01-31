SELECT customer.customer_id, customer.first_name, customer.last_name, COUNT(payment.payment_id) AS total_payments
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY total_payments DESC;
