USE jhurt;

DROP TABLE IF EXISTS course;

CREATE TABLE course(course_number INT PRIMARY KEY, course_name VARCHAR(100) UNIQUE, units INT);

                                            
INSERT INTO course(course_number, course_name, units)
VALUES (315, 'Database', 3);
INSERT INTO course(course_number, course_name, units)
VALUES (242, 'Math', 3);



SELECT * FROM course;

SELECT course_number, course_name FROM course;

UPDATE course SET course_name='Math' 
WHERE course_number=242;

DELETE FROM course WHERE course_number=242;