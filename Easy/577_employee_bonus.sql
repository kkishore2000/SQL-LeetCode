-- Write your PostgreSQL query statement below
select E.name, B.bonus from Employee as E
left join bonus as B on B.empId = E.empId
where bonus < 1000 or bonus is null

/* we are using left join to get all of left table which is employee and matching of right table which is bonus.
then we are using where clause to filter the results for those who got less than 1000. */