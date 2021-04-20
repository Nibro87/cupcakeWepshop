USE cupcake;

CREATE TABLE users(

user_id varchar(50) NOT NULL,
pass varchar(50) NOT NULL,
balance int NOT NULL,
administrator boolean,
PRIMARY KEY(user_Id)

);

INSERT INTO users (user_id, pass, balance, administrator)
VALUES ("ole@ole.dk", "ole", "1000", TRUE);



CREATE TABLE orders(
order_id int NOT NULL AUTO_INCREMENT,
user_id varchar(50) NOT NULL,
price int NOT NULL,
ordertime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   
completed boolean,
PRIMARY KEY(order_id),
FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO orders (order_id, user_id, price, completed)
VALUES ("0", "ole@ole.dk", "0", TRUE);


CREATE TABLE topping(
topping varchar(50),
price int NOT NULL,
primary key(topping)
);

INSERT INTO topping(topping, price)
VALUES("Chocolate","5"),("Vanilla","5"),("Nutmeg","5"),("Pistacio","6"),("Almond","7");


CREATE TABLE bottom(
bottom varchar(50),
price int NOT NULL,
primary key(bottom)
);

INSERT INTO bottom(bottom, price)
VALUES("Chocolate","5"),("Blueberry","5"),("Rasberry","5"),("Crispy","6"),("Strawberry","6"),("Rum/Raisin","7"),("Orange","8"),("Lemon","8"),("Blue Cheese","9");




CREATE TABLE cupcake(
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

