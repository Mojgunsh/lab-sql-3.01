use sakila;
-- Drop column picture from staff.

ALTER TABLE staff;
 -- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer.
 -- update the database accordingly.

INSERT INTO staff (first_name,last_name,address_id,store_id,active,username,last_update) 
VALUES
('TAMMY','SANDERS',4,2,1,'Tammy',CURRENT_TIMESTAMP());
select * from staff;
-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 
-- 1. You can use current date for the rental_date column in the rental table. 
-- Hint: Check the columns in the table rental and see what information you would need to add there. 
-- You can query those pieces of information. For eg., you would notice that you need customer_id information as well. 
-- To get that you can use the following query:
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- customer id=130
select staff_id from staff where first_name='Mike' and last_name='Hillyer';
-- staff_id =1
-- we need film_id for get infor regarding inventory_id;
select * from film where title='Academy Dinosaur';
-- film_id=1
-- then we create inventory id form this rental
insert into inventory(film_id,store_id,last_update)
values
	(1,1,CURRENT_TIMESTAMP());
-- the inventory_id id 4582    
insert into rental( rental_date,inventory_id,customer_id,staff_id,last_update)
values
		(CURRENT_TIMESTAMP(),4582,130,1,CURRENT_TIMESTAMP())

 
 
 
 
 
 
