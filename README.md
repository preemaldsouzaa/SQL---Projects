# University Management System--using SQL
![SMU_Admin_Building](https://github.com/preemaldsouzaa/University-Management-System---SQL/assets/117831091/bdd6c01f-0260-4763-a1c5-deeb27602bb0)

Welcome to the University Management System project, a significant endeavor undertaken as part of my Bachelor of Commerce, major in Computer Systems & Applications program. This project aims to revolutionize the administrative and academic processes within educational institutions, contributing to a more streamlined and efficient university experience.

## Introduction:

The University Management System is a comprehensive and efficient database-driven application aimed at streamlining the administrative processes within a university setting. The project addresses the challenges faced by traditional manual systems in managing student records, professor information, course details, and enrollment data. By implementing this system, the university can enhance its organization, data accuracy, and overall efficiency.

## Problem Statement:

In conventional university management systems, reliance on manual paperwork leads to errors, delays, and difficulties in maintaining records. Handling a vast amount of information about students, professors, courses, and enrollments becomes cumbersome, often resulting in data discrepancies and administrative inefficiencies. The project aims to overcome these challenges by offering an automated and user-friendly platform that facilitates easy data entry, retrieval, and updates while ensuring data accuracy and improving overall university management processes.

## Key Features:

1. **Student Management**: Maintain a database of students' records, including personal details, contact information, and department affiliations.

2. **Professor Management**: Keep track of professors' profiles, including their background, contact details, assigned departments, and courses they teach.

3. **Course Management**: Organize courses offered by different departments, manage course names, and assign professors to teach each course.

4. **Department Management**: Store department information and manage its associations with students, professors, and courses.

5. **Enrollment System**: Facilitate student enrollment in courses, track enrollment dates, and ensure course capacity management.

6. **Data Integrity**: Utilize relational database concepts to ensure data integrity, consistency, and accuracy.

7. **Reports and Analytics**: Generate informative reports on student enrollments, professor assignments, department statistics, and more.

## Table Structure:

The database for the University Management System comprises several interconnected tables designed to store and manage key data related to the university's operations:

1. **Students**: Contains student details such as ID, name, birthdate, contact information, address, and associated department.

2. **Professors**: Stores professor information including ID, name, birthdate, contact details, address, and assigned department.

3. **Courses**: Holds course data including ID, course name, department, and assigned professor.

4. **Departments**: Maintains details about departments, including ID and department name.

5. **Enrollments**: Stores enrollment information, including ID, student ID, course ID, and enrollment date.
Queries and Functionality:

## Project Setup
The setup for this project has been done by the following ways:

1. **Database Creation**: The database, named "university_management_system," had been successfully created.
2. **Table Creation**: I had created all the necessary tables by executing the SQL script provided.
3. **Sample Data Insertion**: I had also populated the tables with sample data using the SQL script. This data includes student and professor details, course information, and department data for reference and testing.

## Retrieving Information:
You can retrieve details about students, professors, courses, departments, and enrollments through various SELECT queries.
For example, you can retrieve all courses taught by a specific professor, courses enrolled by a particular student, department name for a specific course, etc.

1. **Managing Enrollments**:
Enroll students in courses by adding records to the Enrollments table.
Retrieve the total number of students enrolled in each course, helping with course planning.

2. **Academic Analytics**:
Generate reports on student enrollments and professor assignments to monitor the performance of departments and professors.

3. **Departmental Management**:
Assign professors to specific departments and courses, helping in efficient resource allocation.
Retrieve the list of students enrolled in a specific department for effective department management.

4. **Professor Details**:
Retrieve professor details for a specific course, enabling students to know their course instructors.

5. **Student Insights**:
Retrieve the names of students who have enrolled in more than three courses, helping identify high-performing students.

6. **Salary Management**:
Assign salaries to professors based on their IDs and manage salary updates efficiently.
Calculate and display the average salary of professors in each department.

7. **Data Integrity**:
Utilize foreign key relationships to ensure data integrity by linking data across tables.
