class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    user = User.new(params[:user])
    if user.save
      redirect_to user_path user
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    if User.find(params[:id]).update_attributes(params[:user])
      redirect_to user_path
    else
      render :edit
    end

  end

  def destroy
  end
end
