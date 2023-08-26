TASK01:
CREATE DATABASE sec10;
CREATE table dept( 
deptID int, 
deptName varchar(10), 
establishmentYear int, 
PRIMARY KEY (deptID) 
);
CREATE table student(
studentID int, 
Name varchar(10), 
cgpa double, 
hometown varchar(20), 
mobile int, 
dept int, 
PRIMARY KEY (studentID), 
FOREIGN key(dept)REFERENCES dept(deptID)
);
CREATE table employee( 
employeeID int, 
eName varchar(10), 
salary int, 
hometown varchar(20), 
dept int, 
PRIMARY KEY (employeeID), 
FOREIGN key(dept)REFERENCES dept(deptID) 
);

// Insert dept table //
INSERT INTO dept VALUES (01, 'CSE', 2001);
INSERT INTO dept VALUES (02, 'EEE', 2002);
INSERT INTO dept VALUES (03, 'Civil', 2003);
INSERT INTO dept VALUES (04, 'CE', 2003);
INSERT INTO dept VALUES (05, 'English', 2004);
// Insert student table //
INSERT INTO student VALUES (162, 'Rabbi', 3.42, 'Chuadanga', 01321089577, 01);
INSERT INTO student VALUES (168, 'Atik', 3.40, 'sirajganj', 01700000077, 02);
INSERT INTO student VALUES (171, 'Nahid', 3.48, 'Chuadanga', 01321089577, 03);
INSERT INTO student VALUES (178, 'Jannatul', 4.00, 'Chuadanga', 01321089577, 04);
INSERT INTO student VALUES (521, 'Tariful', 3.00, 'Chuadanga', 01321089577, 05);
// Insert employee table //
INSERT INTO employee VALUES (89, 'Rafiq',500000,'Chuadanha', 01);
INSERT INTO employee VALUES (90, 'Jabbar',400000,'Dhaka', 02);
INSERT INTO employee VALUES (91, 'Salam',600000,'khulna', 03);
INSERT INTO employee VALUES (92, 'Barkat',450000,'Jeshore', 04);
INSERT INTO employee VALUES (93, 'Tariful',350000,'Sylhet', 05);



TASK-02:
CREATE TABLE  Borrower(
   borrowerID int,
     borrowerName varchar(20),
    borrowerType varchar(10),
    PRIMARY KEY (borrowerID)
);

CREATE TABLE  Book(
   bookID int,
   bookTitle varchar(20),
   Author varchar(10),
   price int,
   PRIMARY KEY (bookID)
);

CREATE TABLE  Rented(
   Bor_ID int, 
   Boo_ID int, 
   Date varchar(20),
   PRIMARY KEY (bookID)
);
