-- Write your PostgreSQL query statement below
select w1.id from Weather as w1
join Weather as w2 on w2.recorddate + 1 = w1.recorddate
where w1.temperature > w2.temperature

/*we can join on + 1, -1 values too. */

/*even though this query passed all the test cases and it was accepted but if the question was asked to find the droping temperature then this query would have not compared the id = 1 because it basically compared w1.id = w2.id + 1, that mean even if the id =1 had less temperature than id = 2, still it would not return the id = 1*/