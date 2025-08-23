--first thied this query:


DELETE FROM Person
WHERE id IN (SELECT MAX(id) FROM Person
GROUP BY email
having count(*) > 1) 

--realised that it will basically delete the max id only. but what if there are more than 2 duplicated than this logic does not work.

--so i tweaked it a little bit:

DELETE FROM Person
WHERE id NOT IN (SELECT MIN(id) FROM Person
GROUP BY email
having count(*) > 1) 

--here what i did was i kept only the min id and deleted the rest. but this logic was also flawed because it delete everything except the min id even those emails who are distinct.

--then finally this logic got accepted:

DELETE FROM Person
WHERE id NOT IN (SELECT min_id FROM (SELECT MIN(id) as min_id from Person
GROUP BY email))

--here we are using subquery under a subquery to get only of min id of all the email and delete everything else.