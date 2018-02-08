class BooksController < ApplicationController
  def new
    @page_title="Add Book"
    @book = Book.new
    @author = Author.new
    @publisher = Publisher.new
    @category = Category.new
  end

  def create
    @book=Book.new(book_params)
    if @book.save
      flash[:notice]="Book Created"
      redirect_to books_path
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
  end

  def index
    @books=Book.all
  end

  def show
  end

  private

  def book_params
    params.require(:book).permit(:title,:category_id,:author_id,:publisher_id,:isb,:year,:price,:excerpt,:pages,:format,:buy, :coverpath)
  end

end
