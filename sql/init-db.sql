-- Create database
CREATE DATABASE redis_demo;

-- Connect database
\connect redis_demo;

-- Create schema
CREATE SCHEMA demo;

-- Create product table
CREATE TABLE demo.product (
  id SERIAL,
  name varchar(250) NOT NULL,
  quantity INT,
  PRIMARY KEY (id)
);

-- Insert products data
INSERT INTO demo.product (name, quantity)
VALUES ('HP Folio 9480m', 10);
INSERT INTO demo.product (name, quantity)
VALUES ('Macbook Pro', 14);
INSERT INTO demo.product (name, quantity)
VALUES ('Dell XPS 17', 25);
INSERT INTO demo.product (name, quantity)
VALUES ('HP Omen', 6);
