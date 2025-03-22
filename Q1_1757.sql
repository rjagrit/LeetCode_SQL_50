/* 
product_id is the primary key (column with unique values) for this table.
low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.
*/

create type status_enum as enum('Y','N')

create table Products
(
	"product_id" int primary key,
	"low_fats" status_enum not null,
	"recyclable" status_enum not null
);

select * from Products

insert into Products
(product_id,low_fats,recyclable)
values
(0,'Y','N')

insert into Products
(product_id,low_fats,recyclable)
values
(1,'Y','Y'),
(2,'N','Y'),
(3,'Y','Y'),
(4,'N','N')

/*
Q. Write a solution to find the ids of products that are both low fat and recyclable.
Return the result table in any order.
*/

select product_id
from Products
where low_fats='Y' and recyclable='Y';