SELECT * 
FROM sql_store.order_items odi
JOIN sql_store.products pd
ON odi.product_id = pd.product_id