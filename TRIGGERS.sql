/* Ограничение на вставку и обновление данных о товаре*/

DELIMITER //
CREATE TRIGGER validation_insert BEFORE INSERT ON products FOR EACH ROW
BEGIN
  IF NEW.name IS NULL OR NEW.description IS NULL OR NEW.price IS NULL OR NEW.availability IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Все обязательны поля товара должны быть заполнены!';
  END IF;
END//

CREATE TRIGGER validation_update BEFORE UPDATE ON products FOR EACH ROW
BEGIN
  IF NEW.name IS NULL OR NEW.description IS NULL OR NEW.price IS NULL OR NEW.availability IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Все обязательны поля товара должны быть заполнены!';
  END IF;
END//