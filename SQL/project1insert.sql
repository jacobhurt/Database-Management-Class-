use jhurt;

CREATE TABLE BuildAddress (AddressID int NOT NULL, BuildID varchar(10) NOT NULL, PRIMARY KEY (AddressID, BuildID));
CREATE TABLE StaffAddress (AddressID int NOT NULL, StaffID varchar(10) NOT NULL, PRIMARY KEY (AddressID, StaffID));
CREATE TABLE PatAddress (AddressID int NOT NULL, PID varchar(8) NOT NULL, PRIMARY KEY (AddressID, PID));
CREATE TABLE StaffDeptAssign (DeptID varchar(10) NOT NULL, StaffID varchar(10) NOT NULL, PRIMARY KEY (DeptID, StaffID));
CREATE TABLE DeptBuilding (DeptID varchar(10) NOT NULL, BuildID varchar(10) NOT NULL, PRIMARY KEY (DeptID, BuildID));
CREATE TABLE Dept (DeptID varchar(10) NOT NULL, Name varchar(15) NOT NULL, Phone varchar(15) NOT NULL, PRIMARY KEY (DeptID));
CREATE TABLE Room (RoomID varchar(10) NOT NULL, DeptID varchar(10) NOT NULL, Phone varchar(15) NOT NULL, PRIMARY KEY (RoomID));
CREATE TABLE Building (BuildID varchar(10) NOT NULL, Name varchar(25) NOT NULL, Phone varchar(15) NOT NULL, PRIMARY KEY (BuildID));
CREATE TABLE PatRoomAssign (RMAssignID varchar(10) NOT NULL, PID varchar(10) NOT NULL, RoomID varchar(10) NOT NULL, BedNum int NULL, PRIMARY KEY (RMAssignID));
CREATE TABLE Technician (TID varchar(10) NOT NULL, LName varchar(30) NOT NULL, FName varchar(20) NOT NULL, Phone varchar(15) NOT NULL, Title varchar(20) NOT NULL, Salary numeric(8, 2) NULL, PRIMARY KEY (TID));
CREATE TABLE Doctor (DID varchar(10) NOT NULL, LName varchar(30) NOT NULL, FName varchar(20) NOT NULL, Phone varchar(15) NOT NULL, Title varchar(30) NOT NULL, Salary numeric(10, 2) NULL, PRIMARY KEY (DID));
CREATE TABLE Nurse (NID varchar(10) NOT NULL, LName varchar(30) NOT NULL, FName varchar(20) NOT NULL, Phone varchar(15) NOT NULL, Title varchar(20) NOT NULL, Salary numeric(8, 2) NULL, PRIMARY KEY (NID));
CREATE TABLE Patient (PID varchar(8) NOT NULL, LName varchar(30) NOT NULL, FName varchar(20) NOT NULL, Phone varchar(15) NOT NULL, email varchar(30) NULL, Status char(10) NOT NULL, DOB datetime NOT NULL, PRIMARY KEY (PID));


ALTER TABLE PatBillLine ADD CONSTRAINT FKPatBillLin2 FOREIGN KEY (BillID) REFERENCES PatBill (BillID);
ALTER TABLE PatAddress ADD CONSTRAINT FKPatAddress71 FOREIGN KEY (PID) REFERENCES Patient (PID);
ALTER TABLE PatAddress ADD CONSTRAINT FKPatAddress51 FOREIGN KEY (AddressID) REFERENCES Addresses (AddressID);
ALTER TABLE StaffDeptAssign ADD CONSTRAINT FKStaffDeptA2 FOREIGN KEY (StaffID) REFERENCES Administration (AID);
ALTER TABLE BuildAddress ADD CONSTRAINT FKBuildAddre5 FOREIGN KEY (BuildID) REFERENCES Building (BuildID);
ALTER TABLE PatBill ADD CONSTRAINT FKPatBill4 FOREIGN KEY (PID) REFERENCES Patient (PID);
ALTER TABLE StaffAddress ADD CONSTRAINT FKStaffAddre1 FOREIGN KEY (StaffID) REFERENCES MedStaffAssign (StaffAssignID);
ALTER TABLE StaffAddress ADD CONSTRAINT FKStaffAddre8 FOREIGN KEY (AddressID) REFERENCES Addresses (AddressID);
ALTER TABLE PatRoomAssign ADD CONSTRAINT FKPatRoomAss1 FOREIGN KEY (RoomID) REFERENCES Room (RoomID);
ALTER TABLE DeptBuilding ADD CONSTRAINT FKDeptBuildi4 FOREIGN KEY (BuildID) REFERENCES Building (BuildID);
ALTER TABLE DeptBuilding ADD CONSTRAINT FKDeptBuildi3 FOREIGN KEY (DeptID) REFERENCES Dept (DeptID);
ALTER TABLE StaffDeptAssign ADD CONSTRAINT FKStaffDeptA2 FOREIGN KEY (DeptID) REFERENCES Dept (DeptID);
ALTER TABLE StaffDeptAssign ADD CONSTRAINT FKStaffDeptA7 FOREIGN KEY (StaffID) REFERENCES MedStaffAssign (StaffAssignID);
ALTER TABLE MedStaffAssign ADD CONSTRAINT FKMedStaffAs33 FOREIGN KEY (TID) REFERENCES Technician (TID);
ALTER TABLE MedStaffAssign ADD CONSTRAINT FKMedStaffAs9 FOREIGN KEY (PID) REFERENCES Patient (PID);
ALTER TABLE MedStaffAssign ADD CONSTRAINT FKMedStaffAs8 FOREIGN KEY (DID) REFERENCES Doctor (DID);
ALTER TABLE MedStaffAssign ADD CONSTRAINT FKMedStaffAs3 FOREIGN KEY (NID) REFERENCES Nurse (NID);




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

-- Building --
INSERT INTO Building (BuildID,name,phone)
VALUES ('b001','Emergency Services','518-442-2222');

INSERT INTO Building (BuildID,name,phone)
VALUES ('b002','Jenkins Center','518-442-2223');

INSERT INTO Building (BuildID,name,phone)
VALUES ('b003','Perkins Atrium','518-442-2224');

INSERT INTO Building (BuildID,name,phone)
VALUES ('b004','Endicott Building','518-442-2225');

INSERT INTO Building (BuildID,name,phone)
VALUES ('b005','Hayes Satellite Office','518-238-2727');

-- Room --
INSERT INTO Room (RoomID,deptid,phone)
VALUES ('r101','dep001','518-442-0101');

INSERT INTO Room (RoomID,deptid,phone)
VALUES ('r102','dep001','518-442-0102');

INSERT INTO Room (RoomID,deptid,phone)
VALUES ('r201','dep002','518-442-0201');

INSERT INTO Room (RoomID,deptid,phone)
VALUES ('r202','dep002','518-442-0202');

INSERT INTO Room (RoomID,deptid,phone)
VALUES ('r300','dep004','518-442-0300');

INSERT INTO Room (RoomID,deptid,phone)
VALUES ('r401','b004','518-442-0401');

INSERT INTO Room (RoomID,deptid,phone)
VALUES ('r402','dep005','518-442-0402');

INSERT INTO Room (RoomID,deptid,phone)
VALUES ('r501','dep004','518-442-0501');

INSERT INTO Room (RoomID,deptid,phone)
VALUES ('r502','dep004','518-442-0502');

INSERT INTO Room (RoomID,deptid,phone)
VALUES ('r503','dep004','518-442-0503');

-- PatRoomAssign --
INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0001','p001','r202',1);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0002','p002','r401',2);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0003','p003','r503',1);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0004','p004','r101',1);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0005','p005','r202',2);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0006','p006','r501',1);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0007','p007','r101',2);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0008','p008','r402',2);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0009','p009','r401',2);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0010','p010','r201',1);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0011','p011','r102',2);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0012','p012','r402',1);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0013','p013','r502',1);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0014','p014','r201',2);

INSERT INTO PatRoomAssign (RMAssignID,PID,RoomID,BedNum)
VALUES ('0015','p015','r102',1);
 
-- MedStaffAssign --
INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0001','p001','n001','d005','t004','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0002','p002','n004','d001','t002','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0003','p003','n003','d002','t009','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0004','p004','n002','d003','t001','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0005','p005','n001','d005','t004','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0006','p006','n003','d002','t009','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0007','p007','n002','d003','t001','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0008','p008','n004','d001','t002','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0009','p009','n004','d001','t002','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0010','p010','n001','d005','t004','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0011','p011','n002','d003','t001','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0012','p012','n004','d001','t002','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0013','p013','n009','d002','t008','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0014','p014','n001','d005','t004','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0015','p015','n002','d003','t001','10-25-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0016','p001','n008','d009','t010','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0017','p002','n007','d006','t005','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0018','p004','n006','d008','t003','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0019','p005','n008','d009','t010','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0020','p007','n006','d008','t003','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0021','p008','n007','d006','t005','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0022','p009','n007','d006','t005','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0023','p010','n008','d009','t010','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0024','p011','n006','d008','t003','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0025','p012','n007','d006','t005','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0026','p014','n008','d009','t010','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0027','p015','n006','d008','t003','10-25-2012','Second');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0028','p001','n010','d007','t006','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0029','p002','n004','d010','t002','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0030','p003','n003','d002','t009','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0031','p004','n005','d003','t007','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0032','p005','n010','d007','t006','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0033','p006','n003','d002','t009','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0034','p007','n005','d003','t007','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0035','p008','n004','d010','t002','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0036','p009','n004','d010','t002','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0037','p010','n010','d007','t006','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0038','p011','n005','d003','t007','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0039','p012','n004','d010','t002','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0040','p013','n009','d002','t008','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0041','p014','n010','d007','t006','10-26-2012','First');

INSERT INTO MedStaffAssign (StaffAssignID,PID,NID,DID,TID,DATE,Shift)
VALUES ('0042','p015','n005','d003','t007','10-26-2012','First');
 
-- PATAddress --
INSERT INTO PatAddress(AddressID,PID)
VALUES ( 1,'p001');

INSERT INTO PatAddress(AddressID,PID)
VALUES ( 2,'p002');

INSERT INTO PatAddress(AddressID,PID)
VALUES ( 3,'p003');

INSERT INTO PatAddress(AddressID,PID)
VALUES ( 4,'p004');

INSERT INTO PatAddress(AddressID,PID)
VALUES ( 5,'p005');

-- StaffAddress --
INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 6,'n001');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 7,'n002');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 8,'n003');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 9,'n004');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 10,'n005');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 11,'d001');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 12,'d002');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 13,'d003');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 14	,'d004');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 15,'d005');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 16,'t007');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 17,'t008');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 18,'t009');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 19	,'t010');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 20,'t011');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 26,'a001');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 27,'a002');

INSERT INTO StaffAddress(AddressID,StaffID)
VALUES ( 28,'a003');

-- Build Address --	
INSERT INTO BuildAddress(AddressID,BuildID)
VALUES ( 21,'b001');

INSERT INTO BuildAddress(AddressID,BuildID)
VALUES ( 22,'b002');

INSERT INTO BuildAddress(AddressID,BuildID)
VALUES ( 21,'b003');

INSERT INTO BuildAddress(AddressID,BuildID)
VALUES ( 23,'b004');

INSERT INTO BuildAddress(AddressID,BuildID)
VALUES ( 24,'b005');

-- Dept --
INSERT INTO Dept (DeptID,name,phone)
VALUES ('dep001','Emergency'	,'518-275-0001');

INSERT INTO Dept (DeptID,name,phone)
VALUES ('dep002','Radiology'	,'518-275-0002');

INSERT INTO Dept (DeptID,name,phone)
VALUES ('dep003','Oncology'	,'518-275-0003');

INSERT INTO Dept (DeptID,name,phone)
VALUES ('dep004','Orthopaedics'	,'518-275-0004');

INSERT INTO Dept (DeptID,name,phone)
VALUES ('dep005','Cardiology'	,'518-275-0005');

INSERT INTO Dept (DeptID,name,phone)
VALUES ('dep006','Surgery'	,'518-275-0006');

INSERT INTO Dept (DeptID,name,phone)
VALUES ('dep007','Administration'	,'518-275-0007'	);

-- Addresses --
INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 1,'32 Hudson Avenue','Albany','NY',12207,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 2,'546 Hamilton Street','Albany','NY',12208,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 3,'15 Pineview Road','Burlington','VT',13478,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 4,'2118 Hollowbrook Way','White Plains','NY',12760,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 5,'32 Myrtle Avenue','Albany','NY',12208,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 6,'33 Reggie Drive','Lansingburgh','NY',12321,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 7,'22 Wendy Drive','Albany','NY',12203,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 8,'176 Main Street','Troy','NY',11981,'United States');
	
INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 9,'35 Hudson Avenue','Albany','NY',12204,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 10,'76 Market Street','Saratoga Springs','NY',11321,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 11,'12 Lark Street','Albany','NY',12202,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 12,'2 Flower Street','Albany','NY',12784,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 13,'55 Manning Boulevard','Albany','NY',12208,'United States');
	
INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 14,'15 Mulberry Lane','Latham','NY',13242,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 15,'10 State Street','Albany','NY',11087,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 16,'22 Elberon Street','Colonie','NY',12283,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 17,'11 High View Street','Ravena','NY',14932,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 18,'103 Sherwood Lane','Lansingburgh','NY',12290,'United States');
	
INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 19,'15 Mulberry Lane','Latham','NY',13242,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 20,'345 Degarmo Road','Albany','NY',12210,'United States');
	
INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 21,'111 Delaware Avenue','Albany','NY',12208,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 22,'113 Delaware Avenue','Albany','NY',12208,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 23,'115 Delaware Avenue','Albany','NY',12208,'United States');
	
INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 24,'213 Main Street','Troy','NY',12278,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 25,'345 Degarmo Road','Albany','NY',12210,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 26,'2 Blue Road','Albany','NY',12210,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 27,'3 Green Road','Albany','NY',12210,'United States');

INSERT INTO Addresses(AddressID,Address,City,State,Zip,Country)
VALUES ( 28,'4 Orange Road','Albany','NY',12210,'United States'); 

	-- DeptBuilding --
INSERT INTO DeptBuilding (DeptID,BuildID)
VALUES ('dep001','b001');

INSERT INTO DeptBuilding (DeptID,BuildID)
VALUES ('dep002','b002');

INSERT INTO DeptBuilding (DeptID,BuildID)
VALUES ('dep003','b004');

INSERT INTO DeptBuilding (DeptID,BuildID)
VALUES ('dep004','b005');
INSERT INTO DeptBuilding (DeptID,BuildID)
VALUES ('dep005','b004');

INSERT INTO DeptBuilding (DeptID,BuildID)
VALUES ('dep006','b004');

INSERT INTO DeptBuilding (DeptID,BuildID)
VALUES ('dep007','b003');
