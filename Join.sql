# 1. List the number of films per category.

select name, count(film_id)
from sakila.category c 
left join sakila.film_category f on c.category_id = f.category_id
GROUP BY name;


#2.Display the first and the last names, as well as the address, of each staff member.
select * from sakila.staff;
select * from sakila.address;
select s.address_id, s.first_name, s.last_name, a.address
from sakila.staff s 
left join sakila.address a on s.address_id = a.address_id;

# 3. Display the total amount rung up by each staff member in August 2005.
select * from sakila.staff;
select * from sakila.payment;
select s.first_name, s.last_name, sum(amount)
from sakila.staff s 
left join sakila.payment p on s.staff_id = p.staff_id
GROUP BY s.first_name, s.last_name;

# 4. List all films and the number of actors who are listed for each film.
select * from sakila.film;
select * from sakila.film_actor;
select title, count(actor_id)
from sakila.film f 
left join sakila.film_actor a on f.film_id = a.film_id
GROUP BY title;

# 5. Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer. List the customers alphabetically by their last names.
select * from sakila.payment;
select * from sakila.customer;
select first_name, last_name, sum(amount)
from sakila.customer c
left join sakila.payment p on c.customer_id= p.customer_id
group by first_name, last_name;