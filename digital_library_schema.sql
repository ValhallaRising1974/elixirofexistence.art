
-- Create table for authors
CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    birth_date DATE
);

-- Create table for books
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    publication_year INT,
    language VARCHAR(10),
    author_id INT REFERENCES authors(author_id)
);

-- Create table for translators
CREATE TABLE translators (
    translator_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    language_pair VARCHAR(20)
);

-- Create table for illustrations
CREATE TABLE illustrations (
    illustration_id SERIAL PRIMARY KEY,
    book_id INT REFERENCES books(book_id),
    artist_name VARCHAR(100),
    style VARCHAR(50)
);

-- Create table for readers
CREATE TABLE readers (
    reader_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    membership_date DATE DEFAULT CURRENT_DATE
);

-- Create table for reading history
CREATE TABLE reading_history (
    history_id SERIAL PRIMARY KEY,
    reader_id INT REFERENCES readers(reader_id),
    book_id INT REFERENCES books(book_id),
    read_date DATE DEFAULT CURRENT_DATE
);

-- Insert sample data into authors
INSERT INTO authors (name, country, birth_date) VALUES
('Aurora L. Snow', 'Canada', '1987-05-11'),
('Jonah K. Blake', 'Canada', '1979-09-24');

-- Insert sample data into books
INSERT INTO books (title, publication_year, language, author_id) VALUES
('Echoes of Eternity', 2023, 'EN-CA', 1),
('Whispers in the Snowfall', 2024, 'FR-CA', 2);

-- Insert sample data into translators
INSERT INTO translators (name, language_pair) VALUES
('Elise Tremblay', 'EN-CA → FR-CA'),
('Noah Sinclair', 'FR-CA → EN-CA');

-- Insert sample data into illustrations
INSERT INTO illustrations (book_id, artist_name, style) VALUES
(1, 'Maëlys Fortin', 'Pencil'),
(2, 'Liam Rousseau', 'Ink and Watercolour');

-- Insert sample data into readers
INSERT INTO readers (name, email) VALUES
('Olivia Bennett', 'olivia.bennett@example.com'),
('Ethan Roy', 'ethan.roy@example.com');

-- Insert sample data into reading_history
INSERT INTO reading_history (reader_id, book_id) VALUES
(1, 1),
(2, 2);
