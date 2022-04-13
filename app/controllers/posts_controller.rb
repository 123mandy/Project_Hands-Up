class PostsController < ApplicationController
    def show
        @post = Post.find params[:id]   
    end

    def filter
        if params[:post][:location_id].present?
          @posts = Post.where(location_id: params[:post][:location_id])
        else
          redirect_to posts_path
        end
    end


    def index
        @posts = Post.all
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
        post.latitude = Geocoder.search(post.address)[0]
        post.longitude = Geocoder.search(post.address)[1]
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