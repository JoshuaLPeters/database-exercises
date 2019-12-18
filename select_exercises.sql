USE codeup_test_db;
SELECT 'The names of all albums By Pink Floyd';
SELECT * from albums WHERE artist_name = "Pink Floyd";
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released';
SELECT release_date from albums WHERE record_name = "Sgt. Pepper''s Lonely Hearts Club Band";
SELECT 'The genre for Nevermind';
SELECT genre from albums WHERE record_name = "Nevermind";
SELECT 'Albums that were released in the 1990s';
SELECT * from albums WHERE release_date BETWEEN 1989 AND 2000;
SELECT 'These albums had less than 20 million certified sales';
SELECT * from albums WHERE sales <20;
SELECT 'All rock genre albums';
SELECT * from albums WHERE genre = "Rock";



-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- The genre for Nevermind
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums with a genre of "Rock". Why do these query results
-- not include albums with a genre of "Hard rock" or "Progressive rock"?