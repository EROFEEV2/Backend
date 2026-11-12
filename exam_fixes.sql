SELECT title, year
FROM books
ORDER BY year ASC;

SELECT * FROM books
WHERE description ILIKE'%книга%';

SELECT * FROM books
WHERE year BETWEEN 2005 AND 2016;

SELECT * FROM books
ORDER BY pages ASC
OFFSET 3 LIMIT 3;

SELECT * FROM books
WHERE level IS NULL;