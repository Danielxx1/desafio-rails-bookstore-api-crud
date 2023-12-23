class Api::AssembliesController < ApplicationController
  before_action :set_api_assembly, only: %i[ show edit update destroy ]

  skip_before_action :verify_authenticity_token


  # GET /api/assemblies or /api/assemblies.json
  def index
    @assemblies = Assembly.all
    render json: @assemblies
  end


  # GET /api/assemblies/1 or /api/assemblies/1.json
  def show
    render json: @assembly
  end

  # GET /api/assemblies/new
  def new
    @assembly = Assembly.new
  end

  # GET /api/assemblies/1/edit
  def edit
    
  end

  # POST /api/assemblies or /api/assemblies.json
  def create
      @assembly = Assembly.new(assembly_params)

      if @assembly.save
        render json: @assembly, status: :created, location: @assembly
      else
        render json: @assembly.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /api/assemblies/1 or /api/assemblies/1.json
  def update
      if @assembly.update(assembly_params)
        render json: @assembly, status: :ok
      else
       render json: @assembly.errors, status: :unprocessable_entity 
      end
  end

  # DELETE /api/assemblies/1 or /api/assemblies/1.json
  def destroy
    @assembly.destroy!
      render json: @assembly 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_assembly
      @assembly = Assembly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_assembly_params
      params.require(:assembly).permit(:name, :part_id, :book_id)
    end
