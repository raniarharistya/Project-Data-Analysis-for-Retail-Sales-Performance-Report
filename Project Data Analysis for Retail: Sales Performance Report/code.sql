-- Overall Performance by Year
SELECT 
  year(order_date) as years, sum(sales) AS sales, count(order_status) AS number_of_order
FROM
