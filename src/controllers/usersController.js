const User = require("../models/User");
const UserList = require("../models/UserList");

const listaUsuarios = new UserList();

listaUsuarios.addUser(new User("Alejandra", "alejandra@gmail.com", 17));

const router = {
    
    addUser: (req, res) => {
        try {
            const { name, email, age } = req.body;
            if (!name || !email || !age) {
                throw new Error("Por favor, preencha todos os campos.");
            }
            const newUser = new User(name, email, age);
            listaUsuarios.addUser(newUser);
            res.status(201).json({ message: "Usuário adicionado com sucesso! Seja bem-vindo!", newUser });
        } catch (error) {
            res.status(400).json({ message: "Erro ao adicionar usuário. Tente novamente!", error});
        }
    },

    getAllUsers: (req, res) => {
        try {
            const users = listaUsuarios.getAllUsers();
            res.status(200).json({ Usuários: users });
        } catch (error) {
            res.status(404).json({ message: "Erro ao buscar usuários. Tente novamente!", error });
        }
    },

    getUserById: (req, res) => {
        try {
            const user = listaUsuarios.getUserById(req.params.id);
            res.status(200).json({ message: "Usuário identificado com sucesso!", Usuário: user });
        } catch (error) {
            res.status(404).json({ message: "Erro ao buscar usuário. Tente novamente!", error});
        }
    },

    updateUser: (req, res) => {
        try {
            const updatedUser = listaUsuarios.updateUser(req.params.id, req.body);
            res.status(200).json({ message: "Usuário atualizado com sucesso!", Usuário: updatedUser });
        } catch (error) {
            res.status(404).json({ message: "Erro ao atualizar usuário. Tente novamente!", error });
        }
    },

    deleteUser: (req, res) => {
        try {
            listaUsuarios.deleteUser(req.params.id);
            res.status(200).json({ message: "Usuário deletado com sucesso!" });
        } catch (error) {
            res.status(404).json({ message: "Erro ao deletar usuário. Tente novamente!", error });
        }
    }
    
}

module.exports = router