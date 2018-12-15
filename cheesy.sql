CREATE DATABASE cheeses_db;
\connect cheeses_db;
CREATE TABLE cheeses (id SERIAL ,name text ,color varchar(40),origin varchar(40),stink_level int) ;

INSERT INTO cheeses (name, color, origin, stink_level) VALUES ('Monterey Jack', 'American cheese','white', 0);
-- **CHOOSING CHEESE**
-- Find all the cheeses
SELECT * FROM cheeses ;
-- Find all the French cheeses
SELECT * FROM cheeses where origin = 'french cheese';
-- Find all the English cheeses
SELECT * FROM cheeses where origin = 'English cheese';
-- Find all cheeses with a stink level of 2
SELECT * FROM cheeses where stink_level = 2;
-- Find all cheeses with a stink level of 10
SELECT * FROM cheeses where stink_level = 10;
-- Find all French cheeses with a stink level of 5
SELECT * FROM cheeses where origin = 'french cheese' AND stink_level = 5;
-- Find all Irish cheeses with a stink level of 6
SELECT * FROM cheeses where origin = 'Irish cheese' AND stink_level = 6;
-- Find all cheeses with a stink level of at least 4, but no greater than 8.
SELECT * FROM cheeses WHERE stink_level > 4 AND stink_level < 8 ;
-- Find all American and English cheeses.
SELECT * FROM cheeses where origin = 'American cheese' OR origin = 'English cheese';
-- Find all cheeses that are not from France.
SELECT * FROM cheeses where origin != 'french cheese';


-- **RESTOCKING CHEESE**
-- Change the stink level of Roquefort to 3
Update cheeses Set stink_level = 3 where name = 'Roquefort';
-- Change the color of Teleme to "mauve"
Update cheeses Set color= 'mauve'  where name = 'Teleme';
-- Delete the Hooligan cheese
Delete from cheeses where name = 'Hooligan';
-- Change the stink level of Stichelton to be 7
Update cheeses Set stink_level= 7 where name = 'Stichelton';
-- Add the cheese "Monterey Jack", an American cheese with a stink level of 0
INSERT INTO cheeses (name, color, origin, stink_level) VALUES ('Monterey Jack', 'American cheese','white', 0);
-- Delete Durrus
Delete from cheeses where name = 'Durrus';
--Change the stink level of Teleme to be 1
Update cheeses Set stink_level= 1 where name = 'Teleme';
--Delete Epoisses
Delete from cheeses where name = 'Epoisses';
--Change "Monterey Jack" to "Pepper Jack"
Update cheeses Set name = 'Pepper Jack' where name = 'Monterey Jack';