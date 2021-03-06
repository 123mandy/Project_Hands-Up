class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    @user.image = "/assets/user.jpg" if @user.image.nil?
    if @user.save
      session[:user_id] = @user.id
      flash[:welcome]="Thanks for your signing up. Enjoy your trip in HandsUp 🎈"
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      user.image = req["public_id"]
    end
    user.update_attributes(user_params)
    user.save
    redirect_to user
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    @posts = @user.posts

  end

  private
  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation,:image)
  end

end
