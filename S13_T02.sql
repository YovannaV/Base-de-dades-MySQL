#FIRST CREATE DATABASE
CREATE database S13T02;
USE S13T02;
#NOW CREATE THE TABLES
CREATE TABLE CLIENT(
Client_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
Client_name varchar(50) NOT NULL,
Client_lastname varchar(50) not null, 
Client_address varchar(50) not null, 
Client_phone integer not null,
Client_email varchar(50) not null
);

# ESTABLISHMENT TABLE
CREATE TABLE ESTABLISHMENT(
Establishment_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
Estblishment_name VARCHAR(50) NOT NULL,
Establishment_address VARCHAR(50) NOT NULL,
Establishment_phone integer NOT NULL, 
Establishment_email VARCHAR(50) NOT NULL
);

# WORKER TABLE
CREATE TABLE WORKER(
Worker_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
Establishment_ID INTEGER NOT NULL,
Worker_name VARCHAR(50) NOT NULL,
Worker_lastname VARCHAR(50) NOT NULL,
Worker_email VARCHAR(50) NOT NULL,
Worker_phone integer NOT NULL, 
Worker_position varchar(50) NOT NULL,
FOREIGN KEY(Establishment_ID) REFERENCES ESTABLISHMENT (Establishment_ID)
);

# LIST OF PRODUCT TYPE
CREATE TABLE PRODUCT_TYPE(
Type_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
Type_cat INTEGER NOT NULL
);

# TYPES OF PRODUCT TABLE
CREATE TABLE LIST_PRODUCT (
Product_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
Type_ID integer NOT NULL,
Product_name VARCHAR(50) NOT NULL,
Product_quantity integer NOT NULL,
Product_unit_cost integer NOT NULL,
Product_description VARCHAR(50) NOT NULL,
FOREIGN KEY (Type_ID) REFERENCES PRODUCT_TYPE (Type_ID)
);


# TRANSACTION TABLE
CREATE TABLE TRANSACTION(
Transaction_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
Product_ID integer NOT NULL,
Worker_ID integer NOT NULL,
Client_ID integer NOT NULL,
Establishment_ID INTEGER NOT NULL,
Transaction_date DATETIME NOT NULL,
FOREIGN KEY (Product_ID) REFERENCES LIST_PRODUCT (Product_ID),
FOREIGN KEY (Worker_ID) REFERENCES WORKER (Worker_ID),
FOREIGN KEY (Establishment_ID) REFERENCES ESTABLISHMENT (Establishment_ID),
FOREIGN KEY (Client_ID) REFERENCES CLIENT (Client_ID)
);

#Add info to client
SELECT * FROM s13t02.client;
INSERT INTO `s13t02`.`client` (`Client_ID`, `Client_name`, `Client_lastname`, `Client_address`, `Client_phone`, `Client_email`) VALUES ('1', 'Yovanna', 'Valencia', 'Barcelona', '955111222', 'yv@gmail.com');
INSERT INTO `s13t02`.`client` (`Client_ID`, `Client_name`, `Client_lastname`, `Client_address`, `Client_phone`, `Client_email`) VALUES ('2', 'Benjamin', 'Guiraud', 'Tarragona', '955222333', 'bg@gmail.com');
INSERT INTO `s13t02`.`client` (`Client_ID`, `Client_name`, `Client_lastname`, `Client_address`, `Client_phone`, `Client_email`) VALUES ('3', 'Yulianna', 'Barba', 'Madrid', '966333444', 'yb@gmail.com');
INSERT INTO `s13t02`.`client` (`Client_ID`, `Client_name`, `Client_lastname`, `Client_address`, `Client_phone`, `Client_email`) VALUES ('4', 'Ezequiel', 'Aguirre', 'Castelldefels', '966444555', 'ea@gmail.com');

#add info to establishment
SELECT * FROM s13t02.establishment;
INSERT INTO `s13t02`.`establishment` (`Establishment_ID`, `Estblishment_name`, `Establishment_address`, `Establishment_phone`, `Establishment_email`) VALUES ('1', 'Nike', ' Pg. de Gràcia, 17, 08007 Barcelona', '932714503', 'nike@nike.com');
INSERT INTO `s13t02`.`establishment` (`Establishment_ID`, `Estblishment_name`, `Establishment_address`, `Establishment_phone`, `Establishment_email`) VALUES ('2', 'Nike L’Illa', 'Avinguda Diagonal, 557, 08029 Barcelona', '932714503', 'nikel@nike.com');
INSERT INTO `s13t02`.`establishment` (`Establishment_ID`, `Estblishment_name`, `Establishment_address`, `Establishment_phone`, `Establishment_email`) VALUES ('3', 'Nike Store - Les Rambles', 'La Rambla, 120, 08002 Barcelona', '933015548', 'niker@nike.com');
INSERT INTO `s13t02`.`establishment` (`Establishment_ID`, `Estblishment_name`, `Establishment_address`, `Establishment_phone`, `Establishment_email`) VALUES ('4', 'adidas Brand Center Barcelona', 'Pg. de Gràcia, 3, 08007 Barcelona', '918368867', 'adidas@adidas.com');

#add info to worker
SELECT * FROM s13t02.worker;
INSERT INTO `s13t02`.`worker` (`Worker_ID`, `Establishment_ID`, `Worker_name`, `Worker_lastname`, `Worker_email`, `Worker_phone`,`Worker_position`) VALUES ('1', '1', 'Manuel', 'Perez', 'mp@nike.com', '932714503','ventas');
INSERT INTO `s13t02`.`worker` (`Worker_ID`, `Establishment_ID`, `Worker_name`, `Worker_lastname`, `Worker_email`, `Worker_phone`,`Worker_position`) VALUES ('2', '2', 'Rosa', 'Miro', 'rm@nike.com', '932714503','ventas');
INSERT INTO `s13t02`.`worker` (`Worker_ID`, `Establishment_ID`, `Worker_name`, `Worker_lastname`, `Worker_email`, `Worker_phone`,`Worker_position`) VALUES ('3', '3', 'Joan', 'Serrat', 'js@nike.com', '933015548','ventas');
INSERT INTO `s13t02`.`worker` (`Worker_ID`, `Establishment_ID`, `Worker_name`, `Worker_lastname`, `Worker_email`, `Worker_phone`,`Worker_position`) VALUES ('4', '4', 'Luis', 'Morales', 'lm@adidas.com', '918368867','ventas');


#add info to product type
SELECT * FROM s13t02.product_type;
INSERT INTO `s13t02`.`product_type` (`Type_ID`, `Type_cat`) VALUES ('1', '12');
INSERT INTO `s13t02`.`product_type` (`Type_ID`, `Type_cat`) VALUES ('2', '13');
INSERT INTO `s13t02`.`product_type` (`Type_ID`, `Type_cat`) VALUES ('3', '14');

#add info to list_product
SELECT * FROM s13t02.list_product;
INSERT INTO `s13t02`.`list_product` (`Product_ID`, `Type_ID`, `Product_name`, `Product_quantity`, `Product_unit_cost`, `Product_description`) VALUES ('1', '1', 'ZAPATILLA BUSENITZ PRO', '10', '90', 'Core Black / Footwear White / Gold Metallic');
INSERT INTO `s13t02`.`list_product` (`Product_ID`, `Type_ID`, `Product_name`, `Product_quantity`, `Product_unit_cost`, `Product_description`) VALUES ('2', '2', 'ZAPATILLA ADIDAS 4D FWD_PULSE', '10', '160', 'Core Black / Magic Grey / Blue Rush');
INSERT INTO `s13t02`.`list_product` (`Product_ID`, `Type_ID`, `Product_name`, `Product_quantity`, `Product_unit_cost`, `Product_description`) VALUES ('3', '3', 'ZAPATILLA DURAMO SL 2.0', '10', '60', 'Shadow Navy / Halo Silver / Legend Ink');
INSERT INTO `s13t02`.`list_product` (`Product_ID`, `Type_ID`, `Product_name`, `Product_quantity`, `Product_unit_cost`, `Product_description`) VALUES ('4', '1', 'Nike Air Force 1 \'07 LV8', '10', '120', 'Blanco/Dark Sulfur/Opti Yellow/Negro');
INSERT INTO `s13t02`.`list_product` (`Product_ID`, `Type_ID`, `Product_name`, `Product_quantity`, `Product_unit_cost`, `Product_description`) VALUES ('5', '2', 'Nike Winflo 8', '10', '100', 'Negro/Dark Smoke Grey/Blanco');
INSERT INTO `s13t02`.`list_product` (`Product_ID`, `Type_ID`, `Product_name`, `Product_quantity`, `Product_unit_cost`, `Product_description`) VALUES ('6', '3', 'Nike Legend Essential 2', '10', '60', 'Negro/Plata metalizado/Blanco');

#add info to list transaction
SELECT * FROM s13t02.transaction;
INSERT INTO `s13t02`.`transaction` (`Transaction_ID`, `Product_ID`, `Worker_ID`, `Client_ID`, `Establishment_ID`, `Transaction_date`) VALUES ('1', '1', '1', '1', '1', '2022-05-05');
INSERT INTO `s13t02`.`transaction` (`Transaction_ID`, `Product_ID`, `Worker_ID`, `Client_ID`, `Establishment_ID`, `Transaction_date`) VALUES ('2', '2', '1', '1', '2', '2022-06-06');
INSERT INTO `s13t02`.`transaction` (`Transaction_ID`, `Product_ID`, `Worker_ID`, `Client_ID`, `Establishment_ID`, `Transaction_date`) VALUES ('3', '3', '2', '2', '3', '2022-04-04');
INSERT INTO `s13t02`.`transaction` (`Transaction_ID`, `Product_ID`, `Worker_ID`, `Client_ID`, `Establishment_ID`, `Transaction_date`) VALUES ('4', '4', '3', '3', '4', '2022-03-03');
INSERT INTO `s13t02`.`transaction` (`Transaction_ID`, `Product_ID`, `Worker_ID`, `Client_ID`, `Establishment_ID`, `Transaction_date`) VALUES ('5', '5', '4', '4', '4', '2022-02-02');
INSERT INTO `s13t02`.`transaction` (`Transaction_ID`, `Product_ID`, `Worker_ID`, `Client_ID`, `Establishment_ID`, `Transaction_date`) VALUES ('6', '6', '4', '3', '2', '2022-02-04');

