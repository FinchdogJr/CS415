-- ===================================
-- INSERT DATA FOR USERS, BOOKS, OWNERSHIP, BORROWING, RATINGS
-- ===================================

-- USERS (10)
INSERT INTO Users (name, email, joined_date) VALUES
('Lukas Finch', 'lukas@example.com', '2023-01-10'),
('Sarah Hill', 'sarah@example.com', '2023-02-14'),
('Daniel Cruz', 'daniel@example.com', '2023-03-01'),
('Maya Kingston', 'maya@example.com', '2023-03-22'),
('Ethan Ward', 'ethan@example.com', '2023-04-05'),
('Olivia Chen', 'olivia@example.com', '2023-04-20'),
('Jonas Reed', 'jonas@example.com', '2023-05-11'),
('Hannah Cole', 'hannah@example.com', '2023-06-03'),
('Marcus Flynn', 'marcus@example.com', '2023-06-18'),
('Rachel Stone', 'rachel@example.com', '2023-07-01');

-- BOOKS (50)
INSERT INTO Books (title, author, genre, publish_year, isbn) VALUES
('The Hobbit','J.R.R. Tolkien','Fantasy',1937,'9780000000001'),
('Dune','Frank Herbert','Sci-Fi',1965,'9780000000002'),
('1984','George Orwell','Dystopian',1949,'9780000000003'),
('Pride and Prejudice','Jane Austen','Romance',1813,'9780000000004'),
('The Catcher in the Rye','J.D. Salinger','Fiction',1951,'9780000000005'),
('Brave New World','Aldous Huxley','Dystopian',1932,'9780000000006'),
('Fahrenheit 451','Ray Bradbury','Sci-Fi',1953,'9780000000007'),
('Moby Dick','Herman Melville','Adventure',1851,'9780000000008'),
('To Kill a Mockingbird','Harper Lee','Fiction',1960,'9780000000009'),
('The Great Gatsby','F. Scott Fitzgerald','Fiction',1925,'9780000000010'),

('Mistborn','Brandon Sanderson','Fantasy',2006,'9780000000011'),
('The Way of Kings','Brandon Sanderson','Fantasy',2010,'9780000000012'),
('The Name of the Wind','Patrick Rothfuss','Fantasy',2007,'9780000000013'),
('The Road','Cormac McCarthy','Post-Apocalyptic',2006,'9780000000014'),
('Neuromancer','William Gibson','Cyberpunk',1984,'9780000000015'),
('The Alchemist','Paulo Coelho','Fiction',1988,'9780000000016'),
('The Martian','Andy Weir','Sci-Fi',2011,'9780000000017'),
('Ender''s Game','Orson Scott Card','Sci-Fi',1985,'9780000000018'),
('The Silmarillion','J.R.R. Tolkien','Fantasy',1977,'9780000000019'),
('Les Misérables','Victor Hugo','Classic',1862,'9780000000020'),

('Dracula','Bram Stoker','Horror',1897,'9780000000021'),
('Frankenstein','Mary Shelley','Horror',1818,'9780000000022'),
('Jane Eyre','Charlotte Bronte','Classic',1847,'9780000000023'),
('The Odyssey','Homer','Epic',-700,'9780000000024'),
('The Iliad','Homer','Epic',-750,'9780000000025'),
('The Count of Monte Cristo','Alexandre Dumas','Adventure',1844,'9780000000026'),
('Crime and Punishment','Fyodor Dostoevsky','Classic',1866,'9780000000027'),
('The Brothers Karamazov','Fyodor Dostoevsky','Classic',1880,'9780000000028'),
('The Shining','Stephen King','Horror',1977,'9780000000029'),
('IT','Stephen King','Horror',1986,'9780000000030'),

('The Giver','Lois Lowry','YA Dystopian',1993,'9780000000031'),
('The Outsiders','S.E. Hinton','YA',1967,'9780000000032'),
('Holes','Louis Sachar','YA',1998,'9780000000033'),
('The Lightning Thief','Rick Riordan','Fantasy',2005,'9780000000034'),
('The Hunger Games','Suzanne Collins','YA Dystopian',2008,'9780000000035'),
('Catching Fire','Suzanne Collins','YA Dystopian',2009,'9780000000036'),
('Mockingjay','Suzanne Collins','YA Dystopian',2010,'9780000000037'),
('Ready Player One','Ernest Cline','Sci-Fi',2011,'9780000000038'),
('The Book Thief','Markus Zusak','Historical',2005,'9780000000039'),
('The Fault in Our Stars','John Green','YA Romance',2012,'9780000000040'),

('The Stand','Stephen King','Post-Apocalyptic',1978,'9780000000041'),
('A Game of Thrones','George R.R. Martin','Fantasy',1996,'9780000000042'),
('Animal Farm','George Orwell','Dystopian',1945,'9780000000043'),
('The Old Man and the Sea','Ernest Hemingway','Classic',1952,'9780000000044'),
('The Secret Garden','Frances Burnett','Classic',1911,'9780000000045'),
('The Girl with the Dragon Tattoo','Stieg Larsson','Thriller',2005,'9780000000046'),
('Gone Girl','Gillian Flynn','Thriller',2012,'9780000000047'),
('Life of Pi','Yann Martel','Fiction',2001,'9780000000048'),
('The Kite Runner','Khaled Hosseini','Fiction',2003,'9780000000049'),
('A Thousand Splendid Suns','Khaled Hosseini','Fiction',2007,'9780000000050');

-- OWNERSHIP (1 owner per book, random distribution)
INSERT INTO Ownership (user_id, book_id, purchase_date) VALUES
(1,1,'2024-01-10'), (1,2,'2024-01-11'), (1,3,'2024-01-12'), (1,4,'2024-01-14'), (1,5,'2024-01-18'),
(2,6,'2024-02-02'), (2,7,'2024-02-05'), (2,8,'2024-02-08'), (2,9,'2024-02-11'), (2,10,'2024-02-20'),
(3,11,'2024-03-01'), (3,12,'2024-03-03'), (3,13,'2024-03-08'), (3,14,'2024-03-10'), (3,15,'2024-03-12'),
(4,16,'2024-04-01'), (4,17,'2024-04-04'), (4,18,'2024-04-10'), (4,19,'2024-04-12'), (4,20,'2024-04-18'),
(5,21,'2024-05-02'), (5,22,'2024-05-06'), (5,23,'2024-05-09'), (5,24,'2024-05-11'), (5,25,'2024-05-14'),
(6,26,'2024-06-01'), (6,27,'2024-06-04'), (6,28,'2024-06-07'), (6,29,'2024-06-12'), (6,30,'2024-06-18'),
(7,31,'2024-07-01'), (7,32,'2024-07-04'), (7,33,'2024-07-07'), (7,34,'2024-07-11'), (7,35,'2024-07-14'),
(8,36,'2024-08-02'), (8,37,'2024-08-05'), (8,38,'2024-08-09'), (8,39,'2024-08-12'), (8,40,'2024-08-20'),
(9,41,'2024-09-01'), (9,42,'2024-09-04'), (9,43,'2024-09-08'), (9,44,'2024-09-11'), (9,45,'2024-09-14'),
(10,46,'2024-10-01'), (10,47,'2024-10-03'), (10,48,'2024-10-06'), (10,49,'2024-10-08'), (10,50,'2024-10-12');

-- BORROWING (Realistic: ~12 loans)
INSERT INTO Borrowing (book_id, borrower_id, owner_id, start_date, due_date, return_date) VALUES
(1,2,1,'2024-02-01','2024-02-15','2024-02-14'),
(3,4,1,'2024-03-01','2024-03-20','2024-03-18'),
(7,1,2,'2024-04-10','2024-04-25','2024-04-22'),
(11,5,3,'2024-05-15','2024-05-30','2024-05-29'),
(12,6,3,'2024-05-20','2024-06-05','2024-06-01'),
(15,2,3,'2024-06-10','2024-06-25','2024-06-24'),
(18,1,4,'2024-07-01','2024-07-20','2024-07-18'),
(20,7,4,'2024-07-12','2024-07-30',NULL),
(23,4,5,'2024-08-01','2024-08-20','2024-08-19'),
(29,8,6,'2024-09-01','2024-09-15','2024-09-14'),
(33,9,7,'2024-10-01','2024-10-20','2024-10-18'),
(42,10,9,'2024-11-01','2024-11-20',NULL);

-- RATINGS (Realistic: ~20 ratings)
INSERT INTO Ratings (user_id, book_id, rating, review_text, rating_date) VALUES
(1,1,5,'A classic I reread often.','2024-02-20'),
(2,7,4,'Really thought-provoking.','2024-04-22'),
(3,12,5,'Sanderson nailed this one.','2024-03-15'),
(4,3,4,'A bit bleak but important.','2024-03-21'),
(5,11,5,'Peak fantasy.','2024-05-30'),
(6,20,3,'Dense but rewarding.','2024-06-14'),
(7,31,4,'Great YA themes.','2024-07-20'),
(8,36,5,'One of my favorites.','2024-08-22'),
(9,42,5,'Epic worldbuilding.','2024-09-20'),
(10,46,4,'Strong tension and pacing.','2024-10-10'),
(1,2,4,'Solid sci-fi.','2024-02-18'),
(2,10,5,'Fitzgerald’s prose is unmatched.','2024-02-25'),
(3,14,3,'Bleak but moving.','2024-03-12'),
(4,17,5,'A fun science adventure.','2024-04-15'),
(5,23,4,'Beautifully written.','2024-05-13'),
(6,28,4,'Philosophical and deep.','2024-06-20'),
(7,34,5,'Great series opener.','2024-07-15'),
(8,39,5,'Powerful story.','2024-08-25'),
(9,45,4,'Charming classic.','2024-09-18'),
(10,49,5,'Emotional and gripping.','2024-10-14');
