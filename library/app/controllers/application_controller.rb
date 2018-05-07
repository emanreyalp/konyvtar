class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_book
    @book = Book.find(params[:id])
  end

  def current_location
    @location = Location.find(params[:id])
  end
end
