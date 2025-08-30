-- Write your PostgreSQL query statement below
select 
    query_name, 
    round(sum(rating::numeric/position)/count(query_name),2) as quality,
    round(100.0 * sum(case when rating < 3 then 1 else 0 End)/count(query_name) ,2) as poor_query_percentage
from Queries
where query_name is not null
group by query_name


/*
we are using sum function to fetch the value based to the logic given in the question. and we are using round function becasue we have to get the result in 2 decimal values.

we have used group by clause to make sure that all same query_name get one.
*/