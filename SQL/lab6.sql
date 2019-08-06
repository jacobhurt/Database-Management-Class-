use jhurt;

Create table account( account_id int auto_increment primary key, email varchar(256) unique, 
first_name varchar(50), last_name varchar(50));

Create table address( address_id int auto_increment primary key, street varchar(256), zip_code varchar(5));

Create table company( company_id int auto_increment primary key, company_name varchar(256));

Create table skill( skill_id int auto_increment primary key, skill_name varchar(50) unique, description varchar(256));

Create table school( school_id int auto_increment primary key, school_name varchar (256) unique, address_id int,
Foreign key (address_id) references address(address_id) on delete cascade);

Create table resume ( resume_id int auto_increment primary key, resume_name varchar(256), 
account_id int, unique key(account_id, resume_name),
Foreign key (account_id) references account(account_id) on delete cascade);

Create table company_address( company_id int , address_id int ,
Foreign key (address_id) references address(address_id) on delete cascade,
Foreign key(company_id) references company(company_id) on delete cascade);

Create table account_school( account_id int , school_id int ,
start_date varchar(50), end_date varchar(50), gpa varchar(4),
Foreign key (account_id) references account(account_id) on delete cascade,
Foreign Key (school_id) references school(school_id) on delete cascade);

Create table resume_school( resume_id int , school_id int , 
Foreign key (resume_id) references resume(resume_id) on delete cascade,
Foreign key (school_id) references school(school_id) on delete cascade);


Create table account_company( account_id int , company_id int ,
Foreign key (account_id) references account(account_id) on delete cascade,
Foreign key (company_id) references company(company_id) on delete cascade);

Create table resume_company (resume_id int, company_id int, primary key (resume_id, company_id),
date_shared varchar(256), was_hired bool,
Foreign Key (resume_id) References resume(resume_id) on delete cascade,
Foreign Key (company_id) References company(company_id) on delete cascade);


Create table account_skill( account_id int , skill_id int ,
Foreign key (account_id) references account(account_id) on delete cascade,
Foreign key (skill_id) references skill(skill_id) on delete cascade);

Create table resume_skill( skill_id int , resume_id int ,
Foreign key (resume_id) references resume(resume_id) on delete cascade,
Foreign key (skill_id) references skill(skill_id) on delete cascade);

select *from account;
select *from resume;
select *from address;
select *from skill;
select *from company;



Insert into account( email, first_name, last_name) values (' J@gmail.com', 'Jacob', 'H');
Insert into account( email, first_name, last_name) values (' Ja@gmail.com', 'Jack', 'Hu');
Insert into account( email, first_name, last_name) values (' Jac@gmail.com', 'Jake', 'Hur');
Insert into account( email, first_name, last_name) values (' Jaco@gmail.com', 'Jackson', 'Hurt');
Insert into account( email, first_name, last_name) values (' Jacob@gmail.com', 'J', 'Hurts');

Insert into address( street, zip_code) values ('A', '00001');
Insert into address( street, zip_code) values ('B', '00002');
Insert into address( street, zip_code) values ('C', '00003');
Insert into address( street, zip_code) values ('D', '00004');
Insert into address( street, zip_code) values ('E', '00005');

Insert into company( company_name) values ('Disney');
Insert into company( company_name) values ('Pixar');
Insert into company( company_name) values ('ESPN');
Insert into company( company_name) values ('ABC');
Insert into company( company_name) values ('Marvel');

Insert into skill( skill_name, description) values ('a', 'q');
Insert into skill( skill_name, description) values ('b', 'w');
Insert into skill( skill_name, description) values ('c', 'e');
Insert into skill( skill_name, description) values ('d', 'r');
Insert into skill( skill_name, description) values ('e', 't');

Insert into school( school_name) values ('Rod');
Insert into school( school_name) values ('RHS');
Insert into school( school_name) values ('Rodriguez');
Insert into school( school_name) values ('LMC');
Insert into school( school_name) values ('SSU');

Insert into resume( resume_name,account_id) values ('1A',1 );
Insert into resume( resume_name,account_id) values ('2B', 2);
Insert into resume( resume_name,account_id) values ('3C', 3);
Insert into resume( resume_name,account_id) values ('4D', 4);
Insert into resume( resume_name,account_id) values ('5E', 5);

Insert into account_school( start_date, end_date, gpa) values (' 2017-01-01 12:00', '2017-12-12 12:00', '3.5');
Insert into account_school( start_date, end_date, gpa) values (' 2017-02-01 12:00', '2018-12-12 12:00', '3.6');
Insert into account_school( start_date, end_date, gpa) values (' 2017-03-01 12:00', '2019-12-12 12:00', '3.7');
Insert into account_school( start_date, end_date, gpa) values (' 2017-04-01 12:00', '2020-12-12 12:00', '3.8');
Insert into account_school( start_date, end_date, gpa) values (' 2017-05-01 12:00', '2021-12-12 12:00', '3.9');

Insert into resume_company(resume_id, company_id, date_shared, was_hired) values (1, 1, ' 2017-10-23 7:30 ', True);
Insert into resume_company(resume_id, company_id,  date_shared, was_hired) values (2, 2, ' 2017-10-23 7:31', True);
Insert into resume_company(resume_id, company_id,  date_shared, was_hired) values (3, 3, ' 2017-10-23 7:32', False);
Insert into resume_company(resume_id, company_id,  date_shared, was_hired) values (4, 4, ' 2017-10-23 7:33', False);
Insert into resume_company(resume_id, company_id,  date_shared, was_hired) values (5, 5, ' 2017-10-23 7:34', True);

Select company_name, AVG(gpa) as average_gpa
From company c
left join resume_company rc on c.company_id = rc.company_id
left join resume r on r.resume_id = rc.resume_id
left join resume_school rs on rs.resume_id = r.resume_id
left join account_school as1 on as1.account_id = r.account_id
where rc.was_hired = 1
group by company_name;


SELECT first_name, last_name
FROM account a
JOIN resume r ON r.account_id = a.account_id
JOIN resume_company rc ON rc.resume_id = r.resume_id
WHERE rc.was_hired = 1; 

Create view school_gpa_view as
Select gpa 
from account_school
where gpa > 2.0

Create view resume as
Select account_id, count(resume_id) as num_Resumes
from account 
Inner join resume on account.account_id = resume.account_id 
Group by account_id ascending 

DROP PROCEDURE IF EXISTS school_get_gpa
DELIMITER //
 CREATE PROCEDURE school_get_gpa (_school_name varchar(50))
   BEGIN
   SELECT * FROM school_gpa_view WHERE school_name = _school_name;
   END //
DELIMITER ;

CALL school_get_gpa("SSU");


DROP FUNCTION IF EXISTS fn_school_get_gpa;
DELIMITER //
CREATE FUNCTION fn_school_get_gpa(_school_name VARCHAR(50)) RETURNS DOUBLE
BEGIN
DECLARE _gpa DOUBLE;

SELECT avg(average_gpa) INTO _gpa FROM school_gpa_view WHERE school_name = _school_name;

  RETURN _gpa;
  END//
DELIMITER ;

SELECT school_name, fn_school_get_gpa (school_name) AS school_gpa
FROM school;



DROP FUNCTION IF EXISTS num_Resumes;
DELIMITER //
CREATE FUNCTION num_Resumes(account_id varchar(50)) RETURNS INT
BEGIN
DECLARE _numResumes INT;

SELECT (numRes) INTO _numResumes FROM resume WHERE account_id=_account_id;

  RETURN _numResumes;
  END//
DELIMITER ;

Select account_id, num_Resumes(account_id) as _numResumes from resume;
