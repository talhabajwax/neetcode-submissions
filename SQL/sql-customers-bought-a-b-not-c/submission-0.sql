SELECT c.customer_id, c.customer_name
FROM customers c
JOIN orders o
    ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(DISTINCT CASE
           WHEN o.product_name IN ('A', 'B', 'D')
           THEN o.product_name
       END) = 3
   AND COUNT(CASE
           WHEN o.product_name = 'C'
           THEN 1
       END) = 0;