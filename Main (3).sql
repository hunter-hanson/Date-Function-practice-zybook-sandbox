-- Drop Movie table if created in prior run
DROP TABLE IF EXISTS Movie;

-- Create Movie table
CREATE TABLE Movie (
  ID INT AUTO_INCREMENT,
  Title VARCHAR(100),
  Rating CHAR(5) CHECK (Rating IN ('G', 'PG', 'PG-13', 'R')),
  ReleaseDate DATE,
  PRIMARY KEY (ID)
);

-- Insert rows in Movie
INSERT INTO Movie (Title, Rating, ReleaseDate) VALUES
  ('Rogue One: A Star Wars Story', 'PG-13', '2016-12-16'),
  ('Casablanca', 'PG', '1943-01-23'),
  ('The Dark Knight', 'PG-13', '2008-07-18'),
  ('Hidden Figures', 'PG', '2017-01-06'),
  ('Toy Story', 'G', '1995-11-22'),
  ('Rocky', 'PG', '1976-11-21'),
  ('Crazy Rich Asians', 'PG-13', '2018-08-15'),
  ('Bridget Jones\'s Diary', 'PG-13', '2001-04-13'),
  ('Avengers: Endgame', 'PG-13', '2019-04-26');

-- Modify the SELECT statement
SELECT *
FROM Movie
WHERE YEAR(ReleaseDate) > 2017 OR MONTH(ReleaseDate) = 11;
