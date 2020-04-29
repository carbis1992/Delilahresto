CREATE DATABASE delilah_resto;
CREATE TABLE delilah_resto.users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR (60) NOT NULL,
  password VARCHAR (60) NOT NULL,
  full_name VARCHAR(60) NOT NULL,
  email VARCHAR(60) NOT NULL,
  phone INT NOT NULL,
  delivery_address VARCHAR (60) NOT NULL,
  is_admin BOOLEAN NOT NULL DEFAULT FALSE,
  is_disabled BOOLEAN DEFAULT FALSE
);

CREATE TABLE delilah_resto.products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR (60) NOT NULL,
  price FLOAT NOT NULL,
  img_url VARCHAR(200) NOT NULL,
  description VARCHAR(150) NOT NULL,
  is_disabled BOOLEAN DEFAULT FALSE
);

CREATE TABLE delilah_resto.orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  status VARCHAR(60) NOT NULL,
  date DATETIME NOT NULL,
  description VARCHAR(150) NOT NULL,
  payment_method VARCHAR (60) NOT NULL,
  total FLOAT NOT NULL,
  user_id INT NOT NULL DEFAULT "0",
  is_disabled BOOLEAN DEFAULT FALSE,
  FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE delilah_resto.orders_products (
  order_prod_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  product_id INT,
  product_amount INT NOT NULL,
  FOREIGN KEY(order_id) REFERENCES orders(order_id),
  FOREIGN KEY(product_id) REFERENCES products(product_id)
);

