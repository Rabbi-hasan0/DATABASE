Practice lab:
CREATE DATABASE RABBI_BUBT;
CREATE TABLE STUDENT(
    S_ID INT,
    NAME VARCHAR(20),
    ADDRESS VARCHAR(20),
    PHONE VARCHAR(11),
    CONSTRAINT S_PK PRIMARY KEY(S_ID)
    );
INSERT INTO STUDENT( VALUES(162,'RABBI HASAN','MIRPUR 02', '01321089577') ) INSERT INTO STUDENT( VALUES(168,'ATIK HASAN','MIRPUR 01', '01758552477') );
INSERT INTO STUDENT( VALUES(171,'NAYEM HASAN','MIRPUR 12', '01987455277') );
INSERT INTO STUDENT( VALUES(466,'FAIZER ISLAM','MIRPUR 11', '01789226655') );;


SELECT* FROM (student);  //For showing all data into table;
DESC student;                       // for showing all table in db;

UPDATE student
    set ADDRESS="Rajshahi"
    WHERE S_ID=162;


LAB TASK 01:
                                    ANS TO THE QUESTION NO 01
STUDENT table:
CREATE table student( S_ID INT, NAME VARCHAR(20), AGE INT, BLOOD_GROUP VARCHAR(5), DEPARTMENT_NAME VARCHAR(10), MOBILE_NUMBER INT, CONSTRAINT S_PK PRIMARY KEY(S_ID) );
DESC student;
select* from (student);
INSERT INTO student VALUE(2,'Kayes',22,'B-ve','EEE',01546565854);
INSERT INTO student VALUE(3,'Mominul',20,'AB+ve', 'MCE', 01757634556);
INSERT INTO student VALUE(4,'Sakib',24,'O+ve', 'CSE', 01546548788);
INSERT INTO student VALUE(5,'Mushfiq',24,'O+ve', 'CSE', 01978562235);
SELECT * FROM (student);
GPA table:
CREATE table student(
    S_ID INT,
    GPA VARCHAR(20),
    Semester VARCHAR(10)
    );
DESC grades;
select* from (grades);
INSERT into grades value(1, '3.75', 'SUMMER');
INSERT into grades value(1, '2.75', 'WINTER');
INSERT into grades value(2, '3.30', 'SUMMER');
INSERT into grades value(3, '3.60', 'SUMMER');
INSERT into grades value(2, '3.96', 'WINTER');
INSERT into grades value(4, '4.40', 'SUMMER');
INSERT into grades value(5, '2.99', 'WINTER');
SELECT * FROM (grades);

                                              ANS TO THE QUESTION NO 02
We can’t assign the student_id as primary key of the grades table . Cause as primary key select student_id then must be student id were unique.
As we know primary key value must be unique, so you can not insert the record with the same ID. Here, we will verify the constraint created on the ID column, by inserting records with duplicate ID values.
That’s why we can’t assign into grades table primary key as students_id.
                                                
                                               ANS TO THE QUESTION NO 03
SELECT * FROM (grades);
SELECT * FROM (student);

                                              ANS TO THE QUESTION NO 04
SELECT * FROM (student);

                                              ANS TO THE QUESTION NO 04
update student
set mobile_number =”01912345678”
where S_ID= 1 ;

