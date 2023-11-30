-- The job of this file is to reset all of our important database tables.
-- And add any data that is needed for the tests to run.
-- This is so that our tests, and application, are always operating from a fresh
-- database state, and that tests don't interfere with each other.

-- First, we must delete (drop) all our tables
DROP TABLE IF EXISTS recipes;
DROP SEQUENCE IF EXISTS recipes_id_seq;

-- Then, we recreate them
CREATE SEQUENCE IF NOT EXISTS recipes_id_seq;

CREATE TABLE recipes (
    id SERIAL PRIMARY KEY,
recipe_name text,
cooking_time text,
rating int
);

-- Finally, we add any records that are needed for the tests to run
INSERT INTO recipes (recipe_name, cooking_time, rating) VALUES ('Blueberry Muffins', '20 minutes', 3);
INSERT INTO recipes (recipe_name, cooking_time, rating) VALUES ('Carrot Soup', '30 minutes', 2);
INSERT INTO recipes (recipe_name, cooking_time, rating) VALUES ('Mashed Cauliflower', '15 minutes', 2);
INSERT INTO recipes (recipe_name, cooking_time, rating) VALUES ('Cheese Cake', '45 minutes', 4);
INSERT INTO recipes (recipe_name, cooking_time, rating) VALUES ('Mushroom Stroganoff', '30 minutes', 5);
INSERT INTO recipes (recipe_name, cooking_time, rating) VALUES ('Green Chutney', '35 minutes', 1);

