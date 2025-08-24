-- Write your PostgreSQL query statement below
select customer_number from orders
group by customer_number
order by count(*) desc
limit 1

/* at first, i made a mistake of not using order by clause.
and that why it was giving wrong results.

then we used group by clause to make the bundle of order for same customer, we used order by and count to count the orders and then to ordered them in desc order and used the function limit to get the top or largest orders from customer. */