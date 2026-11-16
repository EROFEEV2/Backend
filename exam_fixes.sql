-- Тема 2: UNIQUE, DEFAULT, CHECK
CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    book_id INT NOT NULL,
    user_email TEXT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    created_at DATE DEFAULT CURRENT_DATE,
    UNIQUE (book_id, user_email)
);

-- Нормальный отзыв: дата подставится сама (DEFAULT)
INSERT INTO reviews (book_id, user_email, rating)
VALUES (1, 'test@gmail.com', 5);

-- Ошибка CHECK: оценка 7
-- INSERT INTO reviews (book_id, user_email, rating) VALUES (2, 'test@gmail.com', 7);

-- Ошибка UNIQUE: второй отзыв на ту же книгу с той же почтой
-- INSERT INTO reviews (book_id, user_email, rating) VALUES (1, 'test@gmail.com', 4);