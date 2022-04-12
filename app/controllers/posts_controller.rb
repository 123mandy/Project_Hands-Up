class PostsController < ApplicationController
    def show
        @post = Post.find params[:id]   
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.create post_params
        redirect_to post
    end

    def edit
        post = Post.find params[:id]
    end

    private
    def post_params
        params.require(:post).permit(:title, :status_id, :location_id, :address, :content, :user_id)
    end
end