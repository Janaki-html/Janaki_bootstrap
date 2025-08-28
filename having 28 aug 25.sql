create database sathyabama;
use sathyabama;
create table award_winners(
id int,
name varchar(25),
award_name varchar(30));

insert into award_winners values(001,'Karthick','Volleyball winners'),
(002,'Gopi','Basketball Runners'),
(003,'Adib','Oscar winners'),
(004,'Harij','English SpellBee 2nd Runner-up'),
(005,'Loki','Volleyball winners'),
(006,'Sakthi','Badminton Nationals runners'),
(007,'Iqhlas','Debug winners'),
(008,'AK','Basketball runners'),
(009,'Kamal','Hackathon runners'),
(010,'Barath','Hackathon winners');

select * from award_winners;

create table students(
id int,
name varchar(25));

insert into students values(005,'Loki'),
(1001,'Srihari'),
(1003,'Dinesh'),
(001,'Karthick'),
(1005,'Tharun'),
(1006,'Vamsi'),
(1007,'Monish'),
(1008,'Rohith'),
(1009,'Alwyn'),
(1010,'Akash');
select * from students;
-- Find all students who have won an award.
select * from students where id in (select id from award_winners);
-- Find all students who have NOT won any award.
select *from students where id not in(select id from award_winners);



