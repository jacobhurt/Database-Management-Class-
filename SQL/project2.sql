use jhurt;

 CREATE TABLE Technician (TID varchar(10) NOT NULL, LName varchar(30) NOT NULL, FName varchar(20) NOT NULL, Phone varchar(15) NOT NULL, Title varchar(20) NOT NULL, Salary numeric(8, 2) NULL, PRIMARY KEY (TID));
CREATE TABLE Doctor (DID varchar(10) NOT NULL, LName varchar(30) NOT NULL, FName varchar(20) NOT NULL, Phone varchar(15) NOT NULL, Title varchar(30) NOT NULL, Salary numeric(10, 2) NULL, PRIMARY KEY (DID));
CREATE TABLE Nurse (NID varchar(10) NOT NULL, LName varchar(30) NOT NULL, FName varchar(20) NOT NULL, Phone varchar(15) NOT NULL, Title varchar(20) NOT NULL, Salary numeric(8, 2) NULL, PRIMARY KEY (NID));
CREATE TABLE Patient (PID varchar(8) NOT NULL, LName varchar(30) NOT NULL, FName varchar(20) NOT NULL, Phone varchar(15) NOT NULL, email varchar(30) NULL, Status char(10) NOT NULL, DOB datetime NOT NULL, PRIMARY KEY (PID));

Select * from Technician;
Select * from Doctor;
Select * from Nurse;
Select * from Patient;
-- Patients --
 INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p001','Mathews','Chris','518-275-6435','cm134@gmail.com','Patient','03-17-1989');

 INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
 VALUES ('p002','Fields','Ben','518-733-0987','bfields@albany.edu','Patient','04-12-1990');

 INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
 VALUES ('p003','McGrath','Steve','743-164-3389','smcgrath@verizon.net','Patient','12-23-1976');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p004','Smith','Gregory','914-223-4598','SmithyG@gmail.com','OutPatient','09-13-1995');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p005','Fasano','Joe','518-463-1113','jfasano@albany.edu','Patient','05-19-1992');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p006','Booker','Paul','518-554-8921','hello@hotmail.com','Patient','03-02-2001');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p007','Smith','Drew','518-443-0543','DSmith@aol.com','Patient','02-13-1993');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p008','Rodrigues','Jose','743-164-3389','heyitsjose@gmail.com','Patient','12-07-1984');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p009','Brown','Tom','518-234-0008','togatom@aol.com','Outpatient','04-30-1966');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p010','Nixon','Jessica','315-468-9213','jnix@gmail.com','Patient','11-29-1996');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p011','Maxwell','Maria','217-643-9932','maxwellm@albany.edu','Patient','08-03-2003');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p012','Williams','Mike','845-235-0551','Ramseyman@gmail.com','Patient','09-13-2004');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p013','Austin','Steve','656-892-1284','stonecold@aol.com','Patient','07-29-1955');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p014','Jackson','Michelle','212-345-9927','cusejack@yahoo.com','Patient','11-19-1988');

INSERT INTO Patient (PID,LName,fName,Phone,email,Status,DOB)
VALUES ('p015','Burns','Joseph','389-883-1254','JBurns@albany.edu','Outpatient','05-11-1991');

-- Nurse --
INSERT INTO Nurse (NID,LName,FName,phone,Title,Salary)
VALUES ('n001','Jefferson','Martha','518-453-3243','OR_Nurse',62000.00);

INSERT INTO Nurse (NID,LName,FName,phone,Title,Salary)
VALUES ('n002','Pasnik','Susan','518-249-0873','ER_Nurse',55000.00);

INSERT INTO Nurse (NID,LName,FName,phone,Title,Salary)
VALUES ('n003','Sanchez','Evette','518-221-7653','RES_Nurse',70000.00);

INSERT INTO Nurse (NID,LName,FName,phone,Title,Salary)
VALUES ('n004','Greenburgh','Jeff','518-665-1138','OR_Nurse',65550.00);

INSERT INTO Nurse (NID,LName,FName,phone,Title,Salary)
VALUES ('n005','Jackson','Janet','518-224-1209','Senior_Nurse',75450.00);

INSERT INTO Nurse (NID,LName,FName,phone,Title,Salary)
VALUES ('n006','McCarthy','Ryan','518-876-4332','ER_Nurse',57550.00);

INSERT INTO Nurse (NID,LName,FName,phone,Title,Salary)
VALUES ('n007','Fisher','Julia','518-343-7765','OR_Nurse',65000.00);

INSERT INTO Nurse (NID,LName,FName,phone,Title,Salary)
VALUES ('n008','Geiger','Jay','518-433-3147','Head_Nurse',102550.00);

INSERT INTO Nurse (NID,LName,FName,phone,Title,Salary)
VALUES ('n009','Blackwell','Beth','518-890-0435','ER_Nurse',57000.00);

INSERT INTO Nurse (NID,LName,FName,phone,Title,Salary)
VALUES ('n010','Smith','Gene','518-334-6753','RES_Nurse',77000.00);

-- Doctor --
INSERT INTO Doctor (DID,LName,FName,Phone,Title,Salary)
VALUES ('d001','Redding','James','518-430-9880','Oncologist',225000.00);

INSERT INTO Doctor (DID,LName,FName,Phone,Title,Salary)
VALUES ('d002','Morris','Sean','518-564-2134','Orthopedist',175000.00);

INSERT INTO Doctor (DID,LName,FName,Phone,Title,Salary)
VALUES ('d003','House','Gregory','518-765-0550','Cardiologist',200000.00);

INSERT INTO Doctor (DID,LName,FName,Phone,Title,Salary)
VALUES ('d004','Howser','Doogie','518-765-0435','Emergency',125000.00);

INSERT INTO Doctor (DID,LName,FName,Phone,Title,Salary)
VALUES ('d005','Thomas','Michael','518-278-4120','Hospitalist',225500.00);

INSERT INTO Doctor (DID,LName,FName,Phone,Title,Salary)
VALUES ('d006','Kerner','David','518-430-9880','Oncologist',185000.00);

INSERT INTO Doctor (DID,LName,FName,Phone,Title,Salary)
VALUES ('d007','Wislon','Kyle','518-546-5212','Cardiologist',275500.00);

INSERT INTO Doctor (DID,LName,FName,Phone,Title,Salary)
VALUES ('d008','Bourne','Jason','518-443-0043','Emergency',150000.00);

INSERT INTO Doctor (DID,LName,FName,Phone,Title,Salary)
VALUES ('d009','Wilson','Mark','518-321-4490','Hospitalist',187000.00);

INSERT INTO Doctor (DID,LName,FName,Phone,Title,Salary)
VALUES ('d010','Manning','Patrick','518-765-0349','Cardiologist',215000.00);

-- Technician --
INSERT INTO Technician (TID,LName,FName,phone,Title,Salary)
VALUES ('t001','Berkley','Al','518-743-9823','Emergency',54000.00);

INSERT INTO Technician (TID,LName,FName,phone,Title,Salary)
VALUES ('t002','Howard','Chris','518-765-9003','Radiology',54000.00);

INSERT INTO Technician (TID,LName,FName,phone,Title,Salary)
VALUES ('t003','McShane','Jim','518-332-4453','Emergency',48000.00);

INSERT INTO Technician (TID,LName,FName,phone,Title,Salary)
VALUES ('t004','Anderson','Trevor','518-313-4432','Radiology',66000.00);

INSERT INTO Technician (TID,LName,FName,phone,Title,Salary)
VALUES ('t005','Morton','Zach','518-221-1019','OR_Tech',74000.00);

INSERT INTO Technician (TID,LName,FName,phone,Title,Salary)
VALUES ('t006','Meadows','Rachel','518-244-0665','Radiology',67500.00);

INSERT INTO Technician (TID,LName,FName,phone,Title,Salary)
VALUES ('t007','Tracy','Tiffany','518-289-2938','Emergency',55500.00);

INSERT INTO Technician (TID,LName,FName,phone,Title,Salary)
VALUES ('t008','Masterson','Steven','518-555-8443','RES_Tech',45000.00);

INSERT INTO Technician (TID,LName,FName,phone,Title,Salary)
VALUES ('t009','Tracy','Tiffany','518-312-3225','RES_Tech',50500.00);

INSERT INTO Technician (TID,LName,FName,phone,Title,Salary)
VALUES ('t010','Wrobel','Steve','518-890-2314','Radiologist',75000.00);