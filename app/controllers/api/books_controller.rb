class Api::BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]
  
  skip_before_action :verify_authenticity_token

  # GET /api/books or /api/books.json
  def index
      @books = Book.all
      render json: @books
  end
  
    # GET /api/authors/1 or /api/authors/1.json
    def show   
      render json: @book
    end
  
    # GET /api/authors/new
    def new
      @book = Book.new
    end
  
    # GET /api/authors/1/edit
    def edit
    end
  
    # POST /api/authors or /api/authors.json
    def create 
      @book = Book.new(book_params)
        
      if @book.save
        render json: @book
      else
        render json: @book.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /api/authors/1 or /api/authors/1.json
    def update
      if @book.update(book_params)
        render json: @book
      else
        render json: @book.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /api/authors/1 or /api/authors/1.json
    def destroy
      @book.destroy!
      render json: @book
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_book
        @book = Book.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def book_params
        params.require(:book).permit(:title, :author_id)
      end
      
  
  

    # Only allow a list of trusted parameter
