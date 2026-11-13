CREATE TABLE book_shops (
    id SERIAL PRIMARY KEY,
    book_id INT NOT NULL,
    shop_name TEXT NOT NULL,
    price NUMERIC(8, 2),
    format TEXT,
    url TEXT
);

INSERT INTO book_shops (book_id, shop_name, price, format)
VALUES
	(1, 'Литрес', 399.00, 'электронная'),
	(1, 'Читай-город', 899.00, 'бумажная'),
	(2, 'Ozon', 750.50, 'бумажная'),
	(2, 'Литрес', 349.00, 'электронная'),
	(3, 'Лабиринт', 1200.00, 'бумажная'),
	(3, 'Литрес', 499.00, 'аудио'),
	(4, 'Читай-город', 650.00, 'бумажная'),
	(5, 'Ozon', 820.00, 'бумажная'),
	(6, 'Литрес', 449.00, 'электронная'),
	(7, 'Лабиринт', 990.00, 'бумажная');