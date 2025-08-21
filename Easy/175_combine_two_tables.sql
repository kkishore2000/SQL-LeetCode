SELECT firstName, lastName, city, state from Person p 
LEFT JOIN Address a on a.personId = p.personId

/* 
we are using left join to get all of left table - Person + matching one from right table - Address

we can use right join as well if we assum the Person table as right & the Address table as left.
*/