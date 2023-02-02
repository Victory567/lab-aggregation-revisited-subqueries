SELECT  first_name, last_name, email
 FROM customer;
 
 
 select c.customer_id  , avg(amount) 
from customer as c
join  payment as p using (customer_id)
group by c.customer_id;
    

  select first_name, last_name, email
  from customer
  join rental on customer.customer_id = rental.customer_id
  join inventory on rental.inventory_id = inventory.inventory_id
  join film on film.film_id = inventory.film_id
  join film_category on film_category.film_id = film.film_id
  join category on category.category_id = film_category.category_id
  where category.name = "Action"
  group by first_name, last_name, email;

