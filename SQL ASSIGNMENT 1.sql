use mavenmovies;
-- question 1) Identify the primary keys and foreign keys in maven movies db. Discuss the differences
-- answer 1) 
select * from information_schema.key_column_usage;
-- a primary key is used to uniquely identify a row within a table whereas a foreign key creates relationship between two tables.
-- question 2) List all details of actors
-- answer2)
select * from actor;
-- question 3) List all customer information from DB.
-- answer 3)
select * from customer;
-- question 4) List different countries.
-- answer 4)
select country from country;
-- question 5) Display all active customers.
-- answer 5)
select customer_id, concat(first_name," ",last_name) as name, email from customer where `active`=1;
-- question 6) List of all rental IDs for customer with ID 1.
-- answer 6)
select rental_id from rental where customer_id=1;
-- question 7) Display all the films whose rental duration is greater than 5.
-- answer 7)
select film_id,title from film where rental_duration > 5;
-- question 8) List the total number of films whose replacemnet cost is greater than $15 and less than  $20.
-- answer 8)
select count(film_id) from film where replacement_cost >15 and replacement_cost <20;
-- question 9) Display the count of unique first names of actors.
-- answer 9)
select count(distinct first_name) from actor;
-- question 10) Display the first 10 recods from the customer table
-- answer 10) 
select * from customer limit 10;
-- question 11) Display the first 3 records from the customer table whose first name starts with 'b'
-- answer 11)
select * from customer where first_name like ('b%') limit 3;
-- question 12) Display the names of first 5 movies which are rated as G.
-- answer 12)
select title from film where rating="g" limit 5;
-- question 13) Find all customers whose first name starts with "a".
-- answer 13)
select * from customer where first_name like ("a%");
-- question 14) Find all customers whose first name ends with "a".
-- answer 14)
select * from customer where first_name like ("%a");
-- question 15) Display the list of first 4 cities which start and end with ‘a’.
-- answer 15)
select city from city where city like ("a%a") limit 4;
-- question 16) Find all customers whose first name have "NI" in any position.
-- answer 16)
select first_name from customer where first_name like '%ni%';
-- question 17)Find all customers whose first name have "r" in the second position .
-- answer 17)
select first_name from customer where first_name like '_r%';
-- question 18)Find all customers whose first name starts with "a" and are at least 5 characters in length.
-- answer 18)
select first_name from customer where first_name like "a____%";
-- question 19) Find all customers whose first name starts with "a" and ends with "o".
-- amswer 19)
select first_name from customer where first_name like "a%o";
-- question 20)Get the films with pg and pg-13 rating using IN operator.
-- answer 20)
select title from film where rating in ("pg", "pg-13");
-- question 21) Get the films with length between 50 to 100 using between operator.
-- answer 21)
select * from film where length between 50 and 100;
-- question 22) Get the top 50 actors using limit operator.
-- answer 22)
select * from actor limit 50;
-- question 23) Get the distinct film ids from inventory table.
-- answer 23)
select distinct film_id from inventory;

-- END OF ASSIGNMENT--



