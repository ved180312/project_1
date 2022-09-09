class UsersController < ApplicationController

  def show
    # byebug
    @user = User.find(params[:id])
  end

  def index
     @user = User.all
  end

  def new
    @user= User.new
  end 
  def edit
    @user = User.find(params[:id])
  end

  def create
  
    @user = User.new(params.require(:user).permit(:name, :email, :gender ,:password_digest))
    # @article.user = User.first
    if @user.save
      flash[:notice] = "user was created successfully."
      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end

def update

    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:name, :email, :gender, :password_digest))
      flash[:notice] = "Article was updated successfully."
      redirect_to @user
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @user= User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end 
end
