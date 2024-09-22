CREATE TABLE Employee(
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(100) NOT NUll,
dept varchar(100) NOT NUll,
salary decimal(10,2)NOT NUll
);

CREATE TABLE Project(
p_no int PRIMARY KEY AUTO_INCREMENT,
p_name varchar(100) NOT NUll,
budget decimal(10,2) NOT NUll,
location varchar(100) NOT NUll
);

CREATE TABLE Assign(
id int,
p_no int,
_date date 
);

CREATE TABLE Assign(
id int,
p_no int,
_date date,
FOREIGN KEY(id) REFERENCES Employee(id),
FOREIGN KEY(p_no) REFERENCES Project(p_no)
);

INSERT INTO Employee(id, name, dept, salary)
VALUES(101, 'Minhaj', 'IT', 65000);
INSERT INTO Employee(name, dept, salary)
VALUES('Shipon', 'Account', 75000),
('Kibria', 'IT', 85000),
('Solaiman', 'HR', 95000),
('Soyeb', 'Account', 65000);

INSERT INTO Project(p_no, p_name, budget, location)
VALUES(1, 'Metro', 2500000,'Mirpur');
INSERT INTO Project(p_name, budget, location)
VALUES('Rail', 3500000,'Komlapur'),
('Office', 135000,'Mohammadpur'),
('House1', 335000,'Paris'),
('House2', 305000,'New York')
;

INSERT INTO Assign(id, p_no, _date)
VALUES(101, 1, '2024-9-1'),
(102, 2 '2024-9-5'),
(103, 3, '2024-9-5'),
(101, 4, '2024-9-1');

1. SELECT location,avg(salary) as avg_salary, count(*)  as employee FROM Employee, Project,Assign WHERE  Employee.id= Assign.id and Project.p_no = Assign.p_no GROUP BY location;

2. SELECT location FROM Project HAVING AVG(budget)>200000

3. SELECT Employee.id, Employee.name, Employee.salary FROM Employee, Assign WHERE Employee.id= Assign.id and _date="2024-9-11";












































1. CREATE DATABASE DATABASE_LAB_MID;

Ans to The Q: no. 01
1.  CREATE TABLE Customer (
    cid int,
    name varchar(50),
    age int,
    address varchar(100),
    PRIMARY KEY (cid)
     );

2. INSERT INTO Customer VALUES 
    (101, "Smith", 32, "123 Maple St"),
    (102, "David Johnson", 28, "456 Oak Ave"),
    (103, "Michael", 40, "789 Pine Rd"),
    (104, "James Wlilliam", 35, "321 Cedar Ln"),
    (105, "Robert Jones", 30, "654 Elm Blvd") 

3. SELECT * FROM `Customer` WHERE 1

4. Fragmentation:
     CREATE TABLE p1 AS
          SELECT *FROM Customer WHERE age = 40;
     CREATE TABLE p2 AS
          SELECT *FROM Customer WHERE age < 40;
     CREATE TABLE p3 AS
          SELECT *FROM Customer WHERE age > 40;


Ans to The Q: no. 02

1.   CREATE TABLE Car (
    carid int,
    model varchar(50),
    capacity int,
    pricePerDay int,
    car_status varchar(50),
    PRIMARY KEY(carid)
       );
2.   INSERT INTO Car VALUES 
        (201, "Toyota", 5, 50, "available"),
        (202, "Honda Civic", 5, 55, "rented"),
        (203, "Ford Explorer", 7, 70, "unavailable"),
        (204, "Cheverolet Malibu", 5, 60, "rented"),
        (205, "Tesla Model 3", 5, 100, "available")

3.   Fragmentation using min term:
      1. CREATE TABLE car1 AS
           SELECT *FROM Car WHERE car_status = "available" AND capacity <= 4;
      2. CREATE TABLE car2 AS
           SELECT *FROM Car WHERE car_status = "available" AND capacity > 4;

      3. CREATE TABLE car3 AS
           SELECT *FROM Car WHERE car_status = "unavailable" AND capacity <= 4;
      4. CREATE TABLE car4 AS
          SELECT *FROM Car WHERE car_status = "unavailable" AND capacity > 4;
      5. CREATE TABLE car5 AS
          SELECT *FROM Car WHERE car_status = "rented" AND capacity <= 4;
      6. CREATE TABLE car5 AS
          SELECT *FROM Car WHERE car_status = "rented" AND capacity > 4;


Ans to the Q: no. 3 to 9
CREATE TABLE rent(
    rid int,
    cid int,
    carid int,
    dte varchar(50),
    noOfDays int,
    PRIMARY KEY(rid),
    FOREIGN KEY (cid) REFERENCES Customer(cid), 
 FOREIGN KEY (carid) REFERENCES Car(carid)
);
INSERT INTO Rent VALUES 
    (301, 101, 202, "2024-08-10", 3),
    (302, 102, 204, "2024-08-12", 5),
    (303, 103, 201, "2024-08-15", 2),
    (304, 104, 203, "2024-08-18", 4),
    (305, 105, 205, "2024-08-20", 7),
    (306, 101, 204, "2024-08-25", 2)

CREATE TABLE Repire (
    sno int,
    carid int,
    cost int,
    PRIMARY KEY(sno),
    FOREIGN KEY(carid) REFERENCES Car(carid)
       );

3. SELECT *FROM Car WHERE car_status = "available";
4. SELECT *FROM Car WHERE car_status = "rented";
5. SELECT sum(pricePerDay) where car_status = "available" FROM Car;
6. 
7. SELECT model MAX(pricePerDay) AS most_expensive FROM Car;
8. SELECT *FROM Customer WHERE age < 30;
9. SELECT c.name, ca.model
    FROM Rent r 
    JOIN Customer c ON r.cid = c.cid
    JOIN Car ca ON r.carid = ca.carid
    WHERE r.rid = 302;	
      
