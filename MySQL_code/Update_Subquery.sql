UPDATE orders
SET 
	comments = 'Gold customer'

	## WHERE client_id = 
	##	(SELECT client_id
	##	FROM clients
	##	WHERE name = "Mywork") 
    
    WHERE customer_id IN 
	 (SELECT customer_id
	 FROM customers
	 WHERE points > 3000 )