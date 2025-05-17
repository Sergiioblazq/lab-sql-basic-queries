-- Usar la base de datos Sakila
USE sakila;

-- 1. Mostrar todas las tablas disponibles
SHOW TABLES;

-- 2. Recuperar todos los datos de las tablas actor, film y customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Títulos de todas las películas
SELECT title FROM film;

-- 3.2 Lista de idiomas utilizados (con alias "language")
SELECT name AS language FROM language;

-- 3.3 Lista de nombres de todos los empleados
SELECT first_name, last_name FROM staff;

-- 4. Años de lanzamiento únicos
SELECT DISTINCT release_year FROM film;

-- 5.1 Número de tiendas
SELECT COUNT(*) AS total_stores FROM store;

-- 5.2 Número de empleados
SELECT COUNT(*) AS total_employees FROM staff;

-- 5.3 Películas disponibles para alquilar
SELECT COUNT(*) AS available_movies
FROM inventory i
LEFT JOIN rental r ON i.inventory_id = r.inventory_id AND r.return_date IS NULL
WHERE r.rental_id IS NULL;

-- 5.3 Películas actualmente alquiladas
SELECT COUNT(*) AS rented_movies
FROM rental
WHERE return_date_
