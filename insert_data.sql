INSERT INTO Authors (name, birth_year) VALUES
('Robert Kirkman', 1978),
('Todd Mcfarlane', 1987),
('John Byrne', 1991);

INSERT INTO Comics (title, author_id, published_year, isbn) VALUES
('Superhero', 1, 2000, '1234567890123'),
('Horror', 2, 2010, '1234567890124'),
('Fantasy', 3, 2015, '1234567890125');

INSERT INTO Members (name) VALUES
('Mark Johnson'),
('William Bruno'),
('Bryan Wayne');

INSERT INTO Loans (comics_id, member_id) VALUES
(1, 1),
(2, 2),
(3, 3);