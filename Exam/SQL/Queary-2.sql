SELECT 
    customer_number
FROM
    orders
GROUP BY customer_number
HAVING COUNT(*) >= 2;