const { v4: uuid4 } = require("uuid");
const User = require("./User");

class Post {
    constructor(content) {
        this.id = uuid4();
        this.UserId = User.id;
        this.author = User.name;
        this.content = content;
    }
}

module.exports = Post;