-- Write your PostgreSQL query statement below
select distinct sp.name from salesperson as sp
where sp.sales_id not in (select  distinct O.sales_id from Orders as O
join company as com on com.com_id = O.com_id
where com.name = 'RED')

/* we are fetching the sales_id which has sold to the RED company and then we are showing names which are not associated with those sales_id. with the help of subqueries*/