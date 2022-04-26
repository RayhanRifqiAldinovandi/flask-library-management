create table users (
    user_id serial primary key not null,
    name varchar(255),
    address varchar (255),
    phone text
);

create table borrowed (
    borrow_id serial primary key not null,
    username VARCHAR(255),
    book_title varchar (255),
    user_id SERIAL ,
    book_id SERIAL,
    date_borrowed date,
    date_due date,
    days_of_loan int
);

create table books(
    book_id SERIAL PRIMARY KEY NOT NULL,
    book_title varchar(255),
    author (255),
    genre(255)
);

alter table borrowed 
add foreign key (bookid) references books(bookid);

alter table borrowed 
add foreign key (user_id) references users(user_id)