class UsersController < ApplicationController
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
    @user = User.find_by :id => params[:id]
  end

  def update
    @user = User.find_by :id => params[:id]
    if @user.update user_params
      redirect_to @user
    else
      render :edit
    end
    
  end

  def show
    @user = User.find_by :id => params[:id]
  end

  def destroy
    user = User.find_by :id => params[:id]
    user.destroy
    redirect_to users_path
  end
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
