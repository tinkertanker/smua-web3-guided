-- CREATE DATABASE pizzeria;

-- 1. PIZZAS TABLE
CREATE TABLE pizzas (
    pizza VARCHAR(50) PRIMARY KEY
);

INSERT INTO pizzas VALUES
('Cheese'),
('Diavola'),
('Funghi'),
('Hawaiian'),
('Margherita'),
('Marinanra'),
('Pepperoni'),
('Prosciutto'),
('Sciliana'),
('Supreme'),
('Seafood');

-- 2. RESTAURANTS TABLE
CREATE TABLE restaurants (
    rname VARCHAR(50) NOT NULL,
    area VARCHAR(10),
    restaurant_id INTEGER PRIMARY KEY
);

INSERT INTO restaurants VALUES
('Corleone Corner', 'North', 100),
('Gambino Oven', 'Central', 101),
('Lorenzo Tavern', 'Central', 102),
('Mamma''s Place', 'South', 103),
('Pizza King', 'East', 104),
('Colin Pizza', 'North', 105),
('Dolce Vita', 'West', 106),
('Luigi Ristorante', 'Central', 107),
('Dominion', 'South', 108),
('Trattoria', 'East', 109);

-- 3. RATINGS TABLE
CREATE TABLE ratings (
    rname VARCHAR(50),
    rating INTEGER,
    restaurant_id INTEGER,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id) ON DELETE SET NULL
);

INSERT INTO ratings VALUES
('Corleone Corner', 4, 100),
('Gambino Oven', 3, 101),
('Mamma''s Place', 3, 103),
('Pizza King', 5, 104),
('Colin Pizza', 4, 105),
('Dolce Vita', 3, 106),
('Dominion', 3, 108),
('Trattoria', 5, 109);

-- 4. RATINGS_CENTRAL TABLE
CREATE TABLE ratings_central (
    rname VARCHAR(50),
    rating INTEGER,
    restaurant_id INTEGER,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id) ON DELETE SET NULL
);

INSERT INTO ratings_central VALUES
('Gambino Oven', 3, 101),
('Lorenzo Tavern', 2, 102),
('Dolce Vita', 3, 106),
('Luigi Ristorante', 2, 107);

-- 5. SELLS TABLE
CREATE TABLE sells (
    restaurant_id INTEGER,
    pizza VARCHAR(50),
    price INTEGER,
    PRIMARY KEY (pizza, restaurant_id),
    FOREIGN KEY (pizza) REFERENCES pizzas(pizza) ON DELETE CASCADE,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id) ON DELETE CASCADE
);

INSERT INTO sells VALUES
(100, 'Diavola', 24),
(100, 'Hawaiian', 25),
(100, 'Margherita', 19),
(101, 'Sciliana', 16),
(102, 'Funghi', 23),
(103, 'Margherita', 23),
(104, 'Diavola', 17),
(104, 'Hawaiian', 21),
(105, 'Supreme', 23),
(105, 'Hawaiian', 26),
(105, 'Cheese', 18),
(106, 'Prosciutto', 17),
(107, 'Pepperoni', 23),
(108, 'Cheese', 22),
(109, 'Supreme', 21),
(109, 'Hawaiian', 23);