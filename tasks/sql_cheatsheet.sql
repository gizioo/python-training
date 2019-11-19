-- Create table
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(50),
    pesel INTEGER UNIQUE,
    age INTEGER
);


CREATE TABLE IF NOT EXISTS sensor_data (
    datetime DATETIME PRIMARY KEY,
    sync_datetime DATETIME DEFAULT NULL,
    device VARCHAR(255),
    parameter VARCHAR(255),
    value REAL,
    unit VARCHAR(255)
);

-- Insert
INSERT INTO contacts (first_name, last_name) VALUES ("Max", "Peck");
INSERT INTO contacts VALUES ("José", "Jiménez");
INSERT INTO contacts (first_name, last_name) VALUES (?, ?)
INSERT INTO contacts VALUES (NULL, :first_name, :last_name)

-- Autoincrement
CREATE TABLE astronauts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT
);


INSERT INTO astronauts VALUES ("José", "Jiménez");
INSERT INTO astronauts (first_name, last_name) VALUES ("Max", "Peck");


SELECT * FROM astronauts;

-- Select
SELECT * FROM kontakty;
SELECT * FROM stocks ORDER BY price;
SELECT long_name_of_the_colum as col FROM kontakty;

SELECT * FROM Customers WHERE CustomerName LIKE 'a%'; -- % - any character
SELECT * FROM Customers WHERE CustomerName LIKE '%or%'; -- % - any character
SELECT * FROM Customers WHERE CustomerName LIKE 'a_%_%'; -- _ - single character

SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'UK');
SELECT * FROM Customers WHERE Country IN (SELECT Country FROM Suppliers);

SELECT DISTINCT Country FROM Customers;
SELECT COUNT(DISTINCT Country) FROM Customers;

SELECT COUNT(column_name) FROM table_name WHERE condition;
SELECT AVG(column_name) FROM table_name WHERE condition;
SELECT SUM(column_name) FROM table_name WHERE condition;

-- Update
UPDATE kontakty SET
    first_name='José'
  WHERE last_name='Jiménez';


UPDATE kontakty SET
    first_name=:firstname,
    last_name=:lastname,
    address=:address
WHERE id=:id

-- Alter
ALTER TABLE table_name ADD column_name datatype;
ALTER TABLE table_name DROP COLUMN column_name;

-- Join
DELETE FROM table_name WHERE condition;


DELETE FROM contacts
  WHERE last_name='Jimenez';


DELETE FROM contacts
  WHERE first_name='Jose'
    AND last_name='Jimenez';


