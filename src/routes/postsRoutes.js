const express = require("express");
const router = express.Router();
const postsController = require("../controllers/postsController");

router.post("/posts", postsController.addPostByUserId);

module.exports = router;