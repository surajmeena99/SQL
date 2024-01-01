create database 12may_db;

use 12may_db;

show databases;
 
create table student(
stu_id int,
stu_name varchar(40),
stu_subject varchar(40)
);

insert into student
(stu_id, stu_name, stu_subject)
values
(1, "Milan", "Python"),
(2, "Raj", "Java"),
(3, "Nisha", "Android"),
(4, "Mansi", "PHP"),
(5, "Jayraj", "HTML");

/* To change any column name */

alter table student
change stu_name student_name varchar(40);

/* To add new column */

alter table student
add stu_address varchar(40);

/* To delete a column */

alter table student
drop column stu_address;

/* To update particular data in table */

update student
set student_name = "Suraj"
where stu_id = 3;

set sql_safe_updates = 0; /* safe mode off */ 
set sql_safe_updates = 1; /* safe mode on */ 

update student
set stu_subject = "Flutter"
where stu_id = 3;

/* To delete particular data (row) from table */

delete from student
where stu_id = 2;

/* To add particular data (row) in table */

insert into student values (2, "Ritu", "DataBase", "Isro");

/* To delete the whole data from table */

truncate table student;

/* To delete the whole table */

drop table student;
















