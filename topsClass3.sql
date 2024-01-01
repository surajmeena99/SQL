use myntra_db;

select * from product;

select * from product 
where prd_id = 2;

select * from  product 
where prd_name = "Dress";

select * from  product 
where prd_price = 2000;

select prd_name from  product;

select prd_name, prd_price from  product;

select prd_name, prd_price, prd_desc_price from  product;

select * from product 
where prd_price > 1500;

select * from product 
where prd_desc_price < 500;

select * from product 
where prd_price between 1000 and  3000;

/* Aggregate Function */

select min(prd_price) from product;

select prd_name, min(prd_price) from product GROUP BY prd_name;

select max(prd_price) from product;

select avg(prd_price) from product;

select count(prd_id) from product;

/* Aliases -> To change column name temporary -as */

select sum(prd_price) as total from product;

/* order by */

select * from product order by prd_price asc;

select * from product order by prd_desc_price desc;

select * from product order by prd_name asc;

/* Date-time inbuilt function */

select curdate();

select curtime();

select now();

select distinct prd_price from product;

/*string inbuilt functions */

select concat("Suraj"," ","Meena");
select concat("fname"," ","lname") as fullname from category;

select reverse("suraj");

select length("Suraj");

select upper("suraj");

select lower("SURAJ");

/* group by */

select age, count(id) from student group by age;

select fname, count(id) from student group by fname;





