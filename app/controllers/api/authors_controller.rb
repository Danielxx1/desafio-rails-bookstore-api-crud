class Api::AuthorsController < ApplicationController
  before_action :set_api_author, only: %i[ show edit update destroy ]
  
  skip_before_action :verify_authenticity_token

  # GET /api/authors or /api/authors.json
  def index
    @authors = Author.all
    render json: @authors
  end

  # GET /api/authors/1 or /api/authors/1.json
  def show   
    render json: @author
  end

  # GET /api/authors/new
  def new
    @author = Author.new
  end

  # GET /api/authors/1/edit
  def edit
  end

  # POST /api/authors or /api/authors.json
  def create 
    @author = Author.new(author_params)
      
    if @author.save
      render json: @author
    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/authors/1 or /api/authors/1.json
    def update
      if @author.update(author_params)
        render json: @author, status: :ok
      else
        render json: @author.errors, status: :unprocessable_entity
      end
    end

  # DELETE /api/authors/1 or /api/authors/1.json
  def destroy
    @author.destroy

    render json: @author
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_author
      @author = Author.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def author_params
      params.require(:author).permit(:name,  :id)
    end
end
