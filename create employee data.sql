
use employee;
create table employee_data (
SR INT,
 NAME_EMPLOY varchar(20) ,
 SALARY INT , 
 ID INT, 
 DEPARTMENT varchar(20),
 Experience int
 );

SELECT * FROM employee_data;

INSERT INTO employee_data(SR,NAME_EMPLOY,SALARY,ID,DEPARTMENT,Experience)
VALUES(1,'SAI KHAIRNAR',85000,19788,'IT DEPARTMENT',4),
(2,'PRAKASH GUPTA',30000,27896,'FINANCE',3),
(3,'SURAJ MEHTA',45000,19854,'QUALITY',3),
(4,'NUTAN SHARMA',50000,12587,'MARKETING',5),
(5,'PRAJAKTA VERMA',15000,12934,'SALES',2),
(6,'KUNAL SINGH',42000,23678,'HUMAN REESOURCE',4),
(7,'PRERNA KULKARNI',35000,2347,'SALES',6);

SELECT * FROM employee_data;
#------SELECTING EMPLOYEE NAME WHOSE SALARY IS GREATER THAN 30000-----#
SELECT NAME_EMPLOY,SALARY FROM employee_data
WHERE SALARY >=30000
LIMIT 3;
-- create column tax using alter and drop it
alter table employee_data drop tax ;
SELECT * FROM employee_data;
-- adding tax after salary
alter table employee_data add tax int not null after salary ;

-- select name n order by experience 
SELECT NAME_EMPLOY FROM employee_data
ORDER BY experience
limit 3;

-- another way to lowercase the word using change keyword
ALTER TABLE employee_data CHANGE salary SALARY int;








