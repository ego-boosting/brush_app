class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def create
  end

  def edit
  end

  def update
  end


  # strong parameter
  private

  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
end