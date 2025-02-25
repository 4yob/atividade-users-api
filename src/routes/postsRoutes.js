const express = require("express");
const router = express.Router();
const postsController = require("../controllers/postsController");

router.post("/posts", postsController.addPostByUserId);
router.get("/posts", postsController.getAllPosts);
router.get("/posts/:id", postsController.getPostById);
router.get("/posts/:UserId", postsController.getPostByUserId);

module.exports = router;