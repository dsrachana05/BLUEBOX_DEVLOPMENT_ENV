--#THIS IS THE STAGING AREA, WHERE WE ARE GOING TO DUMP THE FILE'S DATA#

Create database Bluebox;
Use Bluebox;

Create table tbl_stg_actor (
actor_id INT,
first_name VARCHAR(45),
last_name VARCHAR(45),
last_update Date);

select * from tbl_stg_actor;

Create table tbl_stg_address(
address_id INT,
address VARCHAR(50),
address2 VARCHAR(50),
district VARCHAR(20),
city_id INT,
postal_code VARCHAR(10),
phone VARCHAR(20),
last_update Date);

select * from tbl_stg_address;

Create table tbl_stg_customer (
customer_id INT,
store_id INT,
first_name VARCHAR(45),
last_name VARCHAR(45),
email VARCHAR(50),
address_id INT,
active BOOLEAN,
create_date DATE,
last_update Date);

select * from tbl_stg_customer;

create table tbl_stg_country (
country_id INT,
country VARCHAR(50),
last_update Date);

select * from tbl_stg_country;

create table tbl_stg_film_category (
film_id INT,
category_id INT,
last_update Date);

select * from tbl_stg_film_category;

create table tbl_stg_payment (
payment_id INT,
customer_id INT,
staff_id INT,
rental_id INT,
amount DECIMAL(5,2),
payment_date DATE,
last_update Date);

Select * from tbl_stg_payment;

create table tbl_stg_film_text (
film_id INT,
title VARCHAR(255),
description TEXT);

select * from tbl_stg_film_text;

create table tbl_stg_rental (
rental_id INT,
rental_date DATE,
inventory_id INT,
customer_id INT,
return_date DATE,
staff_id INT,
last_update Date);

select * from tbl_stg_rental;

create table tbl_stg_staff (
staff_id INT,
first_name VARCHAR(45),
last_name VARCHAR(45),
address_id INT,
email VARCHAR(50),
store_id INT,
active BOOLEAN,
username VARCHAR(16),
password VARCHAR(40),
last_update Date);

select * from tbl_stg_staff;

Create table tbl_stg_inventory (
inventory_id MEDIUMINT
,
film_id SMALLINT,
store_id TINYINT,
last_update Date);

select * from tbl_stg_inventory;

Create table tbl_stg_store (
store_id INT,
manager_staff_id INT,
address_id INT,
last_update Date);

Select * from tbl_stg_store;

Create table tbl_stg_language (
language_id INT,
name CHAR(20),
last_update Date);

Select * from tbl_stg_language;

Create table tbl_stg_film_actor (
actor_id INT,
film_id INT,
last_update Date);

select * from tbl_stg_film_actor;


Create table tbl_stg_city (
city_id INT,
city VARCHAR(50),
country_id INT,
last_update Date);

Select * from tbl_stg_city;

create table tbl_stg_film (
film_id INT,
title VARCHAR(128),
description TEXT,
release_year YEAR,
language_id INT,
original_language_id INT,
rental_duration INT,
rental_rate DECIMAL(4,2),
length INT,
replacement_cost DECIMAL(5,2),
rating VARCHAR(5),
special_features varchar(20),
last_update Date);

Select * from tbl_stg_film;

Create table tbl_stg_category (
category_id INT,
name VARCHAR(25),
last_update Date);
select * from tbl_stg_category;