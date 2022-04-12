class PostsController < ApplicationController
    def show
        @post = Post.find params[:id]   
    end

    def user_posts
        user = User.find params[:id]
        @posts = user.posts
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.create post_params
        redirect_to post
    end

    def edit
        @post = Post.find params[:id]
    end

    def update
        post = Post.find params[:id]
        post.update post_params
        redirect_to user_posts_path(post.user_id)
    end

    def destroy
        post = Post.find params[:id]
        post.destroy
        redirect_to user_posts_path(post.user_id)
    end

    private
    def post_params
        params.require(:post).permit(:title, :status_id, :location_id, :address, :content, :user_id)
    end
end