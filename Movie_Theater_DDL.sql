create table customer (
    customer_id serial primary key,
    first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	theater_member BOOLEAN default false
);

create table movie (
    movie_id serial primary key,
    title VARCHAR(50) not null,
    rating VARCHAR(50) not null
);

create table payment (
    payment_id serial primary key,
    payment_method VARCHAR(50) not null,
    payment_amount numeric (4,2),
    customer_id INTEGER references customer(customer_id)
);

create table ticket (
    ticket_id serial primary key,
    price numeric default 12.99,
    showing_time TIMESTAMP not null,
    customer_id INTEGER references customer(customer_id),
    movie_id INTEGER references movie(movie_id),
    payment_id INTEGER references payment(payment_id)
);

alter table customer
add column email VARCHAR(50);