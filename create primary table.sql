use employee;
CREATE TABLE employ_info (
Employ_id int,
First_name varchar (25),
Salary int,
Experience int,
Trans_id int primary key);

describe employ_info;
insert into employ_info (Employ_id,First_name,Salary,Experience,Trans_id)
values(1,'yash',1000,1,1),
(2,'nayan',1200,2,2),
(3,'raj',1500,3,3),
(4,'pallavi',1300,1,4),
(5,'soham',1600,2,5),
(6,'kunal',1200,3,6),
(7,'prathmesh',1900,4,7),
(8,'neha',1600,1,90);
------------------------
DESCRIBE employ_info;
SELECT * FROM employ_info;
-- CREATING TABLE 2---


create table trans_id (
bill_amount int,
product varchar(20),
time_tran time
);