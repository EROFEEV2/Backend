-- Тема 2: «Мои списки» — user_books
CREATE TABLE user_books (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    status TEXT CHECK (status IN ('хочу', 'читаю', 'прочитал')) NOT NULL,
    added_at DATE DEFAULT CURRENT_DATE,
    UNIQUE (user_id, book_id)
);

INSERT INTO user_books (user_id, book_id, status)
VALUES (1, 1, 'прочитал'),
       (1, 2, 'читаю');

-- Ошибка CHECK: такого статуса нет
-- INSERT INTO user_books (user_id, book_id, status) VALUES (1, 3, 'выбросил');

-- Разминка: пользователи, зарегистрированные сегодня
SELECT * FROM users
WHERE registered_at = CURRENT_DATE;