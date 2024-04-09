select * from pizza_sales;

select 
DATENAME(DW, order_date) AS order_day , COUNT(Distinct order_id) AS Total_order
from pizza_sales
group by DATENAME(DW, order_date);

select 
DATENAME(HOUR, order_time) AS order_hours , COUNT(Distinct order_id) AS Total_order
from pizza_sales
group by DATENAME(HOUR, order_time)
order by DATENAME(HOUR, order_time);


select 
DATENAME(MONTH, order_date) AS order_day , COUNT(Distinct order_id) AS Total_order
from pizza_sales
group by DATENAME(MONTH, order_date)
order by Total_order desc;

select 
pizza_category , CAST ( SUM(total_price) * 100 / (select SUM(total_price) from pizza_sales) AS decimal(10,2)) As Percentage_of_sales
from pizza_sales
Group by pizza_category; 

select 
pizza_size , CAST ( SUM(total_price) * 100 / (select SUM(total_price) from pizza_sales) AS decimal(10,2)) As Percentage_of_sales
from pizza_sales
Group by pizza_size
order by Percentage_of_sales; 

select top 5 pizza_name, SUM(total_price) as revenue_by_pizza_name from pizza_sales
group by pizza_name
order by revenue_by_pizza_name desc;

select top 5 pizza_name, SUM(total_price) as revenue_by_pizza_name from pizza_sales
group by pizza_name
order by revenue_by_pizza_name asc;

select top 5 pizza_name, Count(distinct order_id) as Total_orders from pizza_sales
group by pizza_name
order by Total_orders desc;

select top 5 pizza_name, Count(distinct order_id) as Total_orders from pizza_sales
group by pizza_name
order by Total_orders asc;