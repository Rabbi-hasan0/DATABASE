CREATE TABLE salesman(
    s_id varchar(20),
    name varchar(20),
    city varchar(20),
    commission float,
    salary int,
primary key (s_id)
);
CREATE TABLE cusomar(
    c_id int,
    c_name varchar(20),
    city varchar(20),
    grade float,
    s_id int,
    PRIMARY key (c_id),
    FOREIGN KEY(s_id)REFERENCES salesman(s_id)
);

CREATE TABLE oder( 
    o_no int, 
    purchase_amount varchar(20), 
    order_date varchar(20),
    c_id int, 
    s_id int, 
    PRIMARY key (o_no), 
    FOREIGN KEY(c_id)REFERENCES cusomar(c_id), 
    FOREIGN KEY(s_id)REFERENCES salesman(s_id)
);

INSERT INTO salesman VALUES (1,"Rabbi","Dhaka",0.21,10000);
INSERT INTO salesman VALUES (2,"Atik","Cumilla",0.14,12000);
INSERT INTO salesman VALUES (3,"Fardin","Chittagong",0.21,13000);
INSERT INTO salesman VALUES (4,"Rahim","Rajshahi",0.21,15000);

INSERT INTO cusomar VALUES (101,"500","05/08/2023",0.21,10000);
INSERT INTO cusomar VALUES (102,"1000","06/08/2023",0.14,12000);
INSERT INTO cusomar VALUES (103,"800","07/08/2023",0.21,13000);
INSERT INTO cusomar VALUES (104,"900","08/08/2023",0.21,15000);


01.	SELECT name,city 
        FROM salesman
 WHERE city='Chittagong';

02.	SELECT name, o_no, purchase_amount 
         FROM salesman JOIN oder 
         WHERE order_date != '27/7/23' AND  order_date != '29/7/23';
