class PostsController < ApplicationController
    def show
        @post = Post.find params[:id]   
    end


    def filter
        if params[:post][:location_id].present?
          @posts = Post.where(location_id: params[:post][:location_id]).reverse
        else
          redirect_to posts_path
        end
    end

    def search
        @posts = Post.where("title LIKE ? or content LIKE ?","%" + params[:key] + "%","%" + params[:key] + "%")
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
        if params[:file].present?
            req = Cloudinary::Uploader.upload(params[:file])
            post.image = req["public_id"]
            post.save
        end
        redirect_to post
    end

    def edit
        @post = Post.find params[:id]
    end

    def update
        post = Post.find params[:id]
        if params[:file].present?
            req = Cloudinary::Uploader.upload(params[:file])
            post.image = req["public_id"]
        end
        post.update_attributes(post_params)
        post.save
        redirect_to post_path(post.id)
    end

    def destroy
        post = Post.find params[:id]
        post.destroy
        redirect_to user_posts_path(post.user_id)
    end

    private
    def post_params
        params.require(:post).permit(:title, :status_id, :location_id, :address, :content, :user_id,:price, :image)
    end
end