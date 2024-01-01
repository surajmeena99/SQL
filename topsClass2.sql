create database myntra_db;

use myntra_db;

create table category(
 cate_id int primary key,
 cate_name varchar(40)
 );
 
INSERT INTO category 
(cate_id, cate_name)
VALUES
(1, "Men's"),
(2, "Women's"),
(3, "Kid's");

select * from category;

create table subcategory(
subcate_id int primary key auto_increment,
subcate_name varchar(40),

cate_id_fk int,
foreign key (cate_id_fk) references category(cate_id)
);

INSERT INTO subcategory
(subcate_id, subcate_name, cate_id_fk)
VALUES
(1, "Men's wear", 1),
(2, "Women's wear", 2),
(3, "Kid's wear", 3);

select * from subcategory;

create table product(
  prd_id int primary key auto_increment,
  prd_name varchar(40),
  prd_price int,
  prd_desc_price int,
  
  cate_id_fk int,
  subcate_id_fk int,
  
  foreign key (cate_id_fk) references category(cate_id),
  foreign key (subcate_id_fk) references subcategory(subcate_id)
  on update cascade
  on delete cascade
);

INSERT INTO product
(prd_id, prd_name, prd_price, prd_desc_price, cate_id_fk, subcate_id_fk)
VALUES
(1, 'Shirts', 2000, 200, 1, 1),
(2, 'Dress', 5000, 500, 2, 2),
(3, 'Diper', 1000, 100, 3, 3);

select * from category;

update subcategory
set subcate_id = 4
where subcate_id = 3;

drop table product;

create database bollywood;
use bollywood;
create table movies(
  movie_id int primary key auto_increment,
  movie_name varchar(40)
);

insert into movies
values
(1, "kantara"),
(2, "gadar");

select * from movies;

create table celebrity(
  celebrity_id int primary key auto_increment,
  celebrity_name varchar(40),
  
  movie_id_fk int,
  foreign key (movie_id_fk) references movies(movie_id)
);

select * from celebrity;

insert into celebrity
values
(1, "kantara hero", 1),
(2, "sunny deol", 2);

use 12may_db;

create table person(
  person_id int primary key auto_increment,
  person_name varchar(40),
  person_address varchar(40),
  person_mobile varchar(10) unique not null
);

select * from person;

insert into person
values
(1, "savan", "sola bhagwat", 9054364096),
(2, "suraj", "iskcon Temple", 8003751967);

alter table person
drop column person_address;










