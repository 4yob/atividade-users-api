const { v4: uuid4 } = require("uuid");
const User = require("./User");

class Post {
    constructor(author, content) {
        this.id = uuid4();
        this.UserId = User.id;
        this.author = author;
        this.content = content;
    }
}

module.exports = Post;