-- Write your PostgreSQL query statement below
select 
    Students.student_id, 
    Students.student_name, 
    Subjects.subject_name, 
    count(Examinations.subject_name) as attended_exams 
from Students
cross join Subjects
left join Examinations 
    on Examinations.student_id = Students.student_id
    and Examinations.subject_name = Subjects.subject_name
group by Students.student_id, Students.student_name, Subjects.subject_name
order by Students.student_id, Subjects.subject_name

/*
we need to make sure that we consider each student and each subject's combinations.

cross join basically pairs you every row of table 1 to every row of table 2.
*/