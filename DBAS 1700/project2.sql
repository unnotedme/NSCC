CREATE DATABASE vendor_order_form;
GO

USE vendor_order_form;
GO

CREATE TABLE [customer] (
customer_id INT IDENTITY(1,1) PRIMARY KEY,
customer_fname NVARCHAR(255) NOT NULL,
customer_lname NVARCHAR(255) NOT NULL,
customer_address VARCHAR(255),
customer_city VARCHAR(255),
customer_postcode VARCHAR(255),
customer_province VARCHAR(255),
customer_email VARCHAR(255),
customer_phone VARCHAR(255)
); 
GO

CREATE TABLE [shipping] (
shipping_num VARCHAR(255) PRIMARY KEY,
shipping_date DATE NOT NULL,
shipping_total MONEY NOT NULL
);
GO

CREATE TABLE [order] (
order_id INT IDENTITY(1,1) PRIMARY KEY,
order_customer_id INT FOREIGN KEY REFERENCES [customer](customer_id) ON UPDATE CASCADE ON DELETE CASCADE,
order_date DATE NOT NULL,
order_paytype VARCHAR(255) NOT NULL,
order_deliverytype VARCHAR(255) NOT NULL,
order_shipping_num VARCHAR(255)FOREIGN KEY REFERENCES [shipping](shipping_num) ON UPDATE CASCADE ON DELETE CASCADE,
order_subtotal MONEY NOT NULL,
order_tax MONEY NOT NULL,
order_total MONEY NOT NULL
); 
GO

CREATE TABLE [product] (
product_id INT IDENTITY (1,1) PRIMARY KEY,
product_name VARCHAR(255) NOT NULL,
product_cost MONEY NOT NULL
); 
GO

CREATE TABLE  [order_product] (
op_order_id INT FOREIGN KEY REFERENCES [order](order_id) ON UPDATE CASCADE ON DELETE CASCADE,
op_product_id INT FOREIGN KEY REFERENCES [product](product_id) ON UPDATE CASCADE ON DELETE CASCADE,
op_product_qty INT NOT NULL,
CONSTRAINT op_id PRIMARY KEY (op_order_id,op_product_id)
);
GO

INSERT INTO [product] (product_name,product_cost) VALUES ('DVD',5.55);
INSERT INTO [product] (product_name,product_cost) VALUES ('Video Game',29.99);
INSERT INTO [product] (product_name,product_cost) VALUES ('Vinyl Album',19.98);
INSERT INTO [product] (product_name,product_cost) VALUES ('VHS',0.99);

INSERT INTO [customer] (customer_fname,customer_lname,customer_address,customer_city,customer_postcode,customer_province,customer_email,customer_phone)
VALUES ('Stephen','Donoghue','555 Electric Ave.','Halifax','ABC 123','NS','notmyemail@fake.net','1-901-123-4567');
INSERT INTO [customer] (customer_fname,customer_lname,customer_address,customer_city,customer_postcode,customer_province,customer_email,customer_phone)
VALUES ('Ted','Sa','123 Sesame St.','Skyville','999 000','NS','nottheiremail@fake.net','1-821-143-4657');
INSERT INTO [customer] (customer_fname,customer_lname,customer_address,customer_city,customer_postcode,customer_province,customer_email,customer_phone)
VALUES ('Margaryta','Shevchenko','987 Rainbow Rd.','Spacetown','A2C 5G7','NS','notheremail@fake.net','1-321-123-7654');
INSERT INTO [customer] (customer_fname,customer_lname,customer_address,customer_city,customer_postcode,customer_province,customer_email,customer_phone)
VALUES ('Ronique','Robinson','5 Six Blvd.','Halifax','YUG IOH','NS','notheremail2@fake.net','1-789-112-7656');
INSERT INTO [customer] (customer_fname,customer_lname,customer_address,customer_city,customer_postcode,customer_province,customer_email,customer_phone)
VALUES ('Mathieu Duplex','Poutcheu Siewe','8 Nine Ave.','Halifax','YUG IOH','NS','nothismail@fake.net','1-789-145-7756');

INSERT INTO [shipping] (shipping_num,shipping_date,shipping_total) VALUES ('S01','29/06/1990',7.56);
INSERT INTO [shipping] (shipping_num,shipping_date,shipping_total) VALUES ('S02','24/07/2001',7.54);

INSERT INTO [order] (order_customer_id,order_date,order_paytype,order_deliverytype,order_shipping_num,order_subtotal,order_tax,order_total)
VALUES (1,'27/06/1990','credit','shipping','S01',31.99,2.56,40.42);
INSERT INTO [order] (order_customer_id,order_date,order_paytype,order_deliverytype,order_shipping_num,order_subtotal,order_tax,order_total)
VALUES (1,'22/07/2001','credit','shipping','S02',32.99,2.77,43.42);
INSERT INTO [order] (order_customer_id,order_date,order_paytype,order_deliverytype,order_subtotal,order_tax,order_total)
VALUES (3,'23/12/2005','cash','pick-up',4.95,0.88,5.83);
INSERT INTO [order] (order_customer_id,order_date,order_paytype,order_deliverytype,order_subtotal,order_tax,order_total)
VALUES (5,'2/2/2022','debit','drop-off',58.44,8.54,65.88);
GO