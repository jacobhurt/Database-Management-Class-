USE jhurt;

CREATE TABLE department(department_id INT AUTO_INCREMENT PRIMARY KEY, 
department_name VARCHAR(50) UNIQUE);

INSERT INTO department(department_name) VALUES ('CS');
INSERT INTO department(department_name) VALUES ('Math');

INSERT INTO department(department_name) VALUES ('Math');

UPDATE department SET department_name='Mathematics'
UPDATE department SET department_name='Computer Science'

INSERT INTO department(department_name) VALUES ('Geology');
INSERT INTO department(department_name) VALUES ('Geography');
INSERT INTO department(department_name) VALUES ('Physics');
INSERT INTO department(department_name) VALUES ('Biology');

DELETE FROM department WHERE department_name='Physics';
DELETE FROM department WHERE department_name='Biology';

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
	student_id INT PRIMARY KEY)
    

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

select * from department;


INSERT INTO course(course_number, course_name, department_id) VALUES ('CS315', 'Comp Sci', 1);
INSERT INTO course(course_id) VALUES ('CS316');
INSERT INTO course(course_id) VALUES ('CS317');
INSERT INTO course(course_id) VALUES ('CS318');

INSERT INTO course(course_name) VALUES ('Comp Sci');
INSERT INTO course(course_name) VALUES ('Science Comp');
INSERT INTO course(course_name) VALUES ('C Science');
INSERT INTO course(course_name) VALUES ('Comp S');

INSERT INTO course(course_number) VALUES ('315');
INSERT INTO course(course_number) VALUES ('316');
INSERT INTO course(course_number) VALUES ('317');
INSERT INTO course(course_number) VALUES ('318');

INSERT INTO course(department_id) VALUES ('CS315');
INSERT INTO course(department_id) VALUES ('CS316');
INSERT INTO course(department_id) VALUES ('CS317');
INSERT INTO course(department_id) VALUES ('CS318');

INSERT INTO section(section_id) VALUES ('1');
INSERT INTO section(section_id) VALUES ('2');
INSERT INTO section(section_id) VALUES ('3');
INSERT INTO section(section_id) VALUES ('4');

INSERT INTO section(section_number) VALUES ('1');
INSERT INTO section(section_number) VALUES ('2');
INSERT INTO section(section_number) VALUES ('3');
INSERT INTO section(section_number) VALUES ('4');

INSERT INTO section(semester) VALUES ('1');
INSERT INTO section(semester) VALUES ('2');
INSERT INTO section(semester) VALUES ('3');
INSERT INTO section(semester) VALUES ('4');

INSERT INTO grade_report(student_id) VALUES ('1');
INSERT INTO grade_report(student_id) VALUES ('2');
INSERT INTO grade_report(student_id) VALUES ('3');
INSERT INTO grade_report(student_id) VALUES ('4');

INSERT INTO grade_report(grade) VALUES ('A');
INSERT INTO grade_report(grade) VALUES ('B');
INSERT INTO grade_report(grade) VALUES ('C');
INSERT INTO grade_report(grade) VALUES ('D');

INSERT INTO prerequisite(prerequisite_course_id) VALUES ('1');
INSERT INTO prerequisite(prerequisite_course_id) VALUES ('2');
INSERT INTO prerequisite(prerequisite_course_id) VALUES ('3');
INSERT INTO prerequisite(prerequisite_course_id) VALUES ('4');

SELECT * FROM course;
SELECT * FROM section;
SELECT * FROM grade_report;
SELECT * FROM prerequisite;

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

select * from course;

