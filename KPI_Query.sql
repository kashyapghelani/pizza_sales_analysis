select 
SUM(total_price) As Total_Revenue 
from pizza_sales;

select 
count(Distinct order_id) As Total_Orders 
from pizza_sales;

select 
Sum(quantity) As Total_Pizza_Sold 
from pizza_sales;

select 
CAST(SUM(total_price) / count(Distinct order_id) As decimal(10,2)) As Average_Order_Value 
from pizza_sales;

select 
CAST(SUM(quantity) / CAST(count(Distinct order_id) AS decimal(10,2)) AS decimal(10,2)) As Avg_Pizza_Per_Order
from pizza_sales;