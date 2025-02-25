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

```
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

![image](https://github.com/user-attachments/assets/fd4152e8-f205-4c88-8c0c-d991e0a18a7e)

*Q2. I would like to get a better understanding of all of the inventory that would come along with the business. 
Please pull together a list of each inventory item you have stocked, including the store_id number, the inventory_id, 
the name of the film, the film’s rating, its rental rate and replacement cost.*

ANSWER:-

```
SELECT  
    inventory.store_id,  
    inventory.inventory_id,  
    film.title,  
    film.rating,  
    film.rental_rate,  
    film.replacement_cost  
FROM inventory  
LEFT JOIN film  
ON inventory.film_id = film.film_id  
 
```
![image](https://github.com/user-attachments/assets/7758e9de-c442-4c6a-a46f-ac2e8aa20f52)


*Q3. From the same list of films you just pulled, please roll that data up and provide a summary level overview of your inventory.
We would like to know how many inventory items you have with each rating at each store.*

ANSWER:-

```
SELECT  
    inventory.store_id,  
    film.rating,  
    COUNT(inventory_id) AS inventory_items  
FROM inventory  
LEFT JOIN film  
ON inventory.film_id = film.film_id  
GROUP BY  
    inventory.store_id,  
    film.rating  
 ; 

```
![image](https://github.com/user-attachments/assets/e8fe40c2-37c8-46c3-a0cf-15be69c7e545)


*Q4. Similarly, we want to understand how diversified the inventory is in terms of replacement cost. 
We want to see how big of a hit it would be if a certain category of film became unpopular at a certain store.
We would like to see the number of films, as well as the average replacement cost, and total replacement cost, sliced by store and film category.*


ANSWER:-

```
SELECT  
    store_id,  
    category.name AS category,  
    COUNT(inventory.inventory_id) AS films,  
    AVG(film.replacement_cost) AS avg_replacement_cost,  
    SUM(film.replacement_cost) AS total_replacement_cost  
FROM inventory  
LEFT JOIN film  
ON inventory.film_id = film.film_id  

LEFT JOIN film_category  
ON film.film_id = film_category.film_id  

LEFT JOIN category  
ON category.category_id = film_category.category_id  

GROUP BY  
    store_id,  
    category.name  ;
```
![image](https://github.com/user-attachments/assets/8b3211b2-e2f3-4a40-bb34-1753014d665e)



*Q5. We want to make sure you folks have a good handle on who your customers are. Please provide a list of all customer names,
which store they go to, whether or not they are currently active, and their full addresses – street address, city, and country.*

ANSWER:-

```
SELECT
    customer.first_name,
    customer.last_name,
    customer.store_id,
    customer.active,
    address.address,
    city.city,
    country.country
FROM customer
LEFT JOIN address ON customer.address_id = address.address_id
LEFT JOIN city ON address.city_id = city.city_id
LEFT JOIN country ON city.country_id = country.country_id;
 ; 
```

![image](https://github.com/user-attachments/assets/2ad15a70-bfac-4f54-afa6-18413a887db0)



*Q6.We would like to understand how much your customers are spending with you, and also to know who your most valuable customers are. 
Please pull together a list of customer names, their total lifetime rentals, and the sum of all payments you have collected from them.
It would be great to see this ordered on total lifetime value, with the most valuable customers at the top of the list.*

ANSWER:-

```
SELECT
    customer.first_name,
    customer.last_name,
    COUNT(rental.rental_id) AS total_rentals,
    SUM(payment.amount) AS total_payment_amount
FROM customer
LEFT JOIN rental ON customer.customer_id = rental.customer_id
LEFT JOIN payment ON rental.rental_id = payment.rental_id
GROUP BY
    customer.first_name,
    customer.last_name;
ORDER BY
    SUM(payment.amount)DESC
```
![image](https://github.com/user-attachments/assets/5d2a32c8-deeb-46bb-9919-55443334b96e)



*Q7. My partner and I would like to get to know your board of advisors and any current investors. 
Could you please provide a list of advisor and investor names in one table? Could you please note whether they are an investor or an advisor,
and for the investors, it would be good to include which company they work with.*

ANSWER:- 

```
SELECT
    'investor' AS type,
    first_name,
    last_name,
    company_name
FROM investor
UNION
SELECT
    'advisor' AS type,
    first_name,
    last_name,
    NULL
FROM advisor;
```

![image](https://github.com/user-attachments/assets/94873db2-b148-40dd-8b8a-b4c1353b9d66)



*Q8. We're interested in how well you have covered the most-awarded actors and all the actors with three types of awards, 
for what % of them do we carry a film? And how about for actors with two types of awards?
Same questions. Finally, how about actors with just one award?*

ANSWER:-

```
SELECT
   CASE
    WHEN actor_award.awards = 'Emmy, Oscar, Tony' THEN '3 awards'
    WHEN actor_award.awards IN ('Emmy, Oscar', 'Emmy, Tony', 'Oscar, Tony') THEN '2 awards'
    ELSE '1 award'
    END AS number_of_awards,
    AVG(CASE WHEN actor_award.actor_id IS NULL THEN 0 ELSE 1 END) AS pct_w_one_film

FROM actor_award

GROUP BY
CASE
    WHEN actor_award.awards = 'Emmy, Oscar, Tony' THEN '3 awards'
    WHEN actor_award.awards IN ('Emmy, Oscar', 'Emmy, Tony', 'Oscar, Tony') THEN '2 awards'
    ELSE '1 award'
END
```
![image](https://github.com/user-attachments/assets/f73ffd1f-8b3e-4bbe-b195-0103ae480d34)


# Findings #

**1. Store Management & Locations**
.The business operates multiple stores, each managed by a dedicated staff member.
.The full address details (street, district, city, and country) of each store are well-maintained.
.Insight: The buyer can visit the stores and evaluate operations firsthand before finalizing the acquisition.

**2. Inventory Overview**
.Each store has a diverse collection of films, categorized by title, rating, rental rate, and replacement cost.
.The inventory varies in replacement costs, which indicates potential risk if a category becomes unpopular.
.Insight: The business has a structured and trackable inventory system, making asset valuation easier for the buyer.

**3. Inventory Summary by Rating**
.The stores stock films across multiple ratings, but the distribution varies per location.
.Some stores have a higher inventory count in specific rating categories.
.Insight: The buyer should analyze customer preferences to ensure the right mix of film ratings is maintained for each store.

**4. Financial Risk in Inventory (Replacement Cost Analysis)**
.Some film categories have a higher average replacement cost.
.Stores with a high concentration of expensive films could face larger financial losses if those categories lose popularity.
.Insight: The buyer may need to adjust film stock or introduce new categories to mitigate risks.

**5. Customer Base & Engagement**
.The business has an active customer base across multiple stores.
.Customer records include names, store associations, and addresses, ensuring easy communication and marketing opportunities.
.Insight: The buyer can leverage this customer data for targeted marketing campaigns and retention strategies.

**6. Revenue & Customer Value**
.A significant portion of revenue comes from a small group of high-value customers.
.The business relies on repeat rentals, highlighting the importance of customer loyalty.
.Insight: The buyer should focus on maintaining strong relationships with these top customers while also attracting new customers.

**7. Investor & Advisor Details**
.The business has a structured advisory and investor board.
.Investors are linked to specific companies, and advisors provide strategic guidance.
.Insight: The buyer can leverage these advisors and investors to understand business decisions and future opportunities.

**8. Film Coverage of Award-Winning Actors**
.The store covers a good percentage of actors with multiple awards (Emmy, Oscar, Tony).
.However, the coverage of actors with only one award is lower.
.Insight: Expanding inventory to include more films featuring award-winning actors may attract more movie enthusiasts.

# Suggestions #

**1. Store Optimization & Expansion**
Evaluate store performance and consider consolidating underperforming locations.
Introduce store-specific promotions based on customer preferences.

**2. Inventory Management**
Balance inventory distribution to match demand trends.
Reduce dependence on high-replacement-cost films if their rental rates are low.

**3. Customer Retention Strategies**
Implement loyalty programs for repeat customers.
Offer targeted discounts or memberships for high-value customers.

**4. Financial & Risk Management**
Diversify film inventory to minimize financial risk from replacement costs.
Consider insurance or damage protection plans for high-cost films.

**5. Marketing & Branding**
Use customer data to run personalized marketing campaigns.
Advertise exclusive collections of award-winning films to attract cinephiles.

**6. Business Acquisition Strategy**
Engage with existing investors and advisors to understand growth potential.
Leverage historical revenue data to negotiate the acquisition price effectively.




