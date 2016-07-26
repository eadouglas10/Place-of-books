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

  private def book_params
    params["book"]
    params.require("book").permit!
  end

  def edit
    @book = Book.find(params["id"])
    @book.update(ISBN: params["book"]["ISBN"].to_i, description: params["book"]["description"])
    redirect_to "/books/#{@book.id}"
  end

end
