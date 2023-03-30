CREATE DATABASE  sky_pro;
CREATE TABLE IF NOT EXISTS employee (
                                        id BIGSERIAL NOT NULL PRIMARY KEY,
                                        first_name VARCHAR(50) NOT NULL,
                                        last_name VARCHAR(50) NOT NULL,
                                        gender VARCHAR(6) NOT NULL,
                                        age INT NOT NULL
);

SELECT * FROM employee;
INSERT INTO employee(first_name, last_name, gender, age)
VALUES ('Ivan', 'Ivanon', 'Male', 25),
       ('Nina', 'Petrova', 'Female', 30),
       ('Petr', 'Semyonov', 'Male', 40);
SELECT *
FROM employee;
UPDATE employee
SET first_name = 'Stepan',
    last_name  = 'Stepanov',
    gender     = 'Male',
    age        = 35
WHERE id = 1;
SELECT *
FROM employee;
DELETE
FROM employee
WHERE id = 3;
SELECT *
FROM employee;
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Anna', 'Petrova', 'Female', 35);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Misha', 'Solovyov', 'Male', 28);
SELECT *
FROM employee;
SELECT first_name AS "Имя", last_name AS "Фамилия"
FROM employee;
SELECT *
FROM employee
WHERE age < 30
   OR age > 50;
SELECT *
FROM employee
WHERE age >= 30
  AND age <= 50;
SELECT *
FROM employee
ORDER BY last_name DESC;
SELECT *
FROM employee
WHERE length(first_name) > 4;
UPDATE employee
SET first_name = 'Anna'
WHERE id = 4;
UPDATE employee
SET first_name = 'Misha'
WHERE id = 5;
SELECT first_name, SUM(age) AS "Суммарный_возраст"
FROM employee
GROUP BY first_name;
SELECT first_name, MIN(age) AS "Самый юный возраст"
FROM employee
GROUP BY first_name;
SELECT first_name, MAX(age) AS "Максимальный возраст"
FROM employee
GROUP BY first_name
HAVING COUNT(*) > 1
ORDER BY "Максимальный возраст";