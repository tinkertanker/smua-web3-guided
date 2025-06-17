CREATE TABLE reviews (
    user_id INTEGER,
    movie_id INTEGER,
    ratings DECIMAL(2,1),
    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id) REFERENCES userinfo(user_id) ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
    CHECK (ratings <= 5.0)
);

INSERT INTO reviews (user_id, movie_id, ratings) VALUES
(1, 1, 4.5),
(1, 3, 3.0),
(2, 1, 4.7),
(3, 5, 2.5),
(4, 4, 4.1);