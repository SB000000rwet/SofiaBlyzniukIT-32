UPDATE loans
SET return_date = '2026-10-01'
WHERE id = 3;

UPDATE books_1
SET quantity = 5
WHERE id = 1;

DELETE FROM loans
WHERE id = 10;

SELECT COUNT(*) AS after_delete
FROM loans;

SELECT b.id, b.title, COUNT(l.id) AS loan_count
FROM books AS b
JOIN loans AS l ON l.book_id = b.id
GROUP BY b.id, b.title;

SELECT * FROM books WHERE id = 1;

SELECT * FROM loans WHERE book_id = 1;

