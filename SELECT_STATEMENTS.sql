-- 2. Top 10 highest-rated books (avg rating + review count)
SELECT 
    b.title, 
    b.author, 
    ROUND(AVG(r.rating), 2) AS avg_rating,
    COUNT(*) AS total_ratings
FROM Books b
JOIN Ratings r ON b.book_id = r.book_id
GROUP BY b.book_id
HAVING total_ratings >= 5
ORDER BY avg_rating DESC, total_ratings DESC
LIMIT 10;

-- 3. All books you (Alex, user_id = 1) own that are currently lent out
SELECT 
    b.title,
    borrower.name AS currently_with,
    bor.due_date
FROM Ownership o
JOIN Books b ON o.book_id = b.book_id
JOIN Borrowing bor ON b.book_id = bor.book_id AND bor.return_date IS NULL
JOIN Users borrower ON bor.borrower_id = borrower.user_id
WHERE o.user_id = 1;

-- 4. Most borrowed books of all time
SELECT 
    b.title, 
    b.author, 
    COUNT(*) AS times_borrowed
FROM Borrowing bor
JOIN Books b ON bor.book_id = b.book_id
GROUP BY b.book_id
ORDER BY times_borrowed DESC
LIMIT 10;
