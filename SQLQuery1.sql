CREATE DATABASE IMDB;
USE IMDB;

CREATE TABLE Movies
(
Id INT PRIMARY KEY IDENTITY (1,1),
Name VARCHAR(100) NOT NULL,
Rating DECIMAL(2,1) NOT NULL,
Duration INT NOT NULL
);

CREATE TABLE Directors
(
Id INT PRIMARY KEY IDENTITY (1,1),
Name VARCHAR(100) NOT NULL
);

CREATE TABLE Actors
(
Id INT PRIMARY KEY IDENTITY (1,1),
Name VARCHAR(100) NOT NULL
);

CREATE TABLE Genres
(
Id INT PRIMARY KEY IDENTITY (1,1),
GenreName VARCHAR(100) NOT NULL
);

CREATE TABLE MovieDirectors
(
DirectorId INT ,
MovieId INT,

FOREIGN KEY (DirectorId)
    REFERENCES Directors(Id),

    FOREIGN KEY (MovieId)
    REFERENCES Movies(Id)
);
CREATE TABLE MovieActors
(
    MovieId INT,
    ActorId INT,

    PRIMARY KEY(MovieId, ActorId),

    FOREIGN KEY(MovieId)
    REFERENCES Movies(Id),

    FOREIGN KEY(ActorId)
    REFERENCES Actors(Id)
);

CREATE TABLE MovieGenres
(
    MovieId INT,
    GenreId INT,

    PRIMARY KEY(MovieId, GenreId),

    FOREIGN KEY(MovieId)
    REFERENCES Movies(Id),

    FOREIGN KEY(GenreId)
    REFERENCES Genres(Id)
);

INSERT INTO Directors(Name)
VALUES
('Christopher Nolan'),
('Francis Ford Coppola'),
('Quentin Tarantino');

INSERT INTO Actors(Name)
VALUES
('Christian Bale'),
('Heath Ledger'),
('Marlon Brando'),
('Leonardo DiCaprio'),
('Brad Pitt');

INSERT INTO Genres(GenreName)
VALUES
('Action'),
('Crime'),
('Drama'),
('Adventure'),
('Thriller');

INSERT INTO Movies(Name, Rating, Duration)
VALUES
('The Dark Knight', 9.0, 152),
('The Godfather', 9.2, 175),
('Inception', 8.8, 148),
('Fight Club', 8.8, 139),
('Interstellar', 8.7, 169);

SELECT * FROM Directors;

SELECT * FROM Actors;

SELECT * FROM Genres;

SELECT * FROM Movies;

INSERT INTO MovieActors(MovieId, ActorId)
VALUES
(1, 1), -- The Dark Knight - Christian Bale
(1, 2), -- The Dark Knight - Heath Ledger
(2, 3), -- The Godfather - Marlon Brando
(3, 4), -- Inception - Leonardo DiCaprio
(4, 5); -- Fight Club - Brad Pitt

INSERT INTO MovieDirectors(DirectorId, MovieId)
VALUES
(1, 1),
(2, 2),
(1, 3),
(1, 5);

INSERT INTO MovieGenres(MovieId, GenreId)
VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 1),
(3, 4),
(4, 2),
(4, 3),
(5, 3),
(5, 4);

SELECT * FROM MovieActors;
SELECT * FROM MovieDirectors;
SELECT * FROM MovieGenres;

