/*Made a mistake at first, i search for the C.id IS NULL which is simply not possible since id is primary key.*/

/*later realised that that if we are useing the left join then we searchin for a missing value in the right table and vise versa */


SELECT C.name AS Customers FROM Customers AS C
LEFT JOIN Orders AS O ON C.id = O.customerId
WHERE O.customerId IS NULL