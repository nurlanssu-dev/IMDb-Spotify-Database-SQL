CREATE DATABASE Spotify
USE Spotify;

CREATE TABLE Artists
(
Id INT PRIMARY KEY IDENTITY(1,1),
[NAME] VARCHAR(100) NOT NULL
);

CREATE TABLE Albums
(
Id INT PRIMARY KEY IDENTITY(1,1),
[NAME] VARCHAR(100) NOT NULL
);

CREATE TABLE Musics
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    TotalSecond INT NOT NULL,

    ArtistId INT,
    AlbumId INT,

    FOREIGN KEY (ArtistId)
    REFERENCES Artists(Id),

    FOREIGN KEY (AlbumId)
    REFERENCES Albums(Id)
);

-- Artists insert

INSERT INTO Artists([NAME])
VALUES
('The Weeknd'),
('Ed Sheeran'),
('Imagine Dragons'),
('Taylor Swift'),
('Adele');


-- Albums insert

INSERT INTO Albums([NAME])
VALUES
('After Hours'),
('Divide'),
('Evolve'),
('1989'),
('25');


-- Musics insert

INSERT INTO Musics(Name, TotalSecond, ArtistId, AlbumId)
VALUES
('Blinding Lights', 200, 1, 1),
('Save Your Tears', 215, 1, 1),
('Shape Of You', 233, 2, 2),
('Perfect', 263, 2, 2),
('Believer', 204, 3, 3),
('Thunder', 187, 3, 3),
('Blank Space', 231, 4, 4),
('Hello', 295, 5, 5);


