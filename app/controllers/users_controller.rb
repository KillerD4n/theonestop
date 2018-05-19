class UsersController < ApplicationController

  def login
    @user = User.find_by(params[:username, :password])
  end

  def show
    @user = User.find_by(params[:username])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find_by
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :email, :age)
  end

end
