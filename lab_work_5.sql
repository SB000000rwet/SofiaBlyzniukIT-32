CREATE TABLE books_1 (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    year INTEGER CHECK (year >= 1000 AND year <= 2100),
    price REAL CHECK (price > 0),
    quantity INTEGER NOT NULL DEFAULT 1 CHECK (quantity >= 0),
    UNIQUE (title, author)
);

INSERT INTO readers (first_name, email)
VALUES ('Олена', 'olena_new@example.com');

INSERT INTO readers (last_name, first_name, email)
VALUES ('Коваль', 'Андрій', 'olena@example.com');

UPDATE books
SET copies_count = -1
WHERE id = 1;

UPDATE books
SET copies_count = 3
WHERE id = 1;

INSERT INTO books
    (title, author, publication_year, genre)
VALUES
    ('Тестова книга', 'Тестовий автор', 2020, 'Роман');

SELECT title, copies_count
FROM books
WHERE title = 'Тестова книга';

UPDATE readers
SET last_name = NULL
WHERE id = 1;

