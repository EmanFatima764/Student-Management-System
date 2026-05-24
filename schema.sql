-- Create Database

create database schooldb;

--Use Database 

use schooldb;

-- create Departments Table

Create Table Departments(
dep_id INT PRIMARY KEY AUTO_INCREMENT,
dep_name varchar(55) not null UNIQUE
);

-- CREATE TABLE Students


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

-- CREATE TABLE Teachers 

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

-- Create  Table  Courses

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

-- Create Tbale Enrollments

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
