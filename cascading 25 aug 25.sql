show databases;
use sathyabama;
create table college(
college_id int primary key,
college_name varchar(30) not null
);
insert into college values(101,'SIST'),(102,'ANNA'),(103,'SRM');
create table department(
dept_id int primary key,
dept_name varchar(30) not null,
college_id int,
foreign key (college_id) references college(college_id)on delete cascade
);
insert into department values(1001,'EEE',101),(1002,'E&I',102),(1003,'ECE',103),(1004,'CSE',101),(1005,'CHEM',102);
create table student(
stud_id int primary key,
stud_name varchar(30) not null,
dept_id int,
foreign key (dept_id) references department(dept_id),
college_id int,
foreign key (college_id) references college(college_id)on delete cascade 
);
insert into student values(1,'janaki',1001,101),(2,'muthu',1001,102),(3,'subbu',1002,103),(4,'janu',1005,103),(5,'papin',1004,102);
show tables from sathyabama;
desc college;
select * from college;
select * from department;
select * from student;
delete from college where college_id=103 ;
ALTER TABLE department
DROP FOREIGN KEY department_college;
alter table department
add constraint department_college
foreign key (college_id) references college(college_id) on delete cascade on update cascade;




