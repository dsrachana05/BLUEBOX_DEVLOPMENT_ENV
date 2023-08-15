insert into TBL_Actor_hop1
select actor_id ,
concat(first_name, ' ', last_name) Name,
last_update from tbl_stg_actor;

insert into TBL_Address_Hop1
select address_id,
  address ,
  district,
  city_id ,
  ifnull(postal_code,0) postal_code,
  ifnull(phone, 0000000000) phone,
  last_update from tbl_stg_address;
  
  insert into TBL_Customer_Hop1
  select customer_id 
  store_id ,
  concat(first_name, ' ' ,last_name) Name,
  email ,
  address_id ,
  active from tbl_stg_customer;
  update customer_hop1
  set email = replace(email, 'sakilacustomer.org', 'blueboxdvd.com')
  where email LIKE '%@sakilacustomer.org';

insert into TBL_Film_Hop1
select film_id,
  title ,
  description ,
  release_year,
  language_id ,
  rental_duration ,
  rental_rate ,
  length ,
  replacement_cost ,
  case
  when rating = 'G' then 'General Audience' 
  when rating = 'PG' then 'Parental Guidance'
  when rating = 'PG-13' then 'Parents Strongly Cautioned'
  when rating = 'R' then 'Restricted'
  when rating = 'NC-17' then 'Adults only'
  else rating end
  rating ,
  special_features ,
  last_update from tbl_stg_film;
  
create table TBL_TRANS_Category_Hop1
(  category_id TINYINT,
  name VARCHAR(25));


insert into TBL_City_Hop1
 (select city_id,
  city ,
  country_id from tbl_stg_city);
  
  
 insert into  TBL_TRANS_FILM_ACTOR_Hop1
  (select actor_id,
  film_id from fim_actor);

  
insert into TBL_TRANS_FILM_Category_Hop1 
(select film_id ,
  category_id from film_category);
  
insert into TBL_TRANS_Payment_Hop1
  (select payment_id ,
  customer_id ,
  staff_id ,
  rental_id,
  amount ,
  payment_date from payment);


insert into TBL_TRANS_Store_Hop1
(select store_id ,
  manager_staff_id ,
  address_id from store);


insert into TBL_TRANS_Inventory_Hop1
( select inventory_id ,
  film_id ,
  store_id from inventory);

insert into  TBL_TRANS_Film_text_Hop1
( select film_id ,
  title ,
  description from film_text);

insert into TBL_TRANS_Rental_Hop1
( select rental_id,
  rental_date ,
  inventory_id,
  customer_id ,
  return_date ,
  staff_id from rental);


insert into TBL_TRANS_staff_Hop1_
( select staff_id ,
  first_name ,
  last_name ,
  address_id ,
  picture ,
  email ,
  store_id,
  active ,
  username ,
  password from staff);


insert into TBL_TRANS_Film_Actor_HOP1
( select actor_id ,
  film_id from film_actor);


insert into TBL_TRANS_Language_HOP1
(select language_id,
  name from languages);
  
  
insert into TBL_TRANS_store_HOP1
(select store_id ,
  manager_staff_id ,
  address_id from store);

insert into TBL_TRANS_country_hop1 (
    select country_id ,
    country from country);