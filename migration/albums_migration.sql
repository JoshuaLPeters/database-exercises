USE deimos_db;
CREATE TABLE IF NOT EXISTS
albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        artist_name VARCHAR(50) NOT NULL,
        record_name VARCHAR(50) NOT NULL,
        release_date DATE,
        genre TEXT NOT NULL,
        sales FLOAT NOT NULL,
        PRIMARY KEY(id)
);