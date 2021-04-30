# start by the easy query 
SELECT 
	pm.name AS paymeny_method,
    SUM(amount) AS total
   
FROM payments p
JOIN payment_methods pm 
ON p.payment_method = pm.payment_method_id
# cannot use where after group by 

GROUP BY 
	paymeny_method
WITH ROLLUP
# rollup is for mysql 