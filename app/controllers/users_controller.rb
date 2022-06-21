class UsersController < ApplicationController

  def index
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    
  end


  # strong parameter
  private

  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
end