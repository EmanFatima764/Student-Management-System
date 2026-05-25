use schooldb;

-- show all students
select * from students;

-- show only name and email
select first_name,last_name,email from students;

-- sort students by first name
select * from students order by first_name asc;

--  Count Total Students
SELECT COUNT(*) AS TOTAL_STUDENTS FROM STUDENTS;

--  Find Number of Students in Each Department
select dep_name , count(*)as total_student from departments group by dep_name;

