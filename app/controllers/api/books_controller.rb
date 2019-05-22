class Api::BooksController < ApplicationController

  def index
    @books = Book.all
    render 'index.json.jbuilder'
  end

  def show
    @book = Book.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @book = Book.new(
        title: params[:title], 
        author_id: params[:author_id], 
        year: params[:year], 
        publisher: params[:publisher])
    
    if @book.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @book.errors.full_messages}, status: 422
    end
  end

  def update
    @book = Book.find(params[:id])

    @book.title = params[:title] || @book.title
    @book.year = params[:year] || @book.year
    @book.publisher = params[:publisher] || @book.publisher
    @book.author_id = params[:author_id] || @book.author_id

    if @book.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @book.errors.full_messages}, status: 422
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    render json: {message: "Destroyed"}
  end
end
