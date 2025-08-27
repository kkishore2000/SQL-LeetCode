-- Write your PostgreSQL query statement below
update Salary set sex = 
    case sex
        when 'm' then 'f'
        when 'f' then 'm'
    end


/*we are using case to solve this problem. we use case in such situations, where wwe have a if-else type condition.*/