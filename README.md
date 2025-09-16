-- Inserir um autor
INSERT INTO authors (name, country, birth_date)
VALUES ('Seth Agnar Kristensen', 'Brazil/Canada', '1974-09-16');

-- Inserir um livro
INSERT INTO books (title, publication_year, language, author_id)
VALUES ('Supreme Being – Book 1: Genesis', 2025, 'EN-CA', 1);

-- Traduções
INSERT INTO translations (book_id, language, translator_name)
VALUES (1, 'FR-CA', 'Seth A. Kristensen');

-- Ilustração
INSERT INTO illustrations (book_id, illustrator_name, technique, signed)
VALUES (1, 'MSP', 'Graphite Pencil – Realism', TRUE);

-- Leitor e leitura
INSERT INTO readers (name, email, country)
VALUES ('Lyra Elin Kristensen', 'lyra@supremebeing.art', 'Canada');

INSERT INTO reading_history (reader_id, book_id)
VALUES (1, 1);
