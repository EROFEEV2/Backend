CREATE TABLE authors (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	birth_year INT
);

CREATE TABLE genres (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE books (
	id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	author_id INT NOT NULL,
	year INT,
	pages INT,
	description TEXT NOT NULL,
	level TEXT,
	age_from INT
);

CREATE TABLE book_genres (
	id SERIAL PRIMARY KEY,
	book_id INT NOT NULL,
	genre_id INT NOT NULL
);

CREATE TABLE book_shops (
	id SERIAL PRIMARY KEY,
	book_id INT NOT NULL,
	shop_name TEXT NOT NULL,
	price NUMERIC(8, 2),
	format TEXT,
	url TEXT
);