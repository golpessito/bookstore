class BooksController < ApplicationController
  def new
    @page_title="Add Book"
    @book = Book.new
    @author = Author.new
    @publisher = Publisher.new
    @category = Category.new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end
end
