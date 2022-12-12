-- In the table actor, which are the actors whose last names are not repeated? 
SELECT last_name FROM actor
GROUP BY last_name
HAVING COUNT(last_name) = 1;

-- Which last names appear more than once? 
SELECT last_name as 'duplicate' FROM actor
GROUP BY last_name
HAVING COUNT(last_name) != 1;
-- Using the rental table, find out how many rentals were processed by each employee.
SELECT staff_id, COUNT(staff_id) AS 'rentals num'
FROM rental
GROUP BY staff_id;
-- Using the film table, find out how many films were released each year.
SELECT * FROM film;
select count(film_id) as 'number of films', release_year from film
group by release_year;
-- Using the film table, find out for each rating how many films were there.
select rating, count(*) 
from film 
group by rating;
-- What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
select rating, round(avg(length), 2) as 'mean length'
from film
group by rating;

-- Which kind of movies (rating) have a mean duration of more than two hours?

select rating, round(avg(length), 2)
from film
group by rating
having avg(length) > 120;


