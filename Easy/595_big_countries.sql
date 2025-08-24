-- Write your PostgreSQL query statement below
select name, population, area from World
where area >= 3000000 or population >=25000000

/* we are using where clause to meet the condition and or operator to so that if any of them two condition are true, it will give the result. */