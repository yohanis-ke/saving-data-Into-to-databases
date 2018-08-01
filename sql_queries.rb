
SELECT robots FROM Star Wars;

SELCET robot FROM Star Wars WHERE personality="anxious";

SELECT * FROM recipes WHERE nut_free="false";

SELECT COUNT(gluten_free) FROM recipes WHERE gluten_free = true AND vegan=true;

SELECT MAX(number_of_legs) FROM animals;

SELECT MIN(mins_to_play) FROM board_game; ;

SELECT MAX(minutes_required) FROM recipes;

SELECT name FROM robots WHERE name LIKE 'M%';

SELECT * FROM board_game WHERE min_player = 8 OR max_player= 8;

SELECT * FROM animals WHERE swimming=teru AND egg_laying=true;

SELECT * FROM animals WHERE swimming=teru AND egg_laying=true AND flying=false;
