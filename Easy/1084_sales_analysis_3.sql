-- Write your PostgreSQL query statement below
select distinct P.product_id, P.product_name from Product as P
left join Sales as S on S.product_id = P.product_id
group by P.product_id, P.product_name
having min(sale_date) >= '2019-01-01' and max(sale_date) <= '2019-03-31'


/*we need to get the product_id and name from the fist quarter only, i used between clause with dates to get the result from 1st quarter but there were some sales which happened on other querters too, so thats why we used the min and max function instead */