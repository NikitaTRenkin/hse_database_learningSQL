CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    birth_year YEAR CHECK (birth_year > 0)
);

CREATE TABLE Comics (
    comics_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    published_year YEAR CHECK (published_year > 1450),
    isbn VARCHAR(13) UNIQUE NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    membership_date DATE
);

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    comics_id INT NOT NULL,
    member_id INT NOT NULL,
    loan_date DATE,
    return_date DATE NULL,
    FOREIGN KEY (comics_id) REFERENCES Comics(comics_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);