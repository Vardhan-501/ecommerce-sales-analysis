USE ecommerce_sales;

#Total Records
SELECT COUNT(*) AS Total_Records
FROM superstore_clean;

#Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_clean;

#Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore_clean;

#Total Orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore_clean;

#Sales by Category
SELECT
Category,
ROUND(SUM(Sales),2) AS Sales
FROM superstore_clean
GROUP BY Category
ORDER BY Sales DESC;

#Profit by Category
SELECT
Category,
ROUND(SUM(Profit),2) AS Profit
FROM superstore_clean
GROUP BY Category
ORDER BY Profit DESC;

#Sales by Region
SELECT
Region,
ROUND(SUM(Sales),2) AS Sales
FROM superstore_clean
GROUP BY Region
ORDER BY Sales DESC;

#Top 10 Customers
SELECT
`Customer Name`,
ROUND(SUM(Sales),2) AS Sales
FROM superstore_clean
GROUP BY `Customer Name`
ORDER BY Sales DESC
LIMIT 10;

#Top 10 Products
SELECT
`Product Name`,
ROUND(SUM(Sales),2) AS Sales
FROM superstore_clean
GROUP BY `Product Name`
ORDER BY Sales DESC
LIMIT 10;