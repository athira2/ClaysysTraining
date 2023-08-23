use sqltask2;



CREATE TABLE CUSTOMERS
(
	CUSTOMERID		INT PRIMARY KEY,
	FIRST_NAME		VARCHAR(50),
	LAST_NAME		VARCHAR(50),
	EMAIL			VARCHAR(50),
	PHONE_NUMBER	VARCHAR(50)
);

INSERT INTO customers (customerid,first_name,last_name,email,phone_number) VALUES(1,'Adam','John','adam@gmail.com',7985461230);
INSERT INTO customers (customerid,first_name,last_name,email,phone_number) VALUES(2,'Annie','Mathew','annie@gmail.com',9638527410);
INSERT INTO customers (customerid,first_name,last_name,email,phone_number) VALUES(3,'Rani','Ravi','rani@gmail.com',71478529630);
INSERT INTO customers (customerid,first_name,last_name,email,phone_number) VALUES(4,'Aswin','Ramesh','aswin@gmail.com',3571598641);
INSERT INTO customers (customerid,first_name,last_name,email,phone_number) VALUES(5,'Athira','syam','athira@gmail.com',7907856412);
INSERT INTO customers (customerid,first_name,last_name,email,phone_number) VALUES(6,'Vipin','John','vipin@gmail.com',7985485230);
INSERT INTO customers (customerid,first_name,last_name,email,phone_number) VALUES(7,'Nick','James','nick@gmail.com',1234567897);
INSERT INTO customers (customerid,first_name,last_name,email,phone_number) VALUES(8,'Anna','Mariya','anna@gmail.com',7412589630);
INSERT INTO customers (customerid,first_name,last_name,email,phone_number) VALUES(9,'Asif','Ali','asif@gmail.com',3692581470);
INSERT INTO customers (customerid,first_name,last_name,email,phone_number) VALUES(10,'Ebin','Antony','Ebin@gmail.com',1020304050);


INSERT INTO customers (customerid,first_name,email) VALUES(11,'David','david@gmail.com');


INSERT INTO customers VALUES(12,'Milen','Roy','milan@gmail.com',5263414758);



SELECT * FROM customers;

SELECT first_name,email from customers;



UPDATE  customers SET first_name='vijay', last_name='gosh' WHERE customerid=1;

SELECT first_name,last_name from customers;

UPDATE  customers SET first_name='Adam', last_name='John' WHERE customerid=5;

SELECT first_name,last_name from customers;


UPDATE customers SET first_name='peter' WHERE last_name='John';

SELECT * FROM customers;


DELETE FROM customers WHERE customerid=10;
SELECT * FROM customers;

DELETE FROM customers;