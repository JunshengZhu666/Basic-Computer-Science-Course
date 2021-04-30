SELECT 
	MAX(invoice_total) As highest,
    MIN(invoice_total) As lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total * 1.1) AS total,
    COUNT(DISTINCT invoice_total) AS number_of_invoice, #return with non-null
    COUNT(payment_date) AS count_of_payment_date,
    COUNT(*) AS total_records #return all 
FROM invoices
WHERE invoice_date > '2019-07-01'
