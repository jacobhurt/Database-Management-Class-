USE jhurt;

CREATE TABLE department(department_id INT AUTO_INCREMENT PRIMARY KEY, 
department_name VARCHAR(50) UNIQUE);


SELECT * FROM department;

DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS section;
DROP TABLE IF EXISTS grade_report;
DROP TABLE IF EXISTS prerequisite;

CREATE TABLE course( 
	course_id INT AUTO_INCREMENT PRIMARY KEY,
	course_name VARCHAR(100) UNIQUE NOT NULL,
	course_number VARCHAR(3) UNIQUE,
	department_id INT,
FOREIGN KEY (department_id) REFERENCES department(department_id)); 

 


CREATE TABLE section(
	section_id INT AUTO_INCREMENT PRIMARY KEY,
    section_number INT,
    course_id INT,
    semester VARCHAR(100) NOT NULL,
    year INT NOT NULL,
UNIQUE (course_id, section_number, semester, year),
FOREIGN KEY (course_id) REFERENCES course(course_id));


CREATE TABLE student(
	student_id INT PRIMARY KEY);
	
    
CREATE TABLE grade_report(
	student_id INT,
    section_id INT,
    grade INT,
	PRIMARY KEY(student_id, section_id),
FOREIGN KEY (student_id) REFERENCES student(student_id),
FOREIGN KEY (section_id) REFERENCES section(section_id));

CREATE TABLE prerequisite(
	course_id INT,
    prerequisite_course_id INT,
    PRIMARY KEY(course_id, prerequisite_course_id),
FOREIGN KEY (course_id) REFERENCES course(course_id),
FOREIGN KEY (prerequisite_course_id) REFERENCES course(course_id));


SELECT * FROM course;
SELECT * FROM section;
SELECT * FROM grade_report;
SELECT * FROM prerequisite;
SELECT * FROM student;

SELECT department_name, course_name FROM department
JOIN course ON department.department_id=course.department_id;

SELECT department_name, course_name FROM department
LEFT JOIN course ON department.department_id=course.department_id;

SELECT department_name, course_name FROM course
RIGHT JOIN department ON department.department_id=course.department_id;

SELECT department_name as DeptName, course_name as CourseName, section_number as SectionNumber
FROM department d
JOIN course c ON d.department_id = c.department_id
LEFT JOIN section s ON c.course_id = s.course_id;


ALTER TABLE department ADD COLUMN department_code varchar(10);

INSERT INTO department (department_id, department_name, department_code) 
VALUES (1, 'Computer Science', 'CS'), (2, 'Mathematics', 'MATH'), (3, 'Art History', 'ARTH'), 
(4, 'English', 'ENG');

INSERT INTO course (course_id, course_name, course_number, department_id)
VALUES (1, 'Intro to Computers', 101, 1), (2, 'DMBS Design', 355, 1), (3, 'Intro to Modern Math', 104, 2),
(4, 'Intro to Art History', 210, 3);

INSERT INTO section (section_id, section_number, course_id, semester, year)
VALUES (1,1,1, 'Spring', 2017), (2,2,1, 'Spring', 2017), (3,1,1, 'Fall', 2017), (4,1,3, 'Spring', 2017),
(5,1,4,'Summer', 2017);

INSERT INTO student (student_id, student_number, first_name, last_name, class, major)
VALUES (1, 1000, 'Alan', 'Turing', 'Freshman', 'Computer Science'), 
(2, 2000, 'Grace', 'Hooper', 'Sophomore', 'Computer Science'),
(3, 3000, 'Ada', 'Lovelace', 'Junior', 'Math'),
(4, 4000, 'Frida', 'Kahlo', 'Freshman', 'Art'),
(5, 5000, 'George', 'Orwell', 'Senior', 'English'),
(6, 6000, 'Banksy', '', 'Freshman', 'Art'); 

ALTER TABLE student ADD COLUMN student_number varchar(9999);
ALTER TABLE student ADD COLUMN first_name varchar(50);
ALTER TABLE student ADD COLUMN last_name varchar(50);
ALTER TABLE student ADD COLUMN class varchar(50);
ALTER TABLE student ADD COLUMN major varchar(50);

INSERT INTO grade_report (student_id, section_id, grade)
VALUES (1, 1, 4), (1, 4, 4), (1, 5, 2), (2, 2, 4), (2, 4, 4), (4, 3, 1), (4, 5, 4);
 
SELECT first_name, last_name FROM student
JOIN grade_report ON student.student_id=grade_report.student_id;

Select first_name, last_name, grade, section_number, year, semester, course_number, department_code
From student  
						Left Join grade_report on student.student_id = grade_report.student_id
                        Left Join section on grade_report.section_id = section.section_id
                        Left Join course on section.course_id = course.course_id
                        Left Join department on course.department_id = department.department_id
                        Where grade is not null 
                        Order by first_name ASC, last_name ASC, grade DESC, section_number DESC;
                        
Select first_name, last_name, grade, section_number, year, semester, course_number, department_code
from student
						Right Join grade_report on student.student_id = grade_report.student_id
                        RIght Join section on grade_report.section_id = section.section_id
                        Right Join course on section.course_id = course.course_id
                        Right Join department on course.department_id = department.department_id
                        Where grade is not null 
                        Order by first_name ASC, last_name ASC, grade DESC, section_number DESC;

SELECT CONCAT(IFNULL(last_name,' '), ' , ', first_name) AS FullName, 
	CONCAT( department_code, course_number) AS Course, 
	CASE WHEN grade >= 4 THEN ' A ' 
	WHEN grade >= 3 THEN ' B ' 
	WHEN grade >= 2 THEN ' C '
	WHEN grade >= 1 THEN ' D ' 
	WHEN grade IS NULL THEN NULL 
	ELSE ' F '
END AS grade_report 

FROM student  
						Left Join grade_report on student.student_id = grade_report.student_id
                        Left Join section on grade_report.section_id = section.section_id
                        Left Join course on section.course_id = course.course_id
                        Left Join department on course.department_id = department.department_id
                        Where grade is not null 
                        Order by first_name ASC, last_name ASC, grade DESC, section_number DESC;
                        
SELECT CONCAT(IFNULL(last_name,' '), ' , ' , first_name) AS FullName, 
	CONCAT( department_code, course_number) AS Course, 
	CASE WHEN grade >= 4 THEN ' A ' 
	WHEN grade >= 3 THEN ' B ' 
	WHEN grade >= 2 THEN ' C '
	WHEN grade >= 1 THEN ' D ' 
	WHEN grade IS NULL THEN NULL 
	ELSE ' F '
END AS grade_report 
 

FROM student  
						Left Join grade_report on student.student_id = grade_report.student_id
                        Left Join section on grade_report.section_id = section.section_id
                        Left Join course on section.course_id = course.course_id
                        Left Join department on course.department_id = department.department_id
                        Where grade is null 
                        Order by first_name ASC, last_name ASC, grade DESC, section_number DESC;
                        


Error Code: 1054. Unknown column 'student.section_id' in 'on clause'
