create DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

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
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account');
        select * from worker;
        -- order by
        select * from worker where department='hr' order by salary asc;
        -- total salary of workers who are all in hr department  and print ascending order
        select department, sum(salary)
        from worker 
		group by department order by salary asc ;
        -- count workers except hr and admin
        select count(first_name) from worker where department not in('hr','admin');
        -- to find the highest salary of each department and print asc order
        select department,max(salary) from worker group by department order by max(salary) asc;
         -- count workers except hr and admin
        select department,count(department) from worker group by department order by department asc; 
        select department,salary from worker where department like 'h%' order by salary asc;
        select department from worker where first_name like 'm%' order by department asc;
        select joining_date,department from worker order by department;
        -- offset and limiting
		select * from worker order by worker_id limit 5 offset 2 ;
        -- skipping with using row_number()
        select * from ( select*,row_number() over (order by worker_id) as rn from worker ) as temp where rn>5;
        select * from worker where worker_id not in ( select worker_id from worker order by worker_id limit 5);
        
