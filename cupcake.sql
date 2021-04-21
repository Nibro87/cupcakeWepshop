CREATE DATABASE  IF NOT EXISTS `cupcake`;

USE `cupcake`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE topping(
topping varchar(50),
price int NOT NULL,
primary key(topping)
);

CREATE TABLE bottom(
bottom varchar(50),
price int NOT NULL,
primary key(bottom)
);

INSERT INTO bottom(bottom, price)
VALUES("Chocolate","5"),("Blueberry","5"),("Rasberry","5"),("Crispy","6"),("Strawberry","6"),("Rum/Raisin","7"),("Orange","8"),("Lemon","8"),("Blue Cheese","9");

INSERT INTO topping(topping, price)
VALUES("Chocolate","5"),("Vanilla","5"),("Nutmeg","5"),("Pistacio","6"),("Almond","7");

CREATE TABLE cupcakeorder(
cupcake_id int NOT NULL AUTO_INCREMENT,
order_id int NOT NULL,
amount int NOT NULL, 
topping varchar(50) NOT NULL, 
bottom varchar(50) NOT NULL, 
price int NOT NULL,
PRIMARY KEY(cupcake_id),
FOREIGN KEY(order_id) REFERENCES orders(order_id),
FOREIGN KEY(topping) REFERENCES topping(topping),
FOREIGN KEY(bottom) REFERENCES bottom(bottom)
);

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES 
(1,'barbie@world.dk','jensen','customer'),
(2,'ken@world.com','jensen','customer'),
(3,'robin@gotham.com','batman','employee');
UNLOCK TABLES;