select x, y, z,
    CASE 
        when x + y > z and y + z > x and z + x > y then 'Yes'
        else 'No'
    end as triangle
from Triangle

/*
we are using case here, because this a typical if-else type problem.
here we to check if the x, y, z values can form a triangle, we are checking if any 2 sides sum is bigger than the third one.
if yes then its a triangle otherwise, its not.*/

