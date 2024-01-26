PRAGMA foreign_keys = ON;
CREATE TABLE users (
    id INTEGER primary key AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    motto TEXT
);
CREATE TABLE dogs (
    id INTEGER primary key AUTOINCREMENT,
    name TEXT NOT NULL
);
CREATE TABLE favorites (
    user_id INTEGER NOT NULL,
    dog_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (dog_id) REFERENCES dogs(id),
    UNIQUE(user_id, dog_id)
);
INSERT INTO users (first_name, last_name, motto)
VALUES ("Jon", "Higgz", "I love coding");
INSERT INTO favorites(user_id, dog_id)
VALUES(3, 1);
INSERT INTO favorites(user_id, dog_id)
VALUES(1, 1);
INSERT INTO favorites(user_id, dog_id)
VALUES(2, 1);
INSERT INTO favorites(user_id, dog_id)
VALUES(1, 3);
INSERT INTO favorites(user_id, dog_id)
VALUES(2, 2);