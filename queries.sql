use schooldb;
-- show all students
select * from students;
-- show only name and email
select first_name,last_name,email from students;
-- sort students by first name
select * from students order by first_name asc;

