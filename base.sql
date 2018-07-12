-- add your seed data here!!!! 
CREATE DATABASE cheeses_db;

\c cheeses_db;

DROP TABLE IF EXISTS cheese;

CREATE TABLE cheese (
  cheese_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  color VARCHAR(255),
  origin VARCHAR(255),
  stink_level INTEGER
);

INSERT INTO cheese (name, color, origin, stink_level) VALUES ('Roquefort', 'yellow', 'French', 5);
INSERT INTO cheese (name, color, origin, stink_level) VALUES ('Epoisses', 'orange', 'French', 9);
INSERT INTO cheese (name, color, origin, stink_level) VALUES ('Charolais', 'white', 'French', 5);
INSERT INTO cheese (name, color, origin, stink_level) VALUES ('Maroilles', 'white', 'French', 10);
INSERT INTO cheese (name, color, origin, stink_level) VALUES ('Durrus', 'yellow', 'Irish', 2);
INSERT INTO cheese (name, color, origin, stink_level) VALUES ('Hooligan', 'yellow', 'American', 3);
INSERT INTO cheese (name, color, origin, stink_level) VALUES ('Teleme', 'white', 'American', 2);
INSERT INTO cheese (name, color, origin, stink_level) VALUES ('Stichelton', 'white', 'English', 4);