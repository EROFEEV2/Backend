-- Практика недели 2: база library

-- 1. Все читатели
SELECT * FROM readers;

-- 2. Только названия и годы книг
SELECT title, year FROM books;

-- 3. Книги толще 400 страниц
SELECT * FROM books WHERE pages > 400;

-- 4. Авторы не из России
SELECT * FROM authors WHERE country != 'Россия';

-- 5. Книги с 1900 по 2000 год
SELECT * FROM books WHERE year BETWEEN 1900 AND 2000;

-- 6. Книги авторов №2 и №4
SELECT * FROM books WHERE author_id IN (2, 4);

-- 7. Книги, в названии которых есть «и»
SELECT * FROM books WHERE title LIKE '%и%';

-- 8. Страны авторов без повторов
SELECT DISTINCT country FROM authors;

-- 9. 3 самые новые книги
SELECT * FROM books ORDER BY year DESC LIMIT 3;

-- 10. Книги по алфавиту, 2-я страница по 3 книги
SELECT * FROM books ORDER BY title LIMIT 3 OFFSET 3;
