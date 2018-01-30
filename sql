CREATE TABLE product (
   id int  NOT NULL,
   name varchar(255)  NOT NULL,
   CONSTRAINT product_pk PRIMARY KEY (id)
);

CREATE TABLE customer (
   id int  NOT NULL,
   name varchar(255)  NOT NULL,
   email varchar(255)  NOT NULL,
   password varchar(100)  NOT NULL,
   CONSTRAINT customer_pk PRIMARY KEY (id)
);
CREATE TABLE purchase (
   id int  NOT NULL,
   user_account_id int  NOT NULL,
   CONSTRAINT purchase_pk PRIMARY KEY (id)
);
CREATE TABLE purchase_item (
   purchase_id int  NOT NULL,
   product_id int  NOT NULL,
   number_of_items int  NOT NULL,
   total_price money  NOT NULL,
   CONSTRAINT purchase_item_pk PRIMARY KEY (purchase_id,product_id)
);
