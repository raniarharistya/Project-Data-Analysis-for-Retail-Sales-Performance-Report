-- Promotion Effectiveness and Efficiency by Years
SELECT 
	YEAR(order_date) AS years, 
	SUM(sales) AS sales, 
	SUM(discount_value) AS promotion_value, 
	ROUND((SUM(discount_value)/SUM(sales)*100),2) AS burn_rate_percentage
FROM 
	dqlab_sales_store 
WHERE 
	order_status = 'Order Finished' 
GROUP BY
	years
ORDER BY
	years, burn_rate_percentage;
  
-- Promotion Effectiveness and Efficiency by Product Sub Category
SELECT
	YEAR(order_date) AS years,
	product_sub_category,
	product_category,
	SUM(sales) AS sales,
	SUM(discount_value) AS promotion_value,
	ROUND((SUM(discount_value)/sSUMum(sales)*100),2) AS burn_rate_percentage
FROM 
	dqlab_sales_store
WHERE
	YEAR(order_date) = 2012 and
	order_status = 'Order Finished'
GROUP BY
	years, product_sub_category, product_category
ORDER BY
	sales desc;
