/*Скрипт для очищения данных*/

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE table authors;
TRUNCATE table availability;
TRUNCATE table catalogs;
TRUNCATE table genders;
TRUNCATE table genre_likes;
TRUNCATE table genres;
TRUNCATE table list_orders;
TRUNCATE table orders;
TRUNCATE table products;
TRUNCATE table profiles;
TRUNCATE table users;
SET FOREIGN_KEY_CHECKS = 1;



