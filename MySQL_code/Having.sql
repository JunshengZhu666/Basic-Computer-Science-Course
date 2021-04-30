# start by the easy query 
SELECT 
	client_id,
    SUM(invoice_total) AS total_sales
   
FROM invoices
# cannot use where after group by 
GROUP BY client_id
HAVING total_sales > 500 