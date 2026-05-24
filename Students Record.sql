


-- =========================================
-- Insert Sample Data
-- =========================================

-- Departments
INSERT INTO Departments (dep_name)
VALUES
('Computer Science'),
('Business Administration'),
('Electrical Engineering');
*/

-- Students
INSERT INTO Students
(first_name, last_name, gender, date_of_birth, email, PhoneNumber, address, EnrollmentDate,status, dep_id)
VALUES
('Ali', 'Khan', 'Male', '2002-05-10', 'ali.khan@gmail.com', '03001234567', 'Rawalpindi', '2024-01-15', 'active',1),
('Sara', 'Ahmed', 'Female', '2001-08-22', 'sara.ahmed@gmail.com', '03111234567', 'Islamabad', '2024-01-15','suspended', 2);

-- Teachers
INSERT INTO Teachers
(first_name, last_name, email, phone, hire_date, dep_id)
VALUES
('Usman', 'Raza', 'usman.raza@example.com', '03211234567', '2020-06-01', 1),
('Ayesha', 'Malik', 'ayesha.malik@example.com', '03331234567', '2019-09-10', 2);

-- Courses
INSERT INTO Courses
(course_name, course_code, credit_hours, dep_id, teacher_id)
VALUES
('Database Systems', 'CS301', 3, 1, 1),
('Business Management', 'BA201', 3, 2, 2);

-- Enrollments
INSERT INTO Enrollments
(student_id, course_id, enrollment_date, grade)
VALUES
(1, 1, '2024-02-01', 'A'),
(2, 2, '2024-02-01', 'B+');
    
   
    

    
    
