/*create database schooldb;*/
use schooldb;
# Departments Table
/*Create Table Departments(
dep_id INT PRIMARY KEY AUTO_INCREMENT,
dep_name varchar(55) not null UNIQUE
);
CREATE TABLE Students(
   std_id int Primary key auto_increment ,
   first_name varchar(55) not null,
   last_name varchar(55) not null,
   Date_of_Birth date not null,
   gender enum("MALE","FEMALE","Others"),
   email varchar(122)  UNIQUE,
   PhoneNumber  varchar(55) UNIQUE,
   Address  TEXT  not null,
   EnrollmentDate date default CURRENT_DATE,
   Status enum("Active", "Graduated", "Suspended"),
    dep_id INT,
    
    FOREIGN KEY(dep_id)
        REFERENCES DEPARTMENTS(dep_id) 
    ON DELETE SET NULL
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    hire_date DATE DEFAULT CURRENT_DATE,
    dep_id INT,

    FOREIGN KEY (dep_id)
        REFERENCES Departments(dep_id)
        ON DELETE SET NULL
);

CREATE TABLE COURSES(
COURSE_ID INT PRIMARY KEY AUTO_INCREMENT,
COURSE_NAME VARCHAR(255) NOT NULL,
COURSE_CODE  VARCHAR(255) UNIQUE NOT NULL,
CREDIT_HOURS INT NOT NULL,
dep_id int,
teacher_id int,

    
FOREIGN KEY(dep_id)
    REFERENCES DEPARTMENTS(dep_id)
    ON DELETE SET NULL,

FOREIGN KEY(teacher_id)
    REFERENCES TEACHERS(teacher_id)
    ON DELETE SET NULL
);


CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT UNIQUE NOT NULL,
    course_id INT UNIQUE NOT NULL,
    enrollment_date DATE,
    grade VARCHAR(5),

    FOREIGN KEY (student_id)
        REFERENCES Students(std_id)
        ON DELETE CASCADE,

    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
        ON DELETE CASCADE,
    UNIQUE(student_id,course_id)

);


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
    
   
    

    
    
