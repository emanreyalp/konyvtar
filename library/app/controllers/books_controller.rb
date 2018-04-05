class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    update_params = params.permit :title, :author, :isbn, :location
    book.update update_params
    book.style = params[:style]
    book.save!

    redirect_to books_path
  end

  def create
    book = Book.new
    update_params = params.permit :title, :author, :isbn, :location
    book.update update_params
    book.style = params[:style]
    book.save!

    redirect_to books_path
  end
end
