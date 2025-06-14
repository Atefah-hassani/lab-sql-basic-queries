use sakila;
select * from sakila.actor;
# Display all available tables in the Sakila database.
show tables;

# Retrieve all the data from the tables actor, film and customer.
select * from actor;
select * from film;
select * from customer;
# Retrieve the following columns from their respective tables:
# 3.1 Titles of all films from the film table
select title from film; 
# 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;
# 3.3 List of first names of all employees from the staff table
select * from staff;
select first_name from staff;

# Retrieve unique release years.
select distinct release_year from film;

# Counting records for database insights:
# 5.1 Determine the number of stores that the company has.
select * from store; 
select count(*) store_count from store; 

# 5.2 Determine the number of employees that the company has.
select * from staff;
select count(*) as employees_count from staff;

# 5.3 Determine how many films are available for rent and how many have been rented.
select count(DISTINCT film_id) AS films_available_for_rent from inventory;
SELECT COUNT(DISTINCT inventory.film_id) AS films_rented
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id;


# 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names FROM actor;

# Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

# Use filtering techniques in order to:
# 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * 
FROM actor
WHERE first_name = 'SCARLETT';

# BONUS: 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
# Hint: use LIKE operator. More information here.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

# 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';






