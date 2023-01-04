insert into customer(
	first_name,
	last_name,
	theater_member
) values(
	'Monti',
	'Hines',
	true
);

select *
from customer;

insert into movie(
	title,
	rating
) values(
	'Blood Sport',
	'R'
), (
	'Free Willy 2: The Adventure Home',
	'PG'
), (
	'The Grudge',
	'PG-13'
);

select *
from movie;

insert into payment(
	payment_method,
	payment_amount,
	customer_id
) values (
	'Card',
	12.99,
	1
);

select *
from payment

insert into ticket(
	price,
	showing_time,
	customer_id,
	movie_id,
	payment_id 
) values(
	12.99,
	current_timestamp,
	1,
	1,
	1
), (
	7.99,	
	current_timestamp,
	1,
	2,
	1
);

select *
from ticket;

update customer
set email = 'cd.mhines@gmail.com'
where customer_id = 1;

select *
from customer;