# MySQL-business-analysis #

*The project focuses on extracting key business insights using multi-table joins, aggregations, and data filtering, 
the queries help answer business questions from a potential acquirer interested in the rental business.*


**SITUATION**

*A business Owner was recently approached by another local business owner who is interested in purchasing maven movies. 
He primarily owns restaurants and bars, so he has lots of questions for me about his business and the rental business in general.
His offer seems very generous, so I am going to answer his questions.*

**OBJECTIVE**

To leverage MySQL queries for analyzing the Maven Movies database, extracting key business insights on film rentals, inventory, replacement costs, and customer payments.
This project aims to answer data-driven questions using multi-table joins, aggregations, and analytical SQL techniques, providing valuable insights for a potential acquisition.

**Some of the question asked by the owner.**

*Q1. My partner and I want to come by each of the stores in person and meet the managers. 
Please send over the managers’ names at each store, with the full address of each property 
(street address, district, city, and country please).*

ANSWER:-

```CODE
SELECT 
    staff.first_name AS manager_first_name,
    staff.last_name AS manager_last_name,
    address.address,
    city.city,
    country.country
    
FROM store
     LEFT JOIN staff ON store.manager_staff_id = staff.staff_id
     LEFT JOIN address ON store.address_id = address.address_id
	 LEFT JOIN city ON address.city_id = city.city_id
     LEFT JOIN country ON city.country_id = country.country_id;
```


![image](https://github.com/user-attachments/assets/ee5bc0bf-ea5b-413b-a1cb-69a5cdea41df)

*Q2. I would like to get a better understanding of all of the inventory that would come along with the business. 
Please pull together a list of each inventory item you have stocked, including the store_id number, the inventory_id, 
the name of the film, the film’s rating, its rental rate and replacement cost.*

ANSWER:-

```CODE
SELECT  
    inventory.store_id,  
    inventory.inventory_id,  
    film.title,  
    film.rating,  
    film.rental_rate,  
    film.replacement_cost  
FROM inventory  
LEFT JOIN film  
ON inventory.film_id = film.film_id;
```
