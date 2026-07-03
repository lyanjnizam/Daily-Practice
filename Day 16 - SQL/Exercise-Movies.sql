CREATE TABLE Movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100),
    release_year INT
);

CREATE TABLE Directors(
    director_id SERIAL PRIMARY KEY,
    director_name VARCHAR(100),
    movie_id INT REFERENCES Movies(movie_id)
);

INSERT INTO Movies(movie_name, release_year)
VALUES
('Magika', 2010),
('Frozen', 2013),
('Imaginur', 2023),
('Polong', 2026);

INSERT INTO Directors(director_name, movie_id)
VALUES
('Edry Abdul Halim', 1),
('Chris Buck',2),
('Nik Amir Mustapha', 3),
('Zulkarnain Azhar', 4);

SELECT * FROM Movies;

SELECT * FROM Movies
WHERE release_year > 2010;