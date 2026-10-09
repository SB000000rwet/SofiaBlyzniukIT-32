CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    year INTEGER,
    price REAL,
    quantity INTEGER
);

INSERT INTO books (title, author, year, price, quantity)
VALUES ('Тіні забутих предків', 'Михайло Коцюбинський', 1911, 180.00, 3);

INSERT INTO books (title, author, year, price, quantity)
VALUES ('Захар Беркут', 'Іван Франко', 1883, 210.75, 5);

INSERT INTO books (title, author, year, price, quantity)
VALUES ('Лісова пісня', 'Леся Українка', 1911, 195.00, 2);

INSERT INTO books (title, author, year, price, quantity)
VALUES ('Місто', 'Валер’ян Підмогильний', 1928, 230.00, 3);

INSERT INTO books (title, author, year, price, quantity)
VALUES ('Енеїда', 'Іван Котляревський', 1798, 160.50, 6);

SELECT * FROM books;

