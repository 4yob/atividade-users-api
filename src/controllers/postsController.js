const User = require("../models/User");
const Post = require("../models/Post");
const PostList = require("../models/PostList");

const listaPosts = new PostList();

const router = {

    addPostByUserId: (req, res) => {
        try {
            const { content } = req.body;
            if (!content) {
                throw new Error("Digite algo para postar.");
            }
            const newPost = new Post(content);
            listaPosts.addPostByUserId(newPost, User.id);
            res.status(201).json({ message: "Post adicionado com sucesso!", newPost });
        } catch (error) {
            res.status(400).json({ message: "Erro ao adicionar post. Tente novamente!", error });
        }
    }
}

module.exports = router;