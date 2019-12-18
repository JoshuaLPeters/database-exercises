USE codeup_test_db;
SELECT 'All albums released after 1991.';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'All albums with genre of Disco.';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'All albums by Whitney Houston';
DELETE FROM albums WHERE artist_name = 'Whitney Houston';