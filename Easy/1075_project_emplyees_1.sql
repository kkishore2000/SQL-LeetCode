-- Write your PostgreSQL query statement below
select project_id, avg(experience_years)::NUMERIC(10,2) as average_years from Project as P
left join Employee as E on E.employee_id = P.employee_id
group by project_id

/*here we have used the avg function and we using the numeric(10, 2) to get the average till 2 decimals only. */