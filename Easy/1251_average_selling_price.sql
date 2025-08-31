-- Write your PostgreSQL query statement below
select P.product_id, COALESCE(round(sum(P.price * U.units*1.00)/sum(U.units*1.00), 2), 0) as average_price from Prices as P
left Join UnitsSold as U on U.Product_id = P.Product_id
and U.purchase_date between P.start_date and P.end_date
group by P.product_id


/*here we are using left join and putting the condition with the join and not using where clause, and to get the average price 0 for never sold products, we are using coalesce function which is using to return a value if there is null.*/