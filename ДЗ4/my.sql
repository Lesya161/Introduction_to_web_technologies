/*
2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. 
В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
Необходимо добавить 5-10 одногруппников в данную таблицу.
Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), 
которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.
Примечание:
Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", 
то есть диапазон (7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". 
Такой синтаксис нельзя использовать в sql, вам нужно найти решение, как такое условие можно записать в sql по-другому.
Для проверок работы своего скрипта можете использовать свою базу данных, либо используйте сайт: https://onecompiler.com/mysql
*/

/*Сайт с заданием:*/
https://onecompiler.com/mysql/3yx5cxepz

/*Запрос:*/

-- create
CREATE TABLE Groupmates (
  empId INTEGER PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  address TEXT NOT NULL
);

-- insert
INSERT INTO Groupmates (name, age, address) VALUES ('Иван', '18', 'Москва');
INSERT INTO Groupmates (name, age, address) VALUES ('Гриша', '30', 'Казань');
INSERT INTO Groupmates (name, age, address) VALUES ('Сергей', '35', 'Екатеринбург');
INSERT INTO Groupmates (name, age, address) VALUES ('Маша', '21', 'Москва');
INSERT INTO Groupmates (name, age, address) VALUES ('Оксана', '30', 'Москва');
INSERT INTO Groupmates (name, age, address) VALUES ('Миша', '34', 'Смоленск');
INSERT INTO Groupmates (name, age, address) VALUES ('Оксана', '26', 'Санкт-Петербург');
INSERT INTO Groupmates (name, age, address) VALUES ('Дмитрий', '40', 'Москва');
INSERT INTO Groupmates (name, age, address) VALUES ('Ольга', '45', 'Москва');
INSERT INTO Groupmates (name, age, address) VALUES ('Валерий', '25', 'Москва');

SELECT name FROM Groupmates WHERE address = 'Москва' AND age BETWEEN 18 AND 29;
