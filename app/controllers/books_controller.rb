class BooksController < ApplicationController
  def index
    @books = Book.order('author ASC')
  end

  def show
    @book = Book.find_by(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book created"
      redirect_to books_path
    else
      flash[:alert] = "Could not save Book"
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :description, :genre, :year)
  end
end
