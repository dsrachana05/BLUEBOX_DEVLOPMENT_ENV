create table TBL_Actor_HOP1
(actor_id INT,
name VARCHAR(100),
last_update date);


create table TBL_Address_HOP1
(address_id INT,
  address VARCHAR(50),
  district VARCHAR(20),
  city_id INT,
  postal_code VARCHAR(10),
  phone VARCHAR(20),
  last_update Date);


create table TBL_Customer_HOP1
( customer_id INT,
  store_id INT,
  name VARCHAR(100),
  email VARCHAR(50),
  address_id INT,
  active BOOLEAN);
  
create table TBL_film_HOP1
( film_id SMALLINT,
  title VARCHAR(128),
  description TEXT,
  release_year YEAR,
  language_id INT,
  rental_duration INT,
  rental_rate DECIMAL(4, 2),
  length INT,
  replacement_cost DECIMAL(5, 2),
  rating VARCHAR(5),
  special_features VARCHAR(20),
  last_update date );


create table TBL_Category_HOP1
( category_id INT,
  name VARCHAR(25));


create table TBL_City_HOP1
 (city_id INT,
  city VARCHAR(50),
  country_id VARCHAR(50));
  
  
 create table TBL_Film_Actor_HOP1
( actor_id INT,
  film_id INT);
Select * from TBL_Film_Actor_HOP1;
  
create table TBL_film_category_hop1 
( film_id INT,
  category_id INT);
  
  create table TBL_Payment_hop1
  (payment_id INT,
  customer_id INT,
  staff_id INT,
  rental_id INT,
  amount DECIMAL(5, 2),
  payment_date DATE);


create table TBL_Store_hop1 
( store_id INT,
  manager_staff_id INT,
  address_id INT);


create table TBL_INVENTORY_hop1
( inventory_id INT,
  film_id INT,
  store_id INT);

create table TBL_Film_Text_hop1
( film_id INT,
  title VARCHAR(255),
  description TEXT);

create table TBL_Rental_hop1 
( rental_id INT,
  rental_date DATETIME,
  inventory_id MEDIUMINT,
  customer_id SMALLINT,
  return_date DATETIME,
  staff_id TINYINT);


create table TBL_Staff_hop1
( staff_id TINYINT,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  address_id SMALLINT,
  picture BLOB,
  email VARCHAR(50),
  store_id TINYINT,
  active BOOLEAN,
  username VARCHAR(16),
  password VARCHAR(40));


create table TBL_country_hop1 (
    country_id SMALLINT,
    country VARCHAR(50));
    
    
create table TBL_Languages_hop1 
(language_id TINYINT,
  name CHAR(20));