Table-person
(1)
    CREATE TABLE person (
	id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  age INTEGER NOT NULL,
  height INTEGER NOT NULL,
  city VARCHAR(50) NOT NULL,
  favorite_color VARCHAR(20) NOT NULL
)

(2)
    INSERT INTO person 
(name, age, height, city, favorite_color )
VALUES
('Rob Johnson', 27, 180, 'Austin', 'gray'),
('madelyn arsenault', 20, 173, 'salt lake', 'blue'),
('Tramy Nguyen', 24, 125, 'LA', 'pink'),
('Trey Waller', 20, 186, 'Arlington', 'gray'),
('david newman', 28, 174, 'mckinney', 'black');

(3)
    SELECT * FROM person ORDER BY height DESC

(4)
    SELECT * FROM person ORDER BY height ASC

(5)
    SELECT * FROM person ORDER BY age DESC

(6)
    SELECT * FROM person WHERE age > 20

(7)
    SELECT * FROM person WHERE age = 18

(8)
    SELECT * FROM person WHERE age < 20 or age > 30

(9)
    SELECT * FROM person WHERE age != 27

(10)
    SELECT * FROM person WHERE favorite_color != 'red'

(11)
    SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue'

(12)    
    SELECT * FROM person WHERE favorite_color = 'orange' or favorite_color = 'green'

(13)
    SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue')

(14)
    SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple')

Table-orders
(1)
    CREATE TABLE orders (
 	order_id SERIAL PRIMARY KEY,
	person_id	INTEGER NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  product_price INTEGER NOT NULL,
  quantity INTEGER NOT NULL
)

(2)
    INSERT INTO orders 
( person_id, product_name, product_price, quantity )
VALUES
( 0, 'banana slicer', 5.00, 1 ),
( 1, 'cucumber slicer', 6.00, 2 );

(3)
    SELECT * FROM orders;

(4)
    SELECT SUM(quantity) FROM orders;

(5)
    SELECT SUM(product_price * quantity) FROM orders;

(6)
    SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;

Table-artist
(1)
    INSERT INTO artist 
(name)
values 
('skillet'),
('the score'),
('ajr');

(2)
    SELECT * FROM artist ORDER BY name DESC LIMIT 10;

(3)    
    SELECT * FROM artist ORDER BY name ASC LIMIT 5;

(4)
    SELECT * FROM artist WHERE name LIKE 'Black%';

(5)
    SELECT * FROM artist WHERE name LIKE '%Black%';

Table-employee
(1)
     SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

(2)
    SELECT MAX(birth_date) from employee;

(3)
    SELECT MIN(birth_date) from employee;

(4)
    SELECT * FROM employee WHERE reports_to = 2;

(5)
    SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

Table-invoice
(1)
    SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

(2)
    SELECT MAX(total) FROM invoice;

(3) 
    SELECT MIN(total) FROM invoice;

(4)
    SELECT * FROM invoice WHERE total > 5;

(5)
    SELECT COUNT(*) FROM invoice WHERE total < 5;

(6)
    SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

(7)
    SELECT AVG(total) FROM invoice;

(8)     
    SELECT SUM(total) FROM invoice;
