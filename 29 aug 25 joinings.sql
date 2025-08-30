create database student;
use student;
create table student(
  sid int8 not null,
  sname varchar(30),
  department varchar(30)
  );
  insert into student values(1,'muthu','ece'),(2,'janu','eee'),(3,'subbu','eee');
  select * from student;
create table valueaddcourse(
      cid int not null ,
      cname varchar(30)
      );
insert into valueaddcourse values(101,'ardunio ');
select * from valueaddcourse;
select * from student cross join valueaddcourse;
create table examresult(
   sid int not null,
   smark varchar(30)
   );
 insert into examresult values(1,99),(2,85),(5,75);
 select * from examresult;
 select * from student inner join examresult where student.sid = examresult.sid;
 select * from student natural join examresult where student.sid = examresult.sid;
 select * from student left outer join examresult on student.sid = examresult.sid;
 select * from student right outer join examresult on student.sid = examresult.sid;
 select * from student left  outer join examresult on student.sid = examresult.sid
 union
 select * from student right outer join examresult on student.sid = examresult.sid;
      
