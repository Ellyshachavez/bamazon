ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'zackylove4649';
DROP DATABASE IF EXISTS bamazon;

CREATE database bamazon;
USE bamazon;
CREATE TABLE products (
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
department_name VARCHAR(45) NOT NULL,
purchase_price INT default 0,
stock_quantity INT default 0,
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, purchase_price, stock_quantity)
VALUES ("Soundbuds", "electronics", 20.99, 10);

INSERT INTO products (product_name, department_name, purchase_price, stock_quantity)
VALUES ("Tweezers", "beauty", 8.47, 120);

INSERT INTO products (product_name, department_name, purchase_price, stock_quantity)
VALUES ("Tufted Daybed", "furniture", 125.90, 89);

INSERT INTO products (product_name, department_name, purchase_price, stock_quantity)
VALUES ("Dog Seat Cover", "pet", 29.99, 208);

INSERT INTO products (product_name, department_name, purchase_price, stock_quantity)
VALUES ("Salt Lamp", "home", 18.69, 5);

INSERT INTO products (product_name, department_name, purchase_price, stock_quantity)
VALUES ("Egg Cooker", "home", 16.90, 156);

INSERT INTO products (product_name, department_name, purchase_price, stock_quantity)
VALUES ("A Curve in the Road", "books", 1.99, 300);

INSERT INTO products (product_name, department_name, purchase_price, stock_quantity)
VALUES ("Bai", "grocery", 17.88, 56);

INSERT INTO products (product_name, department_name, purchase_price, stock_quantity)
VALUES ("Maruchin Ramen", "grocery", 16.99, 456);

INSERT INTO products (product_name, department_name, purchase_price, stock_quantity)
VALUES ("Polarized Aviator", "fashion", 9.99, 78);

SELECT * FROM products;

