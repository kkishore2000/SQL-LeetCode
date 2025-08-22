/*This was the first submission.*/

SELECT name AS Employee
FROM Employee AS e
where salary > (select salary from Employee where id = e.managerId)

/*Here we are using a sub query to get the salary of managerId only and than compare it with the Employee salary.

later i got to know that, the sub query basically has more time complexity because the sub query run for each row in table and then compares the salary.

The better solution is using self join because the databases love joins because they reduce the time complexity.

so here is my second submission...*/

SELECT E.name AS Employee FROM Employee AS E
JOIN Employee AS M ON E.managerId = M.id
WHERE E.salary > M.salary 

