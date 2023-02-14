-- Exercise 1
SELECT Title 
FROM movies;

SELECT director  
FROM movies;

SELECT director,title  
FROM movies;

SELECT year ,title  
FROM movies;

SELECT *   
FROM movies;

-- Exercise 2

SELECT * 
FROM movies 
WHERE ID=6;


SELECT * 
FROM movies 
WHERE Year BETWEEN 2000 AND 2010;


SELECT * 
FROM movies 
WHERE Year NOT BETWEEN 2000 AND 2010;


SELECT * 
FROM movies 

LIMIT 5;

-- Exercise 3

SELECT * 
FROM movies 
WHERE Title like "%toy Story%";


SELECT * 
FROM movies 
WHERE Director  like "%John Lasseter%";


SELECT * 
FROM movies 
WHERE Director not like "%John Lasseter%";


SELECT * 
FROM movies 
WHERE Title  like "%WALL-%";

-- Exercise 4

SELECT DISTINCT Director 
FROM movies 
ORDER BY Director;


SELECT * 
FROM movies 
ORDER BY Year desc 
limit 4;


SELECT * 
FROM movies 
order by Title 
limit 5 ;


SELECT * 
FROM movies 
order by Title 
limit 5 offset 5 ;

-- Exercise 5
SELECT * 
FROM north_american_cities 
where country = "Canada";

SELECT * 
FROM north_american_cities 
WHERE Country like "%United States%" 
order by latitude desc ;

SELECT City 
FROM north_american_cities 
WHERE Longitude <-87.629798 
order by Longitude ;

SELECT * 
FROM north_american_cities 
WHERE Country LIKE "%Mexico%"  
order by Population desc 
limit 2 ;

SELECT city 
FROM north_american_cities 
WHERE Country like "%United States%" 
order by Population desc 
limit 2 offset 2 ;

-- Exercise 6
 SELECT title,Domestic_sales,International_sales 
 FROM movies 
 join Boxoffice on Id=Movie_id ;

 SELECT title,Domestic_sales,International_sales 
 FROM movies 
 join Boxoffice on Id=Movie_id 
 where Domestic_sales<International_sales;

 SELECT title,rating 
 FROM movies 
 join Boxoffice on Id=Movie_id 
 order by Rating desc;

-- Exercise 7
SELECT DISTINCT Building 
FROM employees 
join Buildings on Building=Building_name 
where Years_employed >0;

SELECT * 
FROM Buildings  ;

SELECT DISTINCT Building_NAME,Role 
FROM Buildings 
LEFT JOIN Employees ON  Building_name=Building  ;

-- Exercise 8-

SELECT * 
FROM employees 
WHERE Building IS NULL;


SELECT *

FROM Buildings
LEFT JOIN Employees
ON Building_name = Building

WHERE Building IS NULL;

-- Exercise 9

SELECT title,(Domestic_sales+International_sales)/1000000 AS TOTAL_SALES 
FROM movies  
join Boxoffice on Id=Movie_id ;


SELECT title,(10*Rating) AS Rating_percentage 
FROM movies  
join Boxoffice on Id=Movie_id ;


SELECT title,(year%2) AS EVEN_YEAR 
FROM movies 
where EVEN_YEAR =0 ;

-- Exercise 10
SELECT max(Years_employed) 
FROM employees;


SELECT AVG(Years_employed),ROLE   
FROM employees GROUP BY ROLE;


SELECT SUM(Years_employed),Building   
FROM employees GROUP BY Building;

-- Exercise  11

SELECT role,count() 
FROM employees 
where role="Artist";

SELECT role,count(*) AS no_artist 
from employees group by role;


SELECT *,role,sum(Years_employed) 
FROM employees 
where role like "%Engineer%";

-- Exercise 12

SELECT Director,count() 
FROM movies group by Director;


SELECT Director,sum(Domestic_sales+International_sales) 
FROM movies 
JOIN Boxoffice 
ON Id=Movie_id 
GROUP BY Director;

-- Exercise 13
INSERT INTO Movies
VALUES (4, "Toy Story 4", "John Lasseter", 2017, 123);

INSERT INTO Boxoffice 
VALUES (4,8.7,340000000,270000000)

-- Exercise 14
UPDATE Movies
SET Director="John Lasseter"
WHERE Title ="A Bug's Life";

UPDATE Movies
SET Year=1999
WHERE Title ="Toy Story 2";

UPDATE Movies
SET Title="Toy Story 3",Director="Lee Unkrich"
WHERE Title ="Toy Story 8";
-- Exercise 15
DELETE FROM Movies
WHERE Year<2005;

DELETE FROM Movies
WHERE Director="Andrew Stanton";
-- Exercise 16
CREATE TABLE Database (
Name TEXT,
Version FLOAT,
Download_count INTEGER)
-- Exercise 17
ALTER TABLE Movies
ADD Aspect_ratio FLOAT DEFAULT 1  ;

ALTER TABLE Movies
ADD Language TEXT DEFAULT English  ;
-- Exercise 18
DROP TABLE Movies;

DROP TABLE BoxOffice;