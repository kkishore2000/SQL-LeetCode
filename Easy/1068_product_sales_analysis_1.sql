-- Write your PostgreSQL query statement below
select product_name, year, price from sales as S
left join product as P on P.product_id = S.product_id

/*we are using left join to get all the data from the sales table and matching data from product table.*/