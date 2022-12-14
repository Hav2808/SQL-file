CREATE TABLE IF NOT EXISTS Genres (
	ID SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL);

CREATE TABLE IF NOT EXISTS Performers (
	ID SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL);

CREATE TABLE IF NOT EXISTS Genres_Performers (
	Genres_ID INTEGER REFERENCES Genres(ID),
	Performers_ID INTEGER REFERENCES Performers(ID),
	CONSTRAINT pk PRIMARY KEY (Genres_ID, Performers_ID)
);

CREATE TABLE IF NOT EXISTS Album (
	ID SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	Year_of_release VARCHAR(100) NOT NULL);
	
CREATE TABLE IF NOT EXISTS Performers_Album (
	Album_ID INTEGER REFERENCES Album(ID),
	Performers_ID INTEGER REFERENCES Performers(ID),
	CONSTRAINT pkp PRIMARY KEY (Album_ID, Performers_ID)
);

CREATE TABLE IF NOT EXISTS Track (
	ID INTEGER PRIMARY KEY REFERENCES Album(ID),
	name VARCHAR(100) NOT NULL,
	Duration VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
	ID SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	Year_of_release VARCHAR(100) NOT NULL);

CREATE TABLE IF NOT EXISTS Collection_Track (
	Track_ID INTEGER REFERENCES Track(ID),
	Collection_ID INTEGER REFERENCES Collection(ID),
	CONSTRAINT t_ct_c PRIMARY KEY (Track_ID, Collection_ID)
);

