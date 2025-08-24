-- Write your PostgreSQL query statement below
select name from Customer
where referee_id is null or referee_id != 2

/* we use where clause to meet the conditions and or operator because we had to meet either of these two condition.