CREATE TABLE readers (
    id INTEGER PRIMARY KEY,
    last_name TEXT NOT NULL,
    first_name TEXT NOT NULL,
    email TEXT,
    registration_date TEXT
);

CREATE TABLE loans (
    id INTEGER PRIMARY KEY,
    book_id INTEGER NOT NULL,
    reader_id INTEGER,
    loan_date TEXT NOT NULL,
    return_date TEXT,
    FOREIGN KEY (book_id)
        REFERENCES books(id)
        ON DELETE RESTRICT,
    FOREIGN KEY (reader_id)
        REFERENCES readers(id)
        ON DELETE SET NULL
);

INSERT INTO readers
    (last_name, first_name, email, registration_date)
VALUES
    ('Шевченко', 'Олена', 'olena@example.com', '2026-09-01'),
    ('Коваль', 'Андрій', 'andrii@example.com', '2026-09-02'),
    ('Мельник', 'Ірина', 'iryna@example.com', '2026-09-03'),
    ('Бондар', 'Максим', 'maksym@example.com', '2026-09-04'),
    ('Ткаченко', 'Софія', 'sofia@example.com', '2026-09-05'),
    ('Мороз', 'Дмитро', 'dmytro@example.com', '2026-09-06');

INSERT INTO loans
    (book_id, reader_id, loan_date, return_date)
VALUES
    (1, 1, '2026-09-10', '2026-09-20'),
    (2, 2, '2026-09-11', '2026-09-21'),
    (3, 3, '2026-09-12', NULL),
    (4, 1, '2026-09-13', NULL),
    (5, 4, '2026-09-14', '2026-09-24'),
    (6, 5, '2026-09-15', NULL),
    (1, 2, '2026-09-16', NULL),
    (3, 6, '2026-09-17', NULL),
    (2, 4, '2026-09-18', NULL),
    (5, 3, '2026-09-19', NULL);

SELECT * FROM readers;
SELECT * FROM loans;

PRAGMA foreign_key_check;

INSERT INTO loans
    (book_id, reader_id, loan_date, return_date)
VALUES
    (9999, 1, '2026-09-25', NULL);

SELECT name, sql
FROM sqlite_master
WHERE type = 'table'
  AND name IN ('books', 'readers', 'loans');

