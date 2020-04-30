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

INSERT INTO delilah_resto.users
VALUES
  (
    NULL,
    "carbis",
    "carla123",
    "Carla Bisagni",
    "car.bis@hotmail.com",
    "4264343",
    "Direccion 1",
    TRUE,
    FALSE
  );
  
  INSERT INTO delilah_resto.users
VALUES
  (
    NULL,
    "flor",
    "flor123",
    "Florencia Aguilar",
    "flor@gmail.com",
    "4252525",
    "Direccion 2",
    FALSE,
    FALSE
  );
  
  INSERT INTO delilah_resto.users
VALUES
  (
    NULL,
    "emi",
    "emilia123",
    "Emilia Casas",
    "emilia@gmail.com",
    4303030,
    "Direccion 3",
    FALSE,
    FALSE
  );
  
  SELECT * from delilah_resto.users;
  
  INSERT INTO delilah_resto.products
VALUES
  (
    NULL,
    "Bagel de salmon",
    425,
    FALSE
  );
  
  INSERT INTO delilah_resto.products
VALUES
  (
    NULL,
    "Bagel de salmon",
    425,
    FALSE
  );
  
    INSERT INTO delilah_resto.products
VALUES
  (
    NULL,
    "Hamburguesa clasica",
    350,
    FALSE
  );
  
    INSERT INTO delilah_resto.products
VALUES
  (
    NULL,
    "Sandwich veggie",
    310,
    FALSE
  );
  
    INSERT INTO delilah_resto.products
VALUES
  (
    NULL,
    "Ensalada veggie",
    340,
    FALSE
  );
  
    INSERT INTO delilah_resto.products
VALUES
  (
    NULL,
    "Focaccia",
    300,
    FALSE
  );
  
    INSERT INTO delilah_resto.products
VALUES
  (
    NULL,
    "Sandwich Focaccia",
    440,
    FALSE
  );
  
  SELECT * from delilah_resto.products;
  
  INSERT INTO delilah_resto.products
VALUES
  (
    NULL,
    "Coca cola 600ml",
    80,
    FALSE
  );
  
  INSERT INTO delilah_resto.orders
VALUES
  (
    NULL,
    "delivered",
    NOW(),
    "1x BagelSalmon, 2x Coca600",
    "card",
    585,
    1,
    FALSE
  ),
  (
    NULL,
    "canceled",
    NOW(),
    "2x Coca600",
    "card",
    160,
    3,
    FALSE
  ),
  (
    NULL,
    "sending",
    NOW(),
    "1x SandVeggie",
    "cash",
    310,
    1,
    FALSE
  ),
  (
    NULL,
    "preparing",
    NOW(),
    "1x HambClas",
    "cash",
    350,
    3,
    FALSE
  ),
  (
    NULL,
    "confirmed",
    NOW(),
    "1x Focaccia",
    "card",
    300,
    2,
    FALSE
  ),
  (
    NULL,
    "new",
    NOW(),
    "1x SandFoca",
    "cash",
    440,
    1,
    FALSE
  );
  
  SELECT * from delilah_resto.products;
  
  SELECT * from delilah_resto.products;
  
  INSERT INTO delilah_resto.orders_products
VALUES
  (NULL, 1, 1, 1),
  (NULL, 1, 4, 2),
  (NULL, 2, 4, 2),
  (NULL, 3, 4, 2),
  (NULL, 4, 5, 1),
  (NULL, 5, 6, 1),
  (NULL, 6, 7, 1);
  
  SELECT * from delilah_resto.orders_products;
  
  
  
