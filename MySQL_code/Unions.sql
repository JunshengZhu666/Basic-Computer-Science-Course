SELECT 
	customer_id,
    first_name,
    points,
    'BRANCE' AS type
FROM sql_store.customers
WHERE points < 1000 

UNION 

SELECT 
	customer_id,
    first_name,
    points,
    'SLIVER' AS type 
FROM sql_store.customers
WHERE 2000> points > 1000 

UNION 

SELECT 
	customer_id,
    first_name,
    points,
    'GOLD' AS type
FROM sql_store.customers
WHERE 3000> points > 2000