SELECT 
	date,
    name AS payment_method,
    amount AS total_payments
FROM payments
JOIN payment_methods 
ON payment_methods.payment_method_id = payments.payment_method
GROUP BY total_payments
ORDER BY date DESC