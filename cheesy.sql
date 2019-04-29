-- **CHOOSING CHEESE**
-- Find all the cheeses
cheeses_db=# SELECT * FROM store_cheeses;
 cheese_id |    name    | color  |  origin  | stink_level 
-----------+------------+--------+----------+-------------
         2 | Roquefort  | yellow | France   |           5
         3 | Epoisses   | orange | French   |           9
         4 | Charlais   | white  | France   |           5
         5 | Maroilles  | white  | France   |          10
         6 | Durrus     | yellow | Ireland  |           2
         7 | Hooligan   | yellow | American |           3
         8 | Teleme     | white  | American |           2
         9 | Stichelton | white  | England  |           4

-- Find all the French cheeses
cheeses_db=# SELECT * FROM store_cheeses WHERE origin = 'France';
 cheese_id |   name    | color  | origin | stink_level 
-----------+-----------+--------+--------+-------------
         2 | Roquefort | yellow | France |           5
         4 | Charlais  | white  | France |           5
         5 | Maroilles | white  | France |          10
         3 | Epoisses  | orange | France |           9

-- Find all the English cheeses
cheeses_db=# SELECT * FROM store_cheeses WHERE origin = 'England';
 cheese_id |    name    | color | origin  | stink_level 
-----------+------------+-------+---------+-------------
         9 | Stichelton | white | England |           4

-- Find all cheeses with a stink level of 2
cheeses_db=# SELECT * FROM store_cheeses WHERE stink_level = 2;
 cheese_id |  name  | color  |  origin  | stink_level 
-----------+--------+--------+----------+-------------
         6 | Durrus | yellow | Ireland  |           2
         8 | Teleme | white  | American |           2
-- Find all cheeses with a stink level of 10
cheeses_db=# SELECT * FROM store_cheeses WHERE stink_level = 10;
 cheese_id |   name    | color | origin | stink_level 
-----------+-----------+-------+--------+-------------
         5 | Maroilles | white | France |          10

-- Find all yellow cheeses with a stink level of 5
cheeses_db=# SELECT * FROM store_cheeses WHERE color = 'yellow' AND stink_level = 5;
 cheese_id |   name    | color  | origin | stink_level 
-----------+-----------+--------+--------+-------------
         2 | Roquefort | yellow | France |           5

-- Find all Irish cheeses with a stink level of 6
cheeses_db=# SELECT * FROM store_cheeses WHERE origin = 'Ireland';
 cheese_id |  name  | color  | origin  | stink_level 
-----------+--------+--------+---------+-------------
         6 | Durrus | yellow | Ireland |           2
-- Find all cheeses with a stink level of at least 4, but no greater than 8.
cheese_id |   name    | color  | origin | stink_level 
-----------+-----------+--------+--------+-------------
         2 | Roquefort | yellow | France |           5
         4 | Charlais  | white  | France |           5

-- Find all American and English cheeses.
cheeses_db=# SELECT * FROM store_cheeses WHERE origin = 'England' OR origin = 'American';
 cheese_id |    name    | color  |  origin  | stink_level 
-----------+------------+--------+----------+-------------
         7 | Hooligan   | yellow | American |           3
         8 | Teleme     | white  | American |           2
         9 | Stichelton | white  | England  |           4

-- Find all cheeses that are not from France.
cheeses_db=# SELECT * FROM store_cheeses WHERE origin != 'France';
 cheese_id |    name    | color  |  origin  | stink_level 
-----------+------------+--------+----------+-------------
         6 | Durrus     | yellow | Ireland  |           2
         7 | Hooligan   | yellow | American |           3
         8 | Teleme     | white  | American |           2
         9 | Stichelton | white  | England  |           4


-- **RESTOCKING CHEESE**
-- Change the stink level of Roquefort to 3
cheeses_db=# UPDATE store_cheeses SET stink_level = 3 WHERE stink_level = 5;
UPDATE 2
cheeses_db=# SELECT * FROM store_cheeses;
 cheese_id |    name    | color  |  origin  | stink_level 
-----------+------------+--------+----------+-------------
         5 | Maroilles  | white  | France   |          10
         6 | Durrus     | yellow | Ireland  |           2
         7 | Hooligan   | yellow | American |           3
         8 | Teleme     | white  | American |           2
         9 | Stichelton | white  | England  |           4
         3 | Epoisses   | orange | France   |           9
         2 | Roquefort  | yellow | France   |           3
         4 | Charlais   | white  | France   |           3

-- Change the color of Teleme to "mauve"
cheeses_db=# SELECT * FROM store_cheeses;
 cheese_id |    name    | color  |  origin  | stink_level 
-----------+------------+--------+----------+-------------
         5 | Maroilles  | white  | France   |          10
         6 | Durrus     | yellow | Ireland  |           2
         7 | Hooligan   | yellow | American |           3
         9 | Stichelton | white  | England  |           4
         3 | Epoisses   | orange | France   |           9
         2 | Roquefort  | yellow | France   |           3
         4 | Charlais   | white  | France   |           3
         8 | Teleme     | mauve  | American |           2

-- Delete the Hooligan cheese
cheeses_db=# DELETE FROM store_cheeses WHERE name = 'Hooligan';
DELETE 1
cheeses_db=# SELECT * FROM store_cheeses;
 cheese_id |    name    | color  |  origin  | stink_level 
-----------+------------+--------+----------+-------------
         5 | Maroilles  | white  | France   |          10
         6 | Durrus     | yellow | Ireland  |           2
         9 | Stichelton | white  | England  |           4
         3 | Epoisses   | orange | France   |           9
         2 | Roquefort  | yellow | France   |           3
         4 | Charlais   | white  | France   |           3
         8 | Teleme     | mauve  | American |           2

-- Change the stink level of Stichelton to be 7
cheeses_db=# UPDATE store_cheeses SET stink_level = 7 WHERE cheese_id = 4;
UPDATE 1
cheeses_db=# SELECT * FROM store_cheeses;
 cheese_id |    name    | color  |  origin  | stink_level 
-----------+------------+--------+----------+-------------
         5 | Maroilles  | white  | France   |          10
         6 | Durrus     | yellow | Ireland  |           2
         9 | Stichelton | white  | England  |           4
         3 | Epoisses   | orange | France   |           9
         2 | Roquefort  | yellow | France   |           3
         8 | Teleme     | mauve  | American |           2
         4 | Charlais   | white  | France   |           7

-- Add the cheese "Monterey Jack", an American cheese with a stink level of 0
cheeses_db=# INSERT INTO store_cheeses VALUES (DEFAULT, 'Monterey Jack', '', 'American', 0);
INSERT 0 1
cheeses_db=# SELECT * FROM store_cheeses;
 cheese_id |     name      | color  |  origin  | stink_level 
-----------+---------------+--------+----------+-------------
         5 | Maroilles     | white  | France   |          10
         6 | Durrus        | yellow | Ireland  |           2
         9 | Stichelton    | white  | England  |           4
         3 | Epoisses      | orange | France   |           9
         2 | Roquefort     | yellow | France   |           3
         8 | Teleme        | mauve  | American |           2
         4 | Charlais      | white  | France   |           7
        10 | Monterey Jack |        | American |           0

-- Add a column named animal_milk with a datatype of VARCHAR(50) to the cheeses table (see table below)
cheeses_db=# ALTER TABLE store_cheeses ADD animal_milk VARCHAR(50);
ALTER TABLE
cheeses_db=# SELECT * FROM store_cheeses;
 cheese_id |     name      | color  |  origin  | stink_level | animal_milk 
-----------+---------------+--------+----------+-------------+-------------
         5 | Maroilles     | white  | France   |          10 | 
         6 | Durrus        | yellow | Ireland  |           2 | 
         9 | Stichelton    | white  | England  |           4 | 
         3 | Epoisses      | orange | France   |           9 | 
         2 | Roquefort     | yellow | France   |           3 | 
         8 | Teleme        | mauve  | American |           2 | 
         4 | Charlais      | white  | France   |           7 | 
        10 | Monterey Jack |        | American |           0 | 

-- Add a column named paseurized with a boolean datatype 
cheeses_db=# ALTER TABLE store_cheeses ADD pasteurized BOOLEAN;
ALTER TABLE

-- Add the new cheese data
cheeses_db=# UPDATE store_cheeses SET animal_milk = 'cow' WHERE name != 'Roquefort';
-- Change the name of Montery Jack to Pepper Jack
