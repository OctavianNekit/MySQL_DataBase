/*Просмотр основной информации о пользователях*/

CREATE VIEW profiles_users_view
AS SELECT user_id AS Идентификатор, first_name AS Имя, last_name AS Фамилия, phone AS Телефон, email AS Почта, gender_name AS Пол
FROM profiles, users, genders
WHERE profiles.user_id = users.id and profiles.gender_id = genders.id 

/*Просмотр основной информации о книгах*/

CREATE VIEW products_full_view
AS SELECT p.id AS Идентификатор, p.name AS Книга, c.catalog_name AS Категория, a.author_name AS Автор
FROM products p, authors a, catalogs c
WHERE p.catalog_id = c.id and p.author_id = a.id