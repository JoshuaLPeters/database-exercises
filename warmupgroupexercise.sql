USE song_database;

SELECT * FROM albums WHERE song_name LIKE 'User-centric motivating frame';

SELECT song_name, song_length FROM albums WHERE song_length > 80000
ORDER BY song_length DESC
LIMIT 3;

SELECT COUNT(*) FROM albums;

SELECT DISTINCT artist_name, COUNT(*) FROM albums
GROUP BY artist_name
ORDER BY COUNT(*) DESC





# DROP TABLE IF EXISTS albums;
# CREATE TABLE IF NOT EXISTS albums(
#  song_name VARCHAR (99) NOT NULL,
#  artist_name VARCHAR (99) NOT NULL,
#  song_length time NOT NULL
# );

/* 3) create queries that answer the following questions and test them:
  Pick a given song title. What is the artist of this song title?
  What are the three longest songs?
  How many songs are there in the table?
  What artist has the most songs? */
