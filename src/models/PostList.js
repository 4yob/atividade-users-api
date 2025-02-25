class PostList {
    constructor() {
        this.posts = [];
    }

    addPostByUserId(post, UserId) {
        post.UserId = UserId;
        this.posts.push(post);
    }

    getAllPosts() {
        return this.posts;
    }

    getPostById(id) {
        const post = this.posts.find(post => post.id == id);
        if (!post) {
            throw new Error('Post não identificado.');
        }
        return post;
    }

    getPostByUserId(UserId) {
        const post = this.posts.find(post => post.UserId == UserId);
        if (!post) {
            throw new Error('Post não identificado.');
        }
        return post;
    }
}

module.exports = PostList;