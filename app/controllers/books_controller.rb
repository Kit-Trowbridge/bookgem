# app/controllers/books_controller.rb

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
    @users = User.all
  end

  def create
    @book = Book.new(book_params)
    # @book.user = current_user

    if @book.save
      redirect_to books_path, notice: "Book successfully listed!"
    else
      @users = User.all
      flash.now[:alert] = "There was an error listing the book."
      render :new
    end
  end

  private

  def book_params
    # Permit only the allowed parameters
    params.require(:book).permit(:title, :author, :category, :price, :user_id)
  end
end
