class BooksController < ApplicationController
  def index
    @books = Book.order('author ASC')
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
      flash[:success] = "Book created"
      redirect_to @book
    else
      flash.now[:danger] = "Could not save book"
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])    
    if @book.update_attributes(book_params)
      flash[:success] = "Book Updated"
      redirect_to @book
    else
      flash.now[:danger] = "Could not update book"
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      flash[:success] = "Book Destroyed"
      redirect_to books_path
    else
      flash[:danger] = "Could not destroy book"
      redirect_to books_path
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :description, :genre, :year)
  end
end
