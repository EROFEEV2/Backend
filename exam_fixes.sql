-- Ревью: запрос 1
SELECT * FROM books
WHERE description ILIKE '%алгоритм%';

-- Ревью: запрос 2
SELECT * FROM book_shops
WHERE price < 500
ORDER BY price ASC
LIMIT 3 OFFSET 3;

-- Ревью: запрос 3 (не запускать повторно без нужды)
UPDATE book_shops
SET price = 399
WHERE book_id = 2 AND shop_name = 'Литрес';

-- Ревью: запрос 4
SELECT * FROM authors
WHERE birth_year IS NULL
ORDER BY name ASC;

-- Ревью: запрос 5
SELECT title FROM books
WHERE pages BETWEEN 200 AND 500;

-- Экзамен: задача 4
SELECT * FROM books
WHERE description ILIKE '%программ%';

-- Экзамен: задача 7
SELECT * FROM book_shops
ORDER BY price ASC
LIMIT 4 OFFSET 4;