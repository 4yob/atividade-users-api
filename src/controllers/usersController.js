const User = require("../models/User");
const UserList = require("../models/UserList");

const lista = new UserList();

lista.addUser(new User("Alejandra", "alejandra@gmail.com", 17));

const router = {
    
    addUser: (req, res) => {
        try {
            const { name, email, age } = req.body;
            if (!name || !email || !age) {
                throw new Error("Por favor, preencha todos os campos.");
            }
            const newUser = new User(name, email, age);
            lista.addUser(newUser);
            res.status(201).json({ message: "Usuário adicionado com sucesso! Seja bem-vindo!", newUser });
        } catch (error) {
            res.status(400).json({ message: "Erro ao adicionar usuário. Tente novamente!", error});
        }
    },

    getAllUsers: (req, res) => {
        try {
            const users = lista.getAllUsers();
            res.status(200).json({ Usuários: users });
        } catch (error) {
            res.status(404).json({ message: "Erro ao buscar usuários. Tente novamente!", error });
        }
    }
}

module.exports = router