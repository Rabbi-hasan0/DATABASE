CREATE TABLE customar( customar_id INT, cust_name varchar(20), city varchar(20), grade INT, salesman_id INT );
SELECT * FROM `customar`
INSERT INTO customar VALUE (3002, 'Nick Rimando', 'New York', 100 , 5001);
INSERT INTO customar VALUE (3007, 'Brad Davis', 'New York', 200 , 5001);
INSERT INTO customar VALUE (3005, 'Graham Zusi', 'California', 200 , 5002);
INSERT INTO customar VALUE (3008, 'Julian Green', 'London', 300 , 5002);
INSERT INTO customar VALUE (3004, 'Fabian Jhonson', 'paris', 300 , 5006);
INSERT INTO customar VALUE (3009, 'Geoff Cameron', 'Berlin', 100 , 5003);
INSERT INTO customar VALUE (3003, 'Jozyn Altidor', 'Moscow', 200 , 5007);
SELECT * FROM `customar` WHERE 1;
SELECT cust_name FROM customar WHERE city="New York";
SELECT * FROM customar WHERE city="New York" AND grade!=null;
SELECT * FROM customar WHERE city="New York" AND grade>0;
SELECT * FROM customar WHERE city="New York" AND grade>100;
SELECT * FROM customar WHERE city="New York" OR grade>100;
SELECT * FROM customar WHERE city="New York" OR grade<100;
SELECT * FROM customar WHERE city !="New York" OR grade>100;
SELECT * FROM customar WHERE city ="London" AND grade=300;
UPDATE customar SET grade = 250 WHERE city = "London" AND grade = 300;
SELECT * FROM customar;