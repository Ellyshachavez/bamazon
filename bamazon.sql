CREATE database bamazon

CREATE TABLE products 
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
department_name VARCHAR(45) NOT NULL,
purchase_price INT default 0,
stock_quantity INT default 0,
PRIMARY KEY (id)
);
