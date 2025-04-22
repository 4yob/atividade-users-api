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

INSERT INTO users (name, email) VALUES
    ('Lilica Barros', 'lilica@email.com'),
    ('Chico Barros', 'chico@email.com'),
    ('Angel Barros', 'angel@email.com');

INSERT INTO users (name, email) VALUES
    ('Afonso', 'afonso@email.com'),
    ('Beatriz', 'beatriz@email.com'),
    ('Carlos', 'carlos@email.com'),
    ('Daniela', 'daniela@email.com'),
    ('Eduardo', 'eduardo@email.com'),
    ('Fernanda', 'fernanda@email.com'),
    ('Gustavo', 'gustavo@email.com'),
    ('Helena', 'helena@email.com'),
    ('Ícaro', 'icaro@email.com'),
    ('Juliana', 'juliana@email.com'),
    ('Kelvin', 'kelvin@email.com'),
    ('Larissa', 'larissa@email.com'),
    ('Matheus', 'matheus@email.com'),
    ('Nádia', 'nadia@email.com'),
    ('Otávio', 'otavio@email.com'),
    ('Patrícia', 'patricia@email.com'),
    ('Quirino', 'quirino@email.com'),
    ('Rafael', 'rafael@email.com'),
    ('Samara', 'samara@email.com'),
    ('Tiago', 'tiago@email.com'),
    ('Ursula', 'ursula@email.com'),
    ('Victor', 'victor@email.com'),
    ('Wagner', 'wagner@email.com'),
    ('Xênia', 'xenia@email.com'),
    ('Yasmin', 'yasmin@email.com'),
    ('Zuleica', 'zuleica@email.com'),
    ('Alex', 'alex@email.com'),
    ('Bianca', 'bianca@email.com'),
    ('César', 'cesar@email.com'),
    ('Davi', 'davi@email.com'),
    ('Eliana', 'eliana@email.com'),
    ('Felipe', 'felipe@email.com'),
    ('Gabriela', 'gabriela@email.com'),
    ('Henrique', 'henrique@email.com'),
    ('Isadora', 'isadora@email.com'),
    ('João', 'joao@email.com'),
    ('Karina', 'karina@email.com'),
    ('Lúcio', 'lucio@email.com'),
    ('Mônica', 'monica@email.com'),
    ('Nelson', 'nelson@email.com'),
    ('Olivia', 'olivia@email.com');
    

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    content TEXT NOT NULL,
    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);

INSERT INTO posts (content, user_id) VALUES
    ('Hoje eu farei o mínimo e esse será o meu máximo.', 1),
    ('https://cdn.gazetasp.com.br/img/c/825/500/dn_arquivo/2022/05/caozinho.jpg', 2),
    ('Suave na nave.', 3),
    ('Dormir em qlq lugar tem seus benefícios.', 4),
    ('Kevinino', 5);