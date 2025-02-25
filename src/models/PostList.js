class PostList {
    constructor() {
        this.posts = [];
    }

    addPostByUserId(post,UserId) {
        post.UserId = UserId;
        this.posts.push(post);
    }

    getAllPosts() {
        return this.posts;
    }
}

module.exports = PostList;