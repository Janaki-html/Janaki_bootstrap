create database sathyabama;
show databases;
use sathyabama;
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
select	* from worker;
--  equalto
select * from worker where department='hr';
select * from worker where first_name='geetika';
-- not equalto
select * from worker where worker_id!=5;
select * from worker where department!='admin';
-- lessthan
select * from worker where salary<100000;
select * from worker where worker_id<6;
-- greaterthan
select * from worker where salary>10000;
select * from worker where worker_id>3;
-- lessthan equal
select * from worker where salary<=1000000;
select * from worker where worker_id<=19999;
-- greaterthan egual
select * from worker where salary>=1000;
select * from worker where worker_id>=5;
-- and operation
select * from worker where salary<=500000 and first_name like 'v%';
select * from worker where first_name like '__nik%' and worker_id=1;
-- or operation
select * from worker where worker_id=1 or salary>=100000;
select * from worker where department ='hr' or salary<=10000;
-- in 
select * from worker where  department in ('hr','admin') ;
select * from worker where worker_id<4 and salary in(100000,1000);
select * from worker where department in('hr') and salary<=1000000;
select * from worker where first_name  in('monika','monicaa');
select * from worker where last_name in ('arora');
-- not in 
select * from worker where department not in('hr','account');
select * from worker where salary not in(100000,300000);
-- between 
select * from worker where salary between 100000 and 500000;
select * from worker where worker_id between 1 and 5;
-- Find workers not in HR or Admin with salary between 70000 and 300000.
select * from worker where department not in('hr','admin') and salary between 70000 and 300000;
--  Find workers with first name starting with 'V' and salary greater than or equal to 200000.
select * from worker where first_name like 'v%' and salary<=200000;
-- Find workers not in Admin with salary < 100000.
select * from worker where department not in('admin') and salary<100000;
-- minimum
select min(salary) as lowestsalary from worker;
select min(worker_id) as seniors from worker;
-- maximum
select max(salary) as Highestsalary from worker;
select max(worker_id) as juniors from worker;
-- sum
select sum(salary) as total from worker where salary>1000 and salary<1000000;
-- count 
select count(first_name) from worker where first_name like 'v%';
-- avg
select avg(worker_id) from worker where department in('hr','account');
-- Find the average salary in the Admin department.
select avg(salary) from worker where department='admin';
-- Total salary for HR and Admin departments combined.
select sum(salary) from worker where department in('hr','admin');
-- Count employees whose first name starts with 'V'.
select count(first_name) from worker where first_name like 'v%';
-- Total salary of employees with salary between 50000 and 200000.
select sum(salary) from worker where salary between 50000 and 200000;
-- union
select first_name from worker union select last_name from worker;
select worker_id from worker union select department from worker;
-- union all
select first_name from worker union all select salary from worker;
select worker_id from worker union all select department from worker;
-- case
select worker_id, first_name,
case
when salary>=10000 and salary<=100000 then 'middle'
when salary>=100000 and salary<=300000 then 'rich'
else 'poor'
end
as statusbasedonsalary
from worker;