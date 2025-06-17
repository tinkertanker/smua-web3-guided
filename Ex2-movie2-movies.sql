CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(30)
);

INSERT INTO movies (movie_name) VALUES
('movie1'),
('movie2'),
('movie3'),
('movie4'),
('movie5');