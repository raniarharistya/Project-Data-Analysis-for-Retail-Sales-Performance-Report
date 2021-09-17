-- Overall Performance by Year
SELECT 
  YEAR(order_date) as years, 
  SUM(sales) as sales, 
  count(order_status) as number_of_order
FROM
  dqlab_sales_store
WHERE
  order_status = 'Order Finished' 
GROUP BY 
  years; 
  
 -- Overall Performance by Product Sub Category
 SELECT 
	YEAR(order_date) AS years, 
	product_sub_category, 
	SUM(sales) AS sales 
FROM 
	dqlab_sales_store 
WHERE 
	YEAR(order_date) BETWEEN 2011 AND 2012 AND 
	order_status = 'Order Finished' 
GROUP BY 
	years, product_sub_category
ORDER BY 
	years asc, sales desc;

