const User = require("../models/User");
const Post = require("../models/Post");
const PostList = require("../models/PostList");

const listaPosts = new PostList();

const router = {

    getAllPosts: (req, res) => {
        try {
            const posts = listaPosts.getAllPosts();
            res.status(200).json({ Posts: posts });
        } catch (error) {
            res.status(404).json({ message: "Erro ao buscar posts. Tente novamente!", error });
        }
    },

    getPostById: (req, res) => {
        try {
            const post = listaPosts.getPostById(req.params.id);
            res.status(200).json({ message: "Post identificado com sucesso!", Post: post });
        } catch (error) {
            res.status(404).json({ message: "Erro ao buscar post. Tente novamente!", error });
        }
    },

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