CREATE TABLE orders(
orderid INT DEFAULT NULL,
item VARCHAR(45) DEFAULT NULL,
amount DECIMAL(10,0) DEFAULT NULL,
customerid INT DEFAULT NULL);

CREATE TABLE customer(
customerid int DEFAULT NULL,
name VARCHAR(45) DEFAULT NULL,
city VARCHAR(45) DEFAULT NULL
);

INSERT INTO customer values(11,'anand','Bangalore');
INSERT INTO customer values(12,'anju','Bangalore');
INSERT INTO customer values(13,'david','Bangalore');
INSERT INTO customer values(14,'ajay','Bangalore');
INSERT INTO customer values(15,'Kevin','Bangalore');
INSERT INTO customer values(16,'Lakshmi','Bangalore');

INSERT INTO orders values(1001,'Pens',1000,11);
INSERT INTO orders values(1002,'Cups',2000,11);
INSERT INTO orders values(1003,'Toys',10000,12);
INSERT INTO orders values(1004,'Notebook',1000,12);
INSERT INTO orders values(1005,'Clips',100,13);
INSERT INTO orders values(1006,'Misc',10000,13);
INSERT INTO orders values(1007,'Pens',100,13);
INSERT INTO orders values(1003,'Misc',100,11);
INSERT INTO orders values(1012,'notebooks',1000,11);

SELECT * FROM dbtclass.orders;
SELECT * FROM dbtclass.customer;

SELECT c.name,c.city,o.amount from customer c, dbtclass.order o
where c.customerid=o.customerid and c.customerid=11;

Cost info

SELECT
    c.name,c.city,o.amount
FROM
    customer c,
    dbtclass.orders order
WHERE 
    c.customerid=o.customerid;
EXPLAIN ANALYZE SELECT * FROM customer JOIN dbtclass.orders ON (custom )
EXPLAIN ANALYZE



