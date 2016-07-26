class BooksController < ApplicationController
  def index
  @books = Book.all

  render :index
end

def show
  @book = Book.find(params["id"])

  render :show
end

def create
  @book = Book.create(book_params)

  redirect_to "/books/#{@book.id}"
end
end
