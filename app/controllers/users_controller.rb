class UsersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params # Set up the user but don't save yet.
    if @user.save # .save returns true if the user is valid, and false otherwise.
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find_by :id => get_user_id
  end

  def update
    @user = User.find_by :id => get_user_id
    if @user.update user_params
      redirect_to @user
    else
      render :edit
    end
    
  end

  def show
    @user = User.find_by :id => get_user_id
  end

  def destroy
    
    user = User.find_by :id => get_user_id
    user.destroy
    redirect_to users_path
  end
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def get_user_id
    (!@current_user.nil? && !@current_user.admin?)? @current_user.id  : params[:id]
  end

end
