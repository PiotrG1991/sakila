CREATE TABLE if not exists actor_sample (
    actor_id    SERIAL,
    first_name  VARCHAR(45) NOT NULL,
    last_name   VARCHAR(45) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (actor_id)
);

INSERT INTO actor_sample(first_name, last_name)
SELECT first_name, last_name
FROM actor;

SELECT *
FROM actor_sample
ORDER BY actor_id;

UPDATE actor_sample
SET first_name = 'lech'
WHERE actor_id = 1;

UPDATE actor_sample
SET first_name = 'Janusz'
WHERE actor_id IN (1, 3, 6);

SELECT actor_id
FROM film_actor
WHERE film_id = 1;

UPDATE actor_sample
SET first_name = 'Andrzej'
WHERE actor_id IN (SELECT actor_id
                   FROM film_actor
                   WHERE film_id = 1);

SELECT actor_id
FROM film_actor
WHERE film_id=1;

SELECT *
FROM film;

