const express = require("express");
const router = express.Router();
const postsController = require("../controllers/postsController");
const apiKeyMiddleware = require("../config/apiKey.js");

router.use(apiKeyMiddleware);
/**
 * @swagger
 * tags:
 *   name: Posts
 *   description: Gerenciamento de posts
 */


/**
 * @swagger
 * /api/posts:
 *   get:
 *     summary: Lista todos os posts
 *     tags: [Posts]
 *     parameters:
 *       - in: query
 *         name: name
 *         schema:
 *           type: string
 *         description: Filtro por id
 *     responses:
 *       200:
 *         description: Lista de posts
 */
router.get("/posts", postsController.getPosts);

/**
 * @swagger
 * /api/posts/{id}:
 *   get:
 *     summary: Busca post por ID
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Post identificado com sucesso!
 *       404:
 *         description: Post não encontrado.
 */
router.get("/posts/:id", postsController.getPostById);

/**
 * @swagger
 * /api/posts:
 *   post:
 *     summary: Adiciona um novo post
 *     tags: [Posts]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               content:
 *                 type: string
 *               user_id:
 *                type: integer
 *     responses:
 *       201:
 *         description: Post adicionado com sucesso!
 */
router.post("/posts", postsController.createPost);


/**
 * @swagger
 * /api/posts/{id}:
 *   put:
 *     summary: Atualiza um post
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               content:
 *                 type: string
 *               user_id:
 *                 type: integer
 *     responses:
 *       200:
 *         description: Post atualizado com sucesso!
 */
router.put("/posts/:id", postsController.updatePost);

/**
 * @swagger
 * /api/posts/{id}:
 *   delete:
 *     summary: Deleta um post
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Post deletado com sucesso!
 */
router.delete("/posts/:id", postsController.deletePost);

module.exports = router;