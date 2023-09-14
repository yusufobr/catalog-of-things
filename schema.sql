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


