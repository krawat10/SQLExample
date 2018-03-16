/* ENUM */
-- creates table with enum field(3 available values)
CREATE TABLE product(
	id SERIAL,
    name VARCHAR(100),
    state ENUM('HIGH', 'MEDIUM', 'LOW')
);

-- inserts row
INSERT INTO product(name, state) VALUES('Milk', 'HIGH');

-- inserts row, '1' equals first enum value('HIGH')
INSERT INTO product(name, state) VALUES('Eggs', 1);


/* SET */
-- creates table with set value (3 avaiable values)
CREATE TABLE product(
	id SERIAL,
    name VARCHAR(100),
    product_type SET('food', 'drink', 'electronics')
);

-- inserts row
INSERT INTO product (name, product_type) VALUES ('Eggs', 'food');

-- insets rows with 2 values in 'product_type' SET column.
INSERT INTO product (name, product_type) VALUES ('Pepesi', 'food,drink');

INSERT INTO product (name, product_type) VALUES ('Cola', 3); -- '3' equals 'food,drink' (1+2)
INSERT INTO product (name, product_type) VALUES ('intel i7', 4); -- '4' equals 'electronics'

