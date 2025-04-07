CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO users (name, email) VALUES 
    ('Alejandra Barros', 'alejandra@email.com'),
    ('Bruna Savelli', 'bruna@email.com'),
    ('Caio Gabriel', 'caio@email.com'),
    ('Enzo Turcovic', 'enzo@email.com'),
    ('Kevin Lima', 'kevin@email.com');

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
);

INSERT INTO posts (title, content, user_id) VALUES
    ('Alejandra Barros', 'Back-End', 'Hoje eu farei o mínimo e esse será o meu máximo.', 1),
    ('Bruna Savelli', 'Passeio no parque', 'https://cdn.gazetasp.com.br/img/c/825/500/dn_arquivo/2022/05/caozinho.jpg', 2),
    ('Caio Gabriel', 'Salve', 'Suave na nave.', 3),
    ('Enzo Turcovic', 'Sono', 'Dormir em qlq lugar tem seus benefícios.', 4),
    ('Kevin Lima', 'Nino', 'Kevinino', 5),