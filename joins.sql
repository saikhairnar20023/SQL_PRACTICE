use employee;
select * from empone;
select * from emptwo;
insert into emptwo values(1,'Krishna');
insert into emptwo values(2,'Prabhas');

alter table emptwo
rename column cone to id;

-- joins--
select * from empone
inner join emptwo
on empone.id=emptwo.id;

select * from empone
right join emptwo
on empone.id=emptwo.id;

select * from empone
left join emptwo
on empone.id=emptwo.id;

select * from empone
Full join emptwo
on empone.id=emptwo.id;


