class BooksController < ApplicationController
  before_action :current_book, only: %i[edit show]

  def index
    @books = Book.all
  end

  def edit; end

  def show; end

  def update
    update_book! Book.find(params[:id])

    redirect_to books_path
  end

  def create
    update_book! Book.new

    redirect_to books_path
  end

  private

  def update_book!(book)
    update_params = params.permit :title, :author, :isbn
    book.update update_params

    book.location = Location.find(params[:location])
    book.style = params[:style]
    book.save!
  end
end
