-- Use this file to define your SQL tables.
-- The SQL in this file will be executed when you run `npm run setup-db`.

DROP TABLE IF EXISTS grocery_list_items;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS products;


CREATE TABLE users (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL,
  password_hash VARCHAR NOT NULL
);

INSERT INTO users (first_name, last_name, email, password_hash) VALUES
  ('test', 'user', '123@abc', '$2b$10$Xg7k1p4xqI/LTEQxltkTG.XlF8lQCTlxls1mLImlpscebr3p8rBpi');

CREATE TABLE products (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO products (name) VALUES
  ('carrot'),
  ('bacon'),
  ('apple'),
  ('rice'),
  ('milk');

CREATE TABLE grocery_list_items (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id BIGINT,
  product_id BIGINT,
  in_basket BOOLEAN NOT NULL DEFAULT(false),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO grocery_list_items (user_id, product_id, in_basket) VALUES
  (1, 1, true);



