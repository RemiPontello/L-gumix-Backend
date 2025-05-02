CREATE TABLE roles (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO roles (id, name) VALUES
(1, 'admin'),
(2, 'vendeur'),
(3, 'client');

CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);

INSERT INTO users (id, name, email, password, role_id) VALUES
(1, 'Alice Légume', 'alice@legumes.com', 'password_hashed_1', 1),
(2, 'Bob Marchand', 'bob@marche.com', 'password_hashed_2', 2),
(3, 'Clara Client', 'clara@client.com', 'password_hashed_3', 3);

CREATE TABLE vegetables (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(6,2),
    quantity INT,
    unit VARCHAR(10)
);

INSERT INTO vegetables (id, name, price, quantity, unit) VALUES
(1, 'Carotte', 1.20, 100, 'kg'),
(2, 'Tomate', 2.50, 50, 'kg'),
(3, 'Salade', 0.90, 200, 'pièce'),
(4, 'Courgette', 1.80, 80, 'kg'),
(5, 'Oignon', 1.10, 120, 'kg');
