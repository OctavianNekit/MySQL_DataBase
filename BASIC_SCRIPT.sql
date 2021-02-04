/*Вывод пользователей с итоговой суммой заказа с учетом скидки*/

SELECT first_name AS Имя, last_name AS Фамилия, discount AS Скидка,
value AS Цена_без_скидки, value/100*(100-discount) AS Цена_со_скидкой
FROM profiles, orders
WHERE profiles.user_id = orders.user_id;