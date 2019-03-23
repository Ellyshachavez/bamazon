DROP DATABASE IF EXISTS bamazon;

CREATE database bamazon;
USE bamazon;
CREATE TABLE products (
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
department_name VARCHAR(45) NOT NULL,
purchase_price INT NOT NULL,
quantity INT default 0,
sales INT(10) default 0,
PRIMARY KEY (item_id)
);

INSERT INTO products (item_id, product_name, department_name, purchase_price, quantity, sales)
VALUES (1, "Soundbuds", "electronics", 20.99, 10, 10000);

INSERT INTO products (item_id, product_name, department_name, purchase_price, quantity, sales)
VALUES (2, "Tweezers", "beauty", 8.47, 120, 10000);

INSERT INTO products (item_id,product_name, department_name, purchase_price, quantity, sales)
VALUES (3, "Tufted Daybed", "furniture", 125.90, 89, 10000);

INSERT INTO products (item_id, product_name, department_name, purchase_price, quantity, sales)
VALUES (4, "Dog Seat Cover", "pet", 29.99, 208, 10000);

INSERT INTO products (item_id, product_name, department_name, purchase_price, quantity, sales)
VALUES (5, "Salt Lamp", "home", 18.69, 5, 10000);

INSERT INTO products (item_id, product_name, department_name, purchase_price, quantity, sales)
VALUES (6, "Egg Cooker", "home", 16.90, 156, 10000);

INSERT INTO products (item_id, product_name, department_name, purchase_price, quantity, sales)
VALUES (7, "A Curve in the Road", "books", 1.99, 300, 10000);

INSERT INTO products (item_id, product_name, department_name, purchase_price, quantity, sales)
VALUES (8, "Bai", "grocery", 17.88, 56, 10000);

INSERT INTO products (item_id, product_name, department_name, purchase_price, quantity, sales)
VALUES (9,"Maruchin Ramen", "grocery", 16.99, 456, 10000);

INSERT INTO products (item_id, product_name, department_name, purchase_price, quantity, sales)
VALUES (10, "Polarized Aviator", "fashion", 9.99, 78, 10000);

SELECT * FROM products;

