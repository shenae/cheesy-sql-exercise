-- **CHOOSING CHEESE**
-- Find all the cheeses
SElECT * FROM cheese;
-- Find all the French cheeses
SELECT * FROM cheese WHERE origin = 'French';
-- Find all the English cheeses
SELECT * FROM cheese WHERE origin = 'English';
-- Find all cheeses with a stink level of 2
SELECT * FROM cheese WHERE stink_level = 2;
-- Find all cheeses with a stink level of 10
SELECT * FROM cheese WHERE stink_level = 10;
-- Find all French cheeses with a stink level of 5
SELECT * FROM cheese WHERE origin = 'French' AND stink_level = 5;
-- Find all Irish cheeses with a stink level of 6
SELECT * FROM cheese WHERE origin = 'Irish' AND stink_level = 6;
-- Find all cheeses with a stink level of at least 4, but no greater than 8.
SELECT * FROM cheese WHERE stink_level > 3 AND stink_level < 9;
-- Find all American and English cheeses.
SELECT * FROM cheese WHERE origin = 'American' OR origin = 'English';
-- Find all cheeses that are not from France.
SELECT * FROM cheese WHERE origin != 'French';


-- **RESTOCKING CHEESE**
-- Change the stink level of Roquefort to 3
UPDATE cheese SET stink_level = 3 WHERE name = 'Roquefort';
-- Change the color of Teleme to "mauve"
UPDATE cheese SET color = 'mauve' WHERE name = 'Teleme';
-- Delete the Hooligan cheese
DELETE FROM cheese WHERE name = 'Hooligan';
-- Change the stink level of Stichelton to be 7
UPDATE cheese SET stink_level = 7 WHERE name = 'Stichelton';
-- Add the cheese "Monterey Jack", an American cheese with a stink level of 0
INSERT INTO cheese (name, origin, stink_level) VALUES ('Monterey Jack', 'American', 0);
-- Delete Durrus
DELETE FROM cheese WHERE name = 'Durrus';
-- Change the stink level of Teleme to be 1
UPDATE cheese SET stink_level = 1 WHERE name = 'Teleme';
-- Delete Epoisses
DELETE FROM cheese WHERE name = 'Epoisses';
-- Change "Monterey Jack" to "Pepper Jack"
UPDATE cheese SET name = 'Pepper Jack' WHERE name = 'Monterey Jack';
