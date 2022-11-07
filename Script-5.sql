--QUESTION #1

select first_name, last_name, district
from customer
full join address
on customer.address_id = address.address_id
where district = 'Texas';

--QUESTION 2

select amount, first_name, last_name
from payment
full join customer
on payment.customer_id = customer.customer_id
where amount > 6.99;



-- QUESTION 3	

select first_name, last_name
from customer 
where customer_id in (
	select customer_id 
	from payment
	group by customer_id 
	having sum(amount) > 175
	order by sum(amount) desc
	);
	
-- QUESTION 4  answer == none

select customer.first_name, customer.last_name, customer.email, city
from customer
full join address
on customer.address_id = address.address_id
full join city 
on address.city_id = city.city_id 
where city = 'Nepal';

-- QUESTION 5

select staff_id, count(payment_id)
from payment
group by staff_id;





--QUESTION 6

select rating, count(distinct film_id)
from film
group by rating
order by count(film_id) desc;


--QUESTION 7

select customer_id, sum(distinct amount)
from payment
where amount > 6.99
group by customer_id



-- question 8  answer = 24

select count(rental_id), sum(distinct amount)
from payment
where amount = 0.00



