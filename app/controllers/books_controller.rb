class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(params[:id])
  end

  def new
    
  end

  def create
    
  end

  def update
    
  end

  def destroy
    
  end
end
