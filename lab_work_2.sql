SELECT title, author, year, price
FROM books;

SELECT title, author, year
FROM books
WHERE year > 1900;

SELECT title, author, year
FROM books
LIMIT 3;

INSERT INTO books (title, author, year, price, quantity)
VALUES ('Пригоди Тома Соєра', 'Марк Твен', 1876, NULL, 2);

SELECT title, author, price
FROM books
WHERE price IS NULL;

SELECT title, author, price
FROM books
WHERE price IS NOT NULL;

SELECT title, author, year, price
FROM books
WHERE year > 1900 AND price < 220;

