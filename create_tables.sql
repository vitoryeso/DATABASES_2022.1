CREATE TABLE IF NOT EXISTS Music (
    MusicID INT PRIMARY KEY,
    Lyrics varchar(2000),
    Duration INT,
    MusicName varchar(200),
    MusicFile varchar(2000),
    Musicimage varchar(2000),
    Album varchar(200),
    Gender varchar(200)
);

CREATE TABLE IF NOT EXISTS SpotifyUser (
    Email varchar(200) PRIMARY KEY,
    UserName varchar(200),
    Birth date,
    LastMusic INT REFERENCES Music(MusicID)
);

CREATE TABLE IF NOT EXISTS PaymentCard (
    CardNumber INT PRIMARY KEY,
    CV INT,
    FLAG varchar(200)
);

CREATE TABLE IF NOT EXISTS Payment (
    ID INT PRIMARY KEY,
    PaymentValue INT,
    PaymentMonth INT,
    PaymentYear INT,
    CardNumber INT REFERENCES PaymentCard(CardNumber),
    Email varchar(200) REFERENCES SpotifyUser(Email)
);

CREATE TABLE Friends (
    Email1 varchar(200) REFERENCES SpotifyUser(Email),
    Email2 varchar(200) REFERENCES SpotifyUser(Email),
    PRIMARY KEY(Email1, Email2)
);
    
