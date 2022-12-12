CREATE DATABASE STUDENT_PROGRAM

CREATE TABLE Program (
	prog_ID int IDENTITY(1,1) PRIMARY KEY,
	prog_Name text
)

CREATE TABLE Teacher (
	teach_ID int IDENTITY(1,1) PRIMARY KEY,
	teach_FName text,
	teach_LName text,
	teach_Addr1 text,
	teach_Addr2 text,
	teach_City text,
	teach_PCode text
)

CREATE TABLE Student (
	stu_id int IDENTITY(1,1) PRIMARY KEY,
	stu_FName text,
	stu_LName text,
	stu_Addr1 text,
	stu_Addr2 text,
	stu_City text,
	stu_PCode text,
	stu_DOB datetime,
	stu_FeesPaid bit,
	prog_ID_Fk int FOREIGN KEY REFERENCES Program (prog_ID)
)

CREATE TABLE Class (
	class_ID int IDENTITY(1,1) PRIMARY KEY,
	class_Name text,
	teach_ID_fk int FOREIGN KEY REFERENCES Teacher (teach_ID)
)

CREATE TABLE Enrollment (
	enroll_ID int IDENTITY(1,1) PRIMARY KEY,
	stu_ID_fk int FOREIGN KEY REFERENCES Student (stu_ID),
	class_ID_fk int FOREIGN KEY REFERENCES Class (class_ID)
)

INSERT INTO Program (prog_Name) VALUES ('Economics')
INSERT INTO Program (prog_Name) VALUES ('Computer Science')
INSERT INTO Program (prog_Name) VALUES ('Medicine')
INSERT INTO Program (prog_Name) VALUES ('Dentistry')

INSERT INTO Teacher (teach_FName, teach_LName, teach_Addr1, teach_Addr2, teach_City, teach_PCode) VALUES ('James', 'Peterson', '44 March Way', '', 'Glebe', '56100')
INSERT INTO Teacher (teach_FName, teach_LName, teach_Addr1, teach_Addr2, teach_City, teach_PCode) VALUES ('Sarah', 'Francis', '', '', '', '')
INSERT INTO Teacher (teach_FName, teach_LName, teach_Addr1, teach_Addr2, teach_City, teach_PCode) VALUES ('Shane', 'Cobson', '105 Mist Rd', '', 'Faulkner', '56410')

INSERT INTO Student (stu_FName, stu_LName, stu_Addr1, stu_Addr2, stu_City, stu_PCode, stu_DOB, stu_FeesPaid, prog_ID_Fk) VALUES ('John', 'Smith', '3 Main St', '', 'North Boston', '56125', '8/4/1991', 1, 1)
INSERT INTO Student (stu_FName, stu_LName, stu_Addr1, stu_Addr2, stu_City, stu_PCode, stu_DOB, stu_FeesPaid, prog_ID_Fk) VALUES ('Maria', 'Giffin', '16 Leeds Rd', '', 'South Boston', '56128', '9/10/1992', 1, 2)
INSERT INTO Student (stu_FName, stu_LName, stu_Addr1, stu_Addr2, stu_City, stu_PCode, stu_DOB, stu_FeesPaid, prog_ID_Fk) VALUES ('Susan', 'Johnson', '21 Arrow Str', '', 'South Boston', '56128', '1/13/1991', 0, 3)
INSERT INTO Student (stu_FName, stu_LName, stu_Addr1, stu_Addr2, stu_City, stu_PCode, stu_DOB, stu_FeesPaid, prog_ID_Fk) VALUES ('Matt', 'Long', '14 Milk Lane', 'A', 'South Boston', '56128', '4/25/1991', 1, 4)
INSERT INTO Student (stu_FName, stu_LName, stu_Addr1, stu_Addr2, stu_City, stu_PCode, stu_DOB, stu_FeesPaid, prog_ID_Fk) VALUES ('Bobby', 'Marley', '', '', '', '', '', 0, 4)
INSERT INTO Student (stu_FName, stu_LName, stu_Addr1, stu_Addr2, stu_City, stu_PCode, stu_DOB, stu_FeesPaid, prog_ID_Fk) VALUES ('Peter', 'Tosh', '', '', '', '', '', 0, 0)

INSERT INTO Class (class_Name, teach_ID_fk) VALUES ('Economics 1', 1)
INSERT INTO Class (class_Name, teach_ID_fk) VALUES ('Biology 1', 1)
INSERT INTO Class (class_Name, teach_ID_fk) VALUES ('Business Intro', 1)
INSERT INTO Class (class_Name, teach_ID_fk) VALUES ('Programming 2', 1)
INSERT INTO Class (class_Name, teach_ID_fk) VALUES ('Biology 2', 2)

INSERT INTO Enrollment (stu_ID_fk, class_ID_fk) VALUES (1, 2)
INSERT INTO Enrollment (stu_ID_fk, class_ID_fk) VALUES (1, 1)
INSERT INTO Enrollment (stu_ID_fk, class_ID_fk) VALUES (2, 2)
INSERT INTO Enrollment (stu_ID_fk, class_ID_fk) VALUES (2, 3)
INSERT INTO Enrollment (stu_ID_fk, class_ID_fk) VALUES (2, 4)
INSERT INTO Enrollment (stu_ID_fk, class_ID_fk) VALUES (3, 5)