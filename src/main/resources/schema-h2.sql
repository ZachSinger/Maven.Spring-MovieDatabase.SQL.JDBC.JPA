DROP TABLE IF EXISTS PERSON;

CREATE TABLE PERSON (
  ID INT NOT NULL AUTO_INCREMENT,
  FIRST_NAME VARCHAR2(255) NOT NULL DEFAULT '',
  LAST_NAME VARCHAR2(255) NOT NULL DEFAULT '',
  MOBILE VARCHAR2(20) NOT NULL DEFAULT '',
  BIRTHDAY DATE DEFAULT NULL,
  HOME_ID SMALLINT DEFAULT NULL,
  PRIMARY KEY (ID));

  ALTER TABLE PERSON
  ADD FOREIGN KEY (HOME_ID)
  REFERENCES HOME(ID);


DROP TABLE IF EXISTS HOME;

CREATE TABLE HOME (
  ID INT NOT NULL AUTO_INCREMENT,
  ADDRESS VARCHAR2(255) not null default '',
  HOMENUMBER varchar2(255) NOT NULL DEFAULT '',
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR2(100) NOT NULL UNIQUE,
  runtime SMALLINT NOT NULL,
  genre VARCHAR2(50),
  imdb_score NUMBER(10,1),
  rating VARCHAR2(10)
);

-- Tables for in-class example
INSERT INTO movies (title, runtime, genre, imdb_score, rating)
VALUES ('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'),
       ('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
       ('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
       ('Waltz With Bashir', 90, 'Documentary', 8.0, 'R'),
       ('Spaceballs', 96, 'Comedy', 7.1, 'PG'),
       ('Monsters Inc.', 92, 'Animation', 8.1, 'G');

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
  id INT NOT NULL AUTO_INCREMENT,
  make VARCHAR2(50) NOT NULL DEFAULT '',
  model VARCHAR2(50) NOT NULL DEFAULT '',
  year VARCHAR2(5) NOT NULL DEFAULT '01907',
  PRIMARY KEY (id),
  CONSTRAINT unique_make_model_year UNIQUE (make, model, year)

);

DROP TABLE IF EXISTS auto_prices;

CREATE TABLE auto_prices (
  id INT PRIMARY KEY AUTO_INCREMENT,
  car_id INT REFERENCES cars(id),
  package VARCHAR2(15) NOT NULL,
  price NUMBER(10,2) NOT NULL CHECK(price > 0),
  CONSTRAINT unique_package_per_car UNIQUE (car_id, package)


);


DROP SEQUENCE hibernate_sequence;

CREATE SEQUENCE hibernate_sequence;
