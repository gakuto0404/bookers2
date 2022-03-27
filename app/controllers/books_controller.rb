class BooksController < ApplicationController
  def new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @book = Book.new
  end

  def show
  end

  def edit
  end
  
  
  private

  def book_params
    params.require(:book).permit(:shop_name, :image, :caption) # 後ろの(の中)がわからない 2022/3/27 23:55
  end
end
