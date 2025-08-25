-- Write your PostgreSQL query statement below
select class from Courses
group by class
having count(*) >= 5

/* we use the group by clause to cluster classes and then use the having funvtion to fetch classes having more than 5 students*/