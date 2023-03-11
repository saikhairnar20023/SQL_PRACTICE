use employee;
select * from employ_info;
select * from employee_data;

use world;
select * from city;

create table place as
select ID,Name,District from city;

select * from place;

use employee;
select * from employ_info;
insert into employ_info values(9,'saket',1400,3,32);
insert into employ_info values(10,'prakash',2300,7,109);
insert into employ_info values(11,'krishna',5300,8,231);
insert into employ_info values (12,'kailash',3490,4.5,321);

create table emp_salary(ID int,salary int, exp int);
describe emp_salary;
select * from emp_salary;

insert into emp_salary values (1,12000,4);
insert into emp_salary values (2,23000,4);
insert into emp_salary values (3,45000,7);
insert into emp_salary values (4,50000,9);
insert into emp_salary values (5,56000,4);
insert into emp_salary values (6,76000,1);
insert into emp_salary values (7,90000,2);
insert into emp_salary values (8,89000,6);
insert into emp_salary values (9,667000,12);

use sai;
create table xyz(id int);
select * from xyz;
insert into xyz values(1);
insert into xyz values(2);
insert into xyz values(2.7);
drop table xyz;

create table xyz (id double);
insert into xyz values(9);
insert into xyz values(9.6);
drop table xyz;

create table xyz (a boolean);
insert into xyz values(false);
select * from xyz;
insert into xyz values(true);
drop table xyz;

create table xyz (name varchar(20));
insert into xyz values ('Sai Khairnar');
insert into xyz values ('prakash mehta');
select * from xyz;
drop table xyz;

create table xyz (a date);
insert into xyz values ('1992-12-08');

select * from xyz;

create table xyz (a time);
insert into xyz values ('12:22:08');
drop table xyz;

create table xyz (a datetime);
insert into xyz values ('1992-12-08 12:11:07');

create table xyz (a year);
insert into xyz values ('1992');
select * from xyz;
drop table xyz;

use employee;
select * from employ_info;
insert into employ_info(Employ_id,Salary,Trans_id) values(13,3590);
select * from employ_info where Experience is null;
select * from employ_info where Experience is not null;

use world;
Select * from City;
select * from place;
Delete District from place where ID=1000;

use employee;
select * from employ_info;
Delete from employ_info where Trans_id =321;

Update employ_info set First_name = 'Sai'
where Trans_id =  231;

update employ_info 
set First_name ='krishna',Experience = 4
where Trans_id = 34;

Update employ_info 
set Employ_id = 12
where Trans_id = 34;
select * from employ_info;

insert into employ_info values(13,'Yogeshwari',4580,6,450);
select * from employ_info;

rename table emp_salary to employ_salary;
show tables;

truncate table employ_salary;
select * from employ_salary;

select * from employee_data;
alter table employee_data
add(location varchar(20));

alter table employee_data
modify location varchar(15);
describe employee_data;


alter table employee_data
drop column location;

alter table employee_data
rename column Experience to exp;

select * from employ_salary;
show tables;

drop table employ_salary;

create table Emp_salary
Select SR,SALARY,exp from employee_data;

select * from emp_salary;
truncate table Emp_salary;
rollback;
drop table Emp_salary;

create table emp_salary
Select SR,SALARY,exp from employee_data;

use world;
select * from country;
select count(name) as Total_Continent ,continent from country
group by continent;

use sakila;
show tables;
select * from payment;
select sum(amount) as sum from payment;

select sum(amount),customer_id from payment
group by customer_id;

select * from film;
select count(title) ,rental_duration  from film
group by rental_duration;

use world;

select * from country;
select count(name),continent from country
group by continent
having count(name)<50
order by continent;

select continent,count(name) from country
where surfacearea>100
group by continent
having count(name)<50
order by count(name);

/*set operator*/
use employee;
create table tone(id int);
insert into tone values(1),
(2),
(3)
;

select * from tone;
create table ttwo (id int);
insert into ttwo values(2),
(4),
(5);
select * from ttwo;

select * from tone union select * from ttwo;
select * from tone union all select * from ttwo;
drop table ttwo;
drop table tone;

create table empone (id int,name varchar(20));

insert into empone values(1,'Sai');
insert into empone values(2,'prakash');
insert into empone values(5,'yogesh');
insert into empone values(7,'Sneha');

select * from empone;

create table emptwo(cone int,ctwo varchar(20));

insert into emptwo values(3,'dinesh');
insert into emptwo values(4,'alice');
insert into emptwo values(5,'mahesh');
insert into emptwo values(6,'prajwal');
select * from emptwo;

select * from emptwo union select * from empone;
select * from empone union all select * from emptwo;






