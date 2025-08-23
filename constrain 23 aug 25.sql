show  databases;
create database constrain;
use constrain;
create table students(
student_id int not null,
name varchar(50) not null,
age int
);
show tables from constrain;
desc students;
insert into students values(1,'janaki',19),(2,'janu',17);
select * from students;
alter table students
add unique(age);
insert into students values(3,'ja',18); 
alter table students 
add primary key(student_id);
insert into students values(4,'j',16);
alter table students
add reg_no int unique auto_increment;
insert into students values(5,'j',15,1),(5,'j',15,2);


