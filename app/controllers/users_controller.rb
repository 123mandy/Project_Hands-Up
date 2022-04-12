class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to main_path
    else
      render :new
    end
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
    params.require(:user).permit(:user_name, :email, :password, :passeord_confirmation)
  end
end
