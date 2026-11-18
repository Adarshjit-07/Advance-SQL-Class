--The Case of ITCdemo--
--Create the data table distributors to supply products across different cities and regions - ID,Name,City,Region, phone--
create table distributors (
  distributor_id INTEGER PRIMARY KEY,
  name           	TEXT not NULL,
  City              TEXT,
  Region            TEXT,
  phone             TEXT
);
  
  Drop table distributors;
  --create a tble name products with the coloumn, product_id, product_name, brand, category, price, stock. Condition: id should be unqiue, name-text ,not null unique, brand text, category text not null, price decimal and greater than 0 and stock whole if missing them 0.--
  Create table Products (
    product_id Integer primary key,
    product_name text not null UNIQUE,
    brand text,
    category text not null,
    price real check(price > 0),
    stock integer default 0
 );
   
   
   --create a table name containing cell_id unique product_id, distributor id, sale date, quantity integer > 0, amount real
   create TABLE sales(
     sales_id integer primary key,
     product_id integer,
     distributor_id integer,
     sale_id text,
     quantity integer check (quantity > 0),
     amount real,
     Foreign KEY (product_id) REFERENCES products(product_id),
     FOREIGN key (distributor_id) REFERENCES distributors(distributor_id)
  );
  
  
--checking the coloumns of all the 3 tables--
PRAGMA table_info(distributors);
PRAGMA table_info(Products);
PRAGMA table_info(sales);

--inserting the data according to variables--

INSERT INTO products values (1, 'Aashirvaad Atta 5kg','Aashirvaad', 'staples', 265,120);
INSERT INTO products values (2, 'Aashirvaad Salt', 'AAshirvaad