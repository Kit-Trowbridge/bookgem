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
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to book_path(@book), notice: "Book successfully listed!"
    else
      render :new, alert: "Error listing the book."
    end
  end

  private

  def book_params
    # Permit only the allowed parameters
    params.require(:book).permit(:title, :author, :category)
  end
end
