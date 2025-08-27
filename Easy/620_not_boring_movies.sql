-- Write your PostgreSQL query statement below
select * from Cinema
where id % 2 != 0
and description not like '%boring%'
order by rating desc

/*here we are taking only the odd id by getting the % of id and if not equals to 0 that mean its an odd number.
and we are using like command to get the 'boring' description.*/