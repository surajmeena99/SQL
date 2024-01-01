/* Joins :- Joins is used to join two or more tables. */

use myntra_db;

/* Inner join */

select * from category
inner join subcategory 
on category.cate_id = subcategory.cate_id_fk; 

select category.cate_name, subcategory.subcate_name from category
inner join subcategory 
on category.cate_id = subcategory.cate_id_fk; 

select category.cate_name, subcategory.subcate_name, product.prd_name, product.prd_price from category
join subcategory on category.cate_id = subcategory.cate_id_fk
join product on category.cate_id = product.subcate_id_fk;

/* left join */

select category.cate_name, subcategory.subcate_name from category
left join subcategory 
on category.cate_id = subcategory.cate_id_fk;

/* right join */

select category.cate_name, subcategory.subcate_name from category
right join subcategory 
on category.cate_id = subcategory.cate_id_fk;

/* like and wildcards */

select * from product 
where prd_name like 'D%';

select * from product 
where prd_name like '%s';

select * from product 
where prd_name like '_r%';

select * from product 
where prd_name like '__a%';

select * from product 
where prd_name like 'D__%';

select * from product 
where prd_name like 'D%s';

select * from product 
where prd_name like '%Dre%';

select * from product 
where prd_name not like 'D%';

/*Advance SQL -> Procedures: it is used to execute a same query again and again */

create database procedure_db;

use procedure_db;

create table candidates(
 c_id int,
 c_name varchar(40)
 );
 
 delimiter $$
 create procedure insertdata()
 begin
 insert into candidates(c_id, c_name) values(1, "Suraj");
 end;
 
 call insertdata();
 call insertdata();
 call insertdata();
 call insertdata();
call insertdata();

/* Procedure with parameter */

delimiter $$
create procedure insertDiffData(i int, j varchar(40))
begin
insert into candidates (c_id, c_name) values(i,j);
end;

call insertDiffData(2,"Nisha");
call insertDiffData(3, "Milan");
call insertDiffData(4, "Sohan");
call insertDiffData(5, "Dipak");


/* Triggers in SQL */

create database trigger_db;

use trigger_db;

create table candidates(
c_id int,
c_name varchar(40)
);

create table test(
id int,
name varchar(40),
date_time timestamp,
action_performed varchar(40)
);

delimiter $$
create trigger insert_trigger after  insert on candidates for each row
begin
insert into test(id, name, action_performed)
values(new.c_id, new.c_name, "Record Inserted!");
end;

delimiter $$
create trigger update_trigger after update on candidates for each row
begin
insert into test(id, name, action_performed)
values(new.c_id, new.c_name, "Record Updated!");
end;

update candidates 
set c_name = "Akshay" 
where c_id = 1;

delimiter $$
create trigger delete_trigger after delete on candidates for each row
begin
insert into test(id, name, action_performed)
values(old.c_id, old.c_name, "Record Deleted!");
end;

elete from candidates 
where c_id = 2;






































