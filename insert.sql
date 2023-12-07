

CREATE TABLE if not exists actor_sample (
    actor_id    SERIAL,
    first_name  VARCHAR(45) NOT NULL,
    last_name   VARCHAR(45) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (actor_id)
);

INSERT INTO actor_sample(first_name, last_name) VALUES ('Jarosław', 'K');

SELECT *
FROM actor_sample;

INSERT INTO actor_sample(first_name, last_name) VALUES ('Piotr', 'G');

INSERT INTO actor_sample(first_name, last_name) VALUES ('Sławek', 'B');

SELECT *
FROM actor_sample;

INSERT INTO actor_sample(first_name, last_name)
VALUES ('Antoni', 'Macierewicz'),
       ('Kamil', 'Kozłowski');

INSERT INTO actor_sample (first_name, last_name)
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

SELECT *
FROM actor_sample;

INSERT INTO actor_sample (first_name, last_name)
SELECT first_name, last_name
FROM actor
WHERE first_name = 'KENETH';

