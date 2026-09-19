-- Practice Q: Select country and language names (aliased) 

SELECT c.name AS country, l.name AS language
FROM countries AS c
INNER JOIN languages AS l
USING(code);
WHERE l.name = ‘Bhojpuri’;
