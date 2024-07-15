Exercise 1 — Tasks:
-- 1. Find the title of each film
SELECT Title
FROM movies
-- 2. Find the director of each film
SELECT Director
FROM movies
-- 3. Find the title and director of each film
SELECT Director, Title
FROM movies
-- 4. Find the title and year of each film
SELECT Title, Year
FROM movies
-- 5. Find all the information about each film
SELECT *
FROM movies

Exercise 2 — Tasks:
-- 1. Find the movie with a row id of 6
SELECT * 
FROM movies
WHERE id = "6"
-- 2. Find the movies released in the years between 2000 and 2010
SELECT * 
FROM movies
WHERE year between 2000 and 2010
-- 3. Find the movies not released in the years between 2000 and 2010
SELECT * 
FROM movies
WHERE year NOT BETWEEN 2000 and 2010
-- 4.Find the first 5 Pixar movies and their release year
SELECT Title, Year
FROM movies
LIMIT 5

Exercise 3 — Tasks:
-- 1. Find all the Toy Story movies
SELECT * 
FROM movies
WHERE Title LIKE "Toy Story%"
-- 2. Find all the movies directed by John Lasseter
SELECT * 
FROM movies
WHERE Director = "John Lasseter"
-- 3. Find all the movies (and director) not directed by John Lasseter
SELECT * 
FROM movies
WHERE Director != "John Lasseter"
-- 4. Find all the WALL-* movies
SELECT * 
FROM movies
WHERE Title LIKE "WALL_%"

Exercise 4 — Tasks
-- 1. List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT Director
FROM Movies
ORDER BY Director ASC
-- 2. List the last four Pixar movies released (ordered from most recent to least)
SELECT *
FROM Movies
ORDER BY Year DESC
LIMIT 4
-- 3. List the first five Pixar movies sorted alphabetically
SELECT *
FROM Movies
ORDER BY Title ASC
LIMIT 5
-- 4. List the next five Pixar movies sorted alphabetically
SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;

Review 1 — Tasks
-- 1. List all the Canadian cities and their populations
SELECT * 
FROM north_american_cities
WHERE Country = "Canada"
-- 2. Order all the cities in the United States by their latitude from north to south
SELECT city, latitude FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;
-- 3. List all the cities west of Chicago, ordered from west to east
SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC
-- 4. List the two largest cities in Mexico (by population)
SELECT City, Population
FROM north_american_cities
WHERE Country = "Mexico"
ORDER BY Population DESC
LIMIT 2
-- 5. List the third and fourth largest cities (by population) in the United States and their population
SELECT city, population 
FROM north_american_cities
WHERE country LIKE "United States"
ORDER BY population DESC
LIMIT 2 OFFSET 2

Exercise 6 — Tasks
-- 1. Find the domestic and international sales for each movie
SELECT * 
FROM Movies
INNER JOIN Boxoffice ON Movies.Id = Boxoffice.Movie_id
-- 2. Show the sales numbers for each movie that did better internationally rather than domestically
SELECT title, domestic_sales, international_sales
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales
-- 3. List all the movies by their ratings in descending order
SELECT title, rating
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
ORDER BY rating DESC

Exercise 7 — Tasks
-- 1. Find the list of all buildings that have employees
SELECT DISTINCT building 
FROM employees
-- 2. Find the list of all buildings and their capacity
SELECT * 
FROM buildings
-- 3. List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT building_name, role 
FROM buildings 
LEFT JOIN employees ON building_name = building

Exercise 8 — Tasks
-- 1. Find the name and role of all employees who have not been assigned to a building
SELECT name, role 
FROM employees
WHERE building IS NULL
-- 2. Find the names of the buildings that hold no employees
SELECT DISTINCT building_name
FROM buildings 
LEFT JOIN employees ON building_name = building
WHERE role IS NULL

Exercise 9 — Tasks
-- 1. List all movies and their combined sales in millions of dollars
-- 2. List all movies and their ratings in percent
-- 3. List all movies that were released on even number years
