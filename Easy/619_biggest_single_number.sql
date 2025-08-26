-- Write your PostgreSQL query statement below
select MAX(num) as num from MyNumbers
where num in (select num from MyNumbers
    group by num
    having count(num) = 1)


/*what we are doing here is, we are using a sub query to calculate which numbers count is 1 which mean, those numbers who appeared only once. and then out of those number, we use the MAX function to get the biggest number.*/