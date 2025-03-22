/*
In SQL, id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer 
who referred them.

*/

create table Customer
(
	id int primary key,
	name varchar(10) not null,
	refree_id int
)

insert into Customer
(id,name,refree_id)
values
(1,'Will',null),
(2,'Jane',null),
(3,'Alex',2),
(4,'Bill',null),
(5,'Zack',1),
(6,'Mark',2)

select * from Customer

/*
Find the names of the customer that are not referred by the customer with id = 2.
Return the result table in any order. 
The result format is in the following example.
*/

select name 
from Customer
where
refree_id is null or refree_id!=2

-- One more way to write it
select name 
from Customer 
where 
coalesce(refree_id,0) <> 2 

-- <> is same as !=
