-- Top 5 Products by Revenue
SELECT product_name,
       SUM(sales) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

-- Monthly Sales Growth
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(sales) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;

-- Region-wise Profit
SELECT region,
       SUM(profit) AS total_profit
FROM sales
GROUP BY region;

-- Customer Lifetime Value
SELECT customer_id,
       SUM(sales) AS lifetime_value
FROM sales
GROUP BY customer_id
ORDER BY lifetime_value DESC;
