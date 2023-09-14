CREATE DATABASE  catalog_of_things;

CREATE TABLE Item (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    publish_date DATE,
    archive BOOLEAN);

CREATE TABLE genre(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(150),
    item_id INTEGER,
    FOREIGN KEY(item_id) REFERENCES Item(id)
)
CREATE TABLE musicAlbum (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    on_spotify BOOLEAN,
    publish_date DATE,
    item_id INTEGER,
    FOREIGN KEY(item_id) REFERENCES Item(id)
);

CREATE TABLE book (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    item_id INTEGER,
    publish_date DATE,
    archive BOOLEAN,
    publisher VARCHAR(150),
    cover_state VARCHAR(150),
    FOREIGN KEY(item_id) REFERENCES Item(id)
);
CREATE TABLE labels (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    item_id INTEGER,
    color VARCHAR(150),
    title VARCHAR(150),
     FOREIGN KEY(item_id) REFERENCES Item(id)
);

CREATE TABLE game (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    publish_date DATE,
    item_id INTEGER,
    last_played DATE,
    multiplayer VARCHAR(150),
    FOREIGN KEY(item_id) REFERENCES Item(id)
);
CREATE TABLE author (
     id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
     first_name VARCHAR(150),
     last_name VARCHAR(150),
     item_id INTEGER,
     FOREIGN KEY(item_id) REFERENCES Item(id)
);