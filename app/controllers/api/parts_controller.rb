class Api::PartsController < ApplicationController
  before_action :set_part, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /api/parts or /api/parts.json
  def index
    @parts = Part.all
    render json: @parts
  end

  # GET /api/parts/1 or /api/parts/1.json
  def show
    render json: @part
  end

  # GET /api/parts/new
  def new
    @part = Part.new
  end

  # GET /api/parts/1/edit
  def edit
  end

  # POST /api/parts or /api/parts.json
  def create
    @part = Part.new(part_params)
    if @part.save
      render json: @part, status: :created, location: @part
    else
      render json: @part.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/parts/1 or /api/parts/1.json
  def update
    if @part.update(part_params)
      render json: @part, status: :ok, location: @part
    else
      render json: @part.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/parts/1 or /api/parts/1.json
  def destroy
    @part.destroy!
    render json: @part
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_part
    @part = Part.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def part_params
    params.require(:part).permit(:name, :supplier_id)
  end
end