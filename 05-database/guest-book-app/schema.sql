DROP TABLE IF EXIST comments;

CREATE TABLE comments(
  id SERIAL4 Primary Key,
  name VARCHAR(255),
  body TEXT,
  url VARCHAR(255)
);
