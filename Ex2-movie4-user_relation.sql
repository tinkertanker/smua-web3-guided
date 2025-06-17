CREATE TABLE user_relation (
    follower_id INTEGER,
    following_id INTEGER,
    PRIMARY KEY (follower_id, following_id),
    FOREIGN KEY (follower_id) REFERENCES userinfo(user_id) ON DELETE CASCADE,
    FOREIGN KEY (following_id) REFERENCES userinfo(user_id) ON DELETE CASCADE
);

INSERT INTO user_relation (follower_id, following_id) VALUES
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 5);