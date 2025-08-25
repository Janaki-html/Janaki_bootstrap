create database ORG123;
show databases;
use ORG123;

create table Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);
INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES
  (001, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
  (002, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
  (003, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
  (004, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
  (005, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
  (006, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
  (007, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account');

create view Emp as
select * from Worker;
select * from Worker as Employee;


select * FROM worker where first_name like 'M%';
select * from worker where salary <=100000 and department='HR';
select * from worker where last_name like '__or%';
select * from worker where department like'_R';
select * from worker where worker_id like 1;
create view less_than_1l as select * where salary<=100000 and department='HR';
select * from less_than_1l;



