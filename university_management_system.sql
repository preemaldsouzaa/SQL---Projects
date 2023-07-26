show databases;

#Creating Databases:
create database university_management_system;
use university_management_system;

#Creating Tables:
create table Students(
student_id int primary key,
first_name varchar(50),
last_name varchar(50),
date_of_birth date,
email varchar (100),
phone_number varchar(20),
address varchar(200),
department_id int,
foreign key (department_id) references Departments(department_id)
);

CREATE TABLE Departments(
  department_id int primary key,
  department_name varchar(100)
);

create table Professors(
professor_id int primary key,
first_name varchar(50),
last_name varchar(50),
date_of_birth date,
email varchar (100),
phone_number varchar(20),
address varchar(200),
department_id int,
foreign key (department_id) references Departments (department_id)
);

create table Courses(
course_id int primary key,
course_name int,
department_id int,
professor_id int,
foreign key(department_id) references Departments (department_id),
foreign key(professor_id) references Professors(professor_id)
);

create table Enrollments(
enrollment_id int primary key,
student_id int,
course_id int,
enrollment_date Date,
foreign key(student_id) references Students(student_id),
foreign key(course_id) references Courses(course_id)
);

#Inserting Values in the Table:
INSERT INTO Departments(department_id, department_name)
VALUES
  (1, 'Computer Science'),
  (2, 'Electrical Engineering'),
  (3, 'Mechanical Engineering'),
  (4, 'Business Administration'),
  (5, 'Psychology'),
  (6, 'Biology');
  
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email, phone_number, address, department_id)
VALUES
  (1, 'John', 'Doe', '1990-01-01', 'john.doe@example.com', '1234567890', '123 Main St', 1),
  (2, 'Jane', 'Smith', '1992-05-15', 'jane.smith@example.com', '9876543210', '456 Elm St', 2),
  (3, 'Michael', 'Johnson', '1991-07-10', 'michael.johnson@example.com', '5551234567', '789 Oak St', 3),
  (4, 'Emily', 'Brown', '1993-03-20', 'emily.brown@example.com', '1111111111', '111 Pine St', 4),
  (5, 'Jessica', 'Miller', '1994-06-30', 'jessica.miller@example.com', '2222222222', '222 Maple St', 5),
  (6, 'Andrew', 'Davis', '1990-09-25', 'andrew.davis@example.com', '3333333333', '333 Oak St', 6),
  (7, 'David', 'Wilson', '1991-02-12', 'david.wilson@example.com', '4444444444', '444 Cedar St', 1),
  (8, 'Olivia', 'Anderson', '1993-11-05', 'olivia.anderson@example.com', '5555555555', '555 Pine St', 2),
  (9, 'Sophia', 'Taylor', '1994-08-18', 'sophia.taylor@example.com', '6666666666', '666 Maple St', 3),
  (10, 'Jacob', 'Thomas', '1992-12-09', 'jacob.thomas@example.com', '7777777777', '777 Oak St', 4),
  (11, 'Emily', 'Robinson', '1993-04-16', 'emily.robinson@example.com', '8888888888', '888 Cedar St', 5),
  (12, 'Matthew', 'White', '1991-06-23', 'matthew.white@example.com', '9999999999', '999 Elm St', 6),
  (13, 'Abigail', 'Hall', '1994-03-07', 'abigail.hall@example.com', '1234567890', '123 Pine St', 1),
  (14, 'Alexander', 'Young', '1993-07-29', 'alexander.young@example.com', '9876543210', '456 Maple St', 2),
  (15, 'Samantha', 'King', '1990-09-15', 'samantha.king@example.com', '5551234567', '789 Oak St', 3),
  (16, 'William', 'Wright', '1992-02-18', 'william.wright@example.com', '1111111111', '111 Cedar St', 4),
  (17, 'Elizabeth', 'Allen', '1991-05-10', 'elizabeth.allen@example.com', '2222222222', '222 Elm St', 5),
  (18, 'Daniel', 'Hill', '1994-08-05', 'daniel.hill@example.com', '3333333333', '333 Pine St', 6),
  (19, 'Grace', 'Baker', '1993-11-23', 'grace.baker@example.com', '4444444444', '444 Maple St', 1),
  (20, 'Christopher', 'Morris', '1990-12-15', 'christopher.morris@example.com', '5555555555', '555 Oak St', 2),
  (21, 'Chloe', 'Harris', '1992-03-19', 'chloe.harris@example.com', '6666666666', '666 Cedar St', 3),
  (22, 'Andrew', 'Clark', '1991-07-02', 'andrew.clark@example.com', '7777777777', '777 Elm St', 4),
  (23, 'Madison', 'Lewis', '1994-01-14', 'madison.lewis@example.com', '8888888888', '888 Maple St', 5),
  (24, 'Liam', 'Walker', '1993-04-28', 'liam.walker@example.com', '9999999999', '999 Pine St', 6),
  (25, 'Ava', 'Young', '1990-08-09', 'ava.young@example.com', '1234567890', '123 Oak St', 1),
  (26, 'Mason', 'Turner', '1992-11-22', 'mason.turner@example.com', '9876543210', '456 Cedar St', 2),
  (27, 'Ella', 'Garcia', '1991-03-05', 'ella.garcia@example.com', '5551234567', '789 Elm St', 3),
  (28, 'Henry', 'Martinez', '1993-06-19', 'henry.martinez@example.com', '1111111111', '111 Pine St', 4),
  (29, 'Victoria', 'Lopez', '1994-09-30', 'victoria.lopez@example.com', '2222222222', '222 Cedar St', 5),
  (30, 'Samuel', 'Gonzalez', '1990-11-25', 'samuel.gonzalez@example.com', '3333333333', '333 Elm St', 6),
  (31, 'Sophia', 'Parker', '1992-04-18', 'sophia.parker@example.com', '4444444444', '444 Maple St', 1),
  (32, 'Joseph', 'Evans', '1991-07-01', 'joseph.evans@example.com', '5555555555', '555 Oak St', 2),
  (33, 'Scarlett', 'Morgan', '1994-02-14', 'scarlett.morgan@example.com', '6666666666', '666 Pine St', 3),
  (34, 'Benjamin', 'Hughes', '1993-05-28', 'benjamin.hughes@example.com', '7777777777', '777 Elm St', 4),
  (35, 'Grace', 'Butler', '1990-09-12', 'grace.butler@example.com', '8888888888', '888 Cedar St', 5),
  (36, 'Christopher', 'Reed', '1992-01-26', 'christopher.reed@example.com', '9999999999', '999 Maple St', 6),
  (37, 'Avery', 'Ward', '1994-04-09', 'avery.ward@example.com', '1234567890', '123 Pine St', 1),
  (38, 'Amelia', 'Cook', '1993-08-21', 'amelia.cook@example.com', '9876543210', '456 Elm St', 2),
  (39, 'Daniel', 'Bell', '1990-10-15', 'daniel.bell@example.com', '5551234567', '789 Oak St', 3),
  (40, 'Harper', 'Harrison', '1992-02-28', 'harper.harrison@example.com', '1111111111', '111 Cedar St', 4),
  (41, 'Evelyn', 'Bennett', '1991-06-11', 'evelyn.bennett@example.com', '2222222222', '222 Elm St', 5),
  (42, 'Andrew', 'Gray', '1994-01-24', 'andrew.gray@example.com', '3333333333', '333 Pine St', 6),
  (43, 'Scarlett', 'Alexander', '1993-05-08', 'scarlett.alexander@example.com', '4444444444', '444 Maple St', 1),
  (44, 'William', 'Watson', '1990-07-21', 'william.watson@example.com', '5555555555', '555 Oak St', 2),
  (45, 'Lily', 'Brooks', '1992-12-04', 'lily.brooks@example.com', '6666666666', '666 Cedar St', 3),
  (46, 'Samuel', 'Mitchell', '1991-04-17', 'samuel.mitchell@example.com', '7777777777', '777 Elm St', 4),
  (47, 'Sophia', 'Perez', '1994-08-30', 'sophia.perez@example.com', '8888888888', '888 Maple St', 5),
  (48, 'Henry', 'Sanchez', '1993-11-13', 'henry.sanchez@example.com', '9999999999', '999 Pine St', 6),
  (49, 'Amelia', 'Rivera', '1990-08-26', 'amelia.rivera@example.com', '1234567890', '123 Oak St', 1),
  (50, 'Evelyn', 'Foster', '1992-11-08', 'evelyn.foster@example.com', '9876543210', '456 Cedar St', 2),
  (51, 'Nathan', 'Baker', '1994-02-12', 'nathan.baker@example.com', '3333333333', '333 Pine St', 3),
  (52, 'Charlotte', 'Morris', '1993-06-27', 'charlotte.morris@example.com', '4444444444', '444 Maple St', 4),
  (53, 'Henry', 'Harris', '1991-09-05', 'henry.harris@example.com', '5555555555', '555 Oak St', 5),
  (54, 'Ella', 'Clark', '1990-12-18', 'ella.clark@example.com', '6666666666', '666 Cedar St', 6),
  (55, 'Aiden', 'Lewis', '1992-04-03', 'aiden.lewis@example.com', '7777777777', '777 Elm St', 1),
  (56, 'Olivia', 'Walker', '1993-08-16', 'olivia.walker@example.com', '8888888888', '888 Maple St', 2),
  (57, 'Liam', 'Young', '1991-11-28', 'liam.young@example.com', '9999999999', '999 Pine St', 3),
  (58, 'Mia', 'Turner', '1990-03-12', 'mia.turner@example.com', '1234567890', '123 Oak St', 4),
  (59, 'Lucas', 'Garcia', '1992-06-25', 'lucas.garcia@example.com', '9876543210', '456 Cedar St', 5),
  (60, 'Avery', 'Martin', '1994-09-09', 'avery.martin@example.com', '5551234567', '789 Elm St', 6),
  (61, 'Abigail', 'Baker', '1993-01-22', 'abigail.baker@example.com', '1111111111', '111 Pine St', 1),
  (62, 'Jackson', 'Morris', '1991-05-06', 'jackson.morris@example.com', '2222222222', '222 Maple St', 2),
  (63, 'Madison', 'Harris', '1990-08-19', 'madison.harris@example.com', '3333333333', '333 Oak St', 3),
  (64, 'Logan', 'Clark', '1992-11-01', 'logan.clark@example.com', '4444444444', '444 Cedar St', 4),
  (65, 'Chloe', 'Lewis', '1993-03-15', 'chloe.lewis@example.com', '5555555555', '555 Elm St', 5),
  (66, 'Ethan', 'Walker', '1991-06-29', 'ethan.walker@example.com', '6666666666', '666 Maple St', 6),
  (67, 'Isabella', 'Young', '1994-10-12', 'isabella.young@example.com', '7777777777', '777 Pine St', 1),
  (68, 'Noah', 'Turner', '1993-01-25', 'noah.turner@example.com', '8888888888', '888 Oak St', 2),
  (69, 'Sophia', 'Garcia', '1990-05-09', 'sophia.garcia@example.com', '9999999999', '999 Cedar St', 3),
  (70, 'Liam', 'Martin', '1992-08-22', 'liam.martin@example.com', '1234567890', '123 Elm St', 4),
  (71, 'Ava', 'Baker', '1991-12-05', 'ava.baker@example.com', '9876543210', '456 Pine St', 5),
  (72, 'Lucas', 'Morris', '1990-02-18', 'lucas.morris@example.com', '5551234567', '789 Maple St', 6),
  (73, 'Mia', 'Harris', '1992-06-04', 'mia.harris@example.com', '1111111111', '111 Oak St', 1),
  (74, 'Logan', 'Clark', '1993-09-17', 'logan.clark@example.com', '2222222222', '222 Cedar St', 2),
  (75, 'Charlotte', 'Lewis', '1991-12-30', 'charlotte.lewis@example.com', '3333333333', '333 Elm St', 3),
  (76, 'Oliver', 'Walker', '1990-04-13', 'oliver.walker@example.com', '4444444444', '444 Maple St', 4),
  (77, 'Amelia', 'Young', '1992-07-26', 'amelia.young@example.com', '5555555555', '555 Oak St', 5),
  (78, 'Elijah', 'Turner', '1993-11-08', 'elijah.turner@example.com', '6666666666', '666 Cedar St', 6),
  (79, 'Avery', 'Martin', '1991-02-21', 'avery.martin@example.com', '7777777777', '777 Elm St', 1),
  (80, 'Scarlett', 'Baker', '1994-05-06', 'scarlett.baker@example.com', '8888888888', '888 Pine St', 2);
  

INSERT INTO Professors (professor_id, first_name, last_name, email, phone_number, department_id)
VALUES
  (1, 'Robert', 'Johnson', 'robert.johnson@example.com', '1111111111', 1),
  (2, 'Jennifer', 'Smith', 'jennifer.smith@example.com', '2222222222', 2),
  (3, 'Christopher', 'Davis', 'christopher.davis@example.com', '3333333333', 3),
  (4, 'Emily', 'Anderson', 'emily.anderson@example.com', '4444444444', 4),
  (5, 'Daniel', 'Wilson', 'daniel.wilson@example.com', '5555555555', 5),
  (6, 'Jessica', 'Martinez', 'jessica.martinez@example.com', '6666666666', 6),
  (7, 'Matthew', 'Taylor', 'matthew.taylor@example.com', '7777777777', 1),
  (8, 'Sophia', 'Miller', 'sophia.miller@example.com', '8888888888', 6);

#Changing Data Type of the Column:
ALTER TABLE Courses
MODIFY COLUMN course_name varchar(100);

INSERT INTO Courses(course_id, course_name, department_id, professor_id)
VALUES
  (1, 'Introduction to Computer Science', 1, 1),
  (2, 'Circuit Analysis', 2, 2),
  (3, 'Mechanical Systems Design', 3, 3),
  (4, 'Principles of Business Administration', 4, 4),
  (5, 'Introduction to Psychology', 5, 5),
  (6, 'Cellular Biology', 6, 6),
  (7, 'Data Structures and Algorithms', 1, 7),
  (8, 'Digital Electronics', 2, 8),
  (9, 'Thermodynamics', 3, 1),
  (10, 'Financial Accounting', 4, 2),
  (11, 'Abnormal Psychology', 5, 3),
  (12, 'Genetics', 6, 4),
  (13, 'Software Engineering', 1, 5),
  (14, 'Power Systems', 2, 6),
  (15, 'Fluid Mechanics', 3, 7),
  (16, 'Marketing Management', 4, 8);
  
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES
  (1, 1, 1, '2000-01-01'),
  (2, 2, 2, '2000-05-15'),
  (3, 3, 3, '2000-07-10'),
  (4, 4, 4, '2000-03-20'),
  (5, 5, 5, '2000-06-30'),
  (6, 6, 6, '2000-09-25'),
  (7, 7, 7, '2001-02-12'),
  (8, 8, 8, '2001-11-05'),
  (9, 9, 9, '2001-08-18'),
  (10, 10, 10, '2001-12-09'),
  (11, 11, 11, '2001-04-16'),
  (12, 12, 12, '2001-06-23'),
  (13, 13, 13, '2000-03-07'),
  (14, 14, 14, '2000-07-29'),
  (15, 15, 15, '2000-09-15'),
  (16, 16, 16, '2000-02-18'),
  (17, 17, 1, '2000-01-01'),
  (18, 18, 2, '2000-05-15'),
  (19, 19, 3, '2000-07-10'),
  (20, 20, 4, '2000-03-20'),
  (21, 21, 5, '2000-06-30'),
  (22, 22, 6, '2000-09-25'),
  (23, 23, 7, '2001-02-12'),
  (24, 24, 8, '2001-11-05'),
  (25, 25, 9, '2001-08-18'),
  (26, 26, 10, '2001-12-09'),
  (27, 27, 11, '2001-04-16'),
  (28, 28, 12, '2001-06-23'),
  (29, 29, 13, '2000-03-07'),
  (30, 30, 14, '2000-07-29'),
  (31, 31, 15, '2000-09-15'),
  (32, 32, 16, '2000-02-18'),
  (33, 33, 1, '2000-01-01'),
  (34, 34, 2, '2000-05-15'),
  (35, 35, 3, '2000-07-10'),
  (36, 36, 4, '2000-03-20'),
  (37, 37, 5, '2000-06-30'),
  (38, 38, 6, '2000-09-25'),
  (39, 39, 7, '2001-02-12'),
  (40, 40, 8, '2001-11-05'),
  (41, 41, 9, '2001-08-18'),
  (42, 42, 10, '2001-12-09'),
  (43, 43, 11, '2001-04-16'),
  (44, 44, 12, '2001-06-23'),
  (45, 45, 13, '2000-03-07'),
  (46, 46, 14, '2000-07-29'),
  (47, 47, 15, '2000-09-15'),
  (48, 48, 16, '2000-02-18'),
  (49, 49, 1, '2000-01-01'),
  (50, 50, 2, '2000-05-15'),
  (51, 51, 3, '2000-07-10'),
  (52, 52, 4, '2000-03-20'),
  (53, 53, 5, '2000-06-30'),
  (54, 54, 6, '2000-09-25'),
  (55, 55, 7, '2001-02-12'),
  (56, 56, 8, '2001-11-05'),
  (57, 57, 9, '2001-08-18'),
  (58, 58, 10, '2001-12-09'),
  (59, 59, 11, '2001-04-16'),
  (60, 60, 12, '2001-06-23'),
  (61, 61, 13, '2000-03-07'),
  (62, 62, 14, '2000-07-29'),
  (63, 63, 15, '2000-09-15'),
  (64, 64, 16, '2000-02-18'),
  (65, 65, 1, '2000-01-01'),
  (66, 66, 2, '2000-05-15'),
  (67, 67, 3, '2000-07-10'),
  (68, 68, 4, '2000-03-20'),
  (69, 69, 5, '2000-06-30'),
  (70, 70, 6, '2000-09-25'),
  (71, 71, 7, '2001-02-12'),
  (72, 72, 8, '2001-11-05'),
  (73, 73, 9, '2001-08-18'),
  (74, 74, 10, '2001-12-09'),
  (75, 75, 11, '2001-04-16'),
  (76, 76, 12, '2001-06-23'),
  (77, 77, 13, '2000-03-07'),
  (78, 78, 14, '2000-07-29'),
  (79, 79, 15, '2000-09-15'),
  (80, 80, 16, '2000-02-18');
  
#Performing Queries:

#Checking our Tables:
select*from students;
select* from professors;
select*from courses;
select*from departments;
select*from enrollments;

#Retrive all courses taught by a specific Professor:
select course_id, course_name from Courses where professor_id=8;

#Retrive all enrolled courses for a specific student:
select courses.* from Courses
inner join enrollments on courses.course_id=enrollments.course_id
where enrollments.student_id=34;

#Retrive the department name for a specific course:
select Departments.department_name from Departments
inner join Courses on Departments.department_id=courses.department_id
where courses.course_id=9;

#Retrive Professor Details for a specific course:
select professors.* from professors
inner join courses on courses.professor_id=professors.professor_id
where courses.course_id=10;

#Retrive all students enrolled in a specific department:
select students.* from students
left join departments on departments.department_id = students.department_id
where students.department_id=2; 

#Adding another column "Salary" in Professors table:
alter table professors add salary int;
set sql_safe_updates=0;
update professors
set salary=case professor_id
when 1 then 50000
when 2 then 32000
when 3 then 65000
when 4 then 45000
when 5 then 52000
when 6 then 33000
when 7 then 58000
when 8 then 52000
else 0
end
where professor_id in (1,2,3,4,5,6,7,8);

#Retrieve the names and email addresses of all professors with a salary greater than 50,000:
select first_name, last_name, email
from professors where salary >50000;

#Retrieve the average salary of professors in each department:
select department_name, avg(salary) as avg_salary
from departments left join professors on departments.department_id=professors.department_id
group by department_name; 

#Retrieve the names and email addresses of students who have enrolled in more than three courses:
select first_name, last_name, email from students
inner join enrollments on students.student_id = enrollments.student_id 
group by students.student_id having count(enrollments.course_id)>3;

#Retrieve the names of professors who have not been assigned any courses:
select first_name, last_name from professors
left join courses on professors.professor_id =courses.professor_id
where courses.professor_id is null;

#Retrieve the total number of students enrolled in each course in the 'Computer Science' department:
select courses.course_name, count(enrollments.student_id) as total_students
from courses left join enrollments on courses.course_id = enrollments.course_id
where courses.department_id=1 group by courses.course_id;

#update Salary of a Professor:
update professors set salary=salary+5000 where professor_id=3;

#Change Department for a Specific Student:
update students set department_id=4 where student_id=9;

#Update Enrollment Date of a Student:
update enrollments set enrollment_date='2023-07-01'
where student_id=9;

#Change Email Id for a specific professor:
update professors set email='newemail@example.com' where professor_id=6;
