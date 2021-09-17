-- Overall Performance by Year
SELECT 
  year(order_date) as years, sum(sales) as sales, count(order_status) as number_of_order
FROM
  dqlab_sales_store
WHERE
  order_status = 'Order Finished' 
GROUP BY 
  years; 
