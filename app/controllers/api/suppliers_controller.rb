class Api::SuppliersController < ApplicationController
  before_action :set_api_supplier, only: %i[ show edit update destroy ]

  skip_before_action :verify_authenticity_token


  # GET /api/suppliers or /api/suppliers.json
  def index
    @api_suppliers = Supplier.all
  end

  # GET /api/suppliers/1 or /api/suppliers/1.json
  def show
    render json: @supplier
  end

  # GET /api/suppliers/new
  def new
    @supplier = Supplier.new
  end

  # GET /api/suppliers/1/edit
  def edit
  end

  # POST /api/suppliers or /api/suppliers.json
  def create
    @supplier = Supplier.new(supplier_params)

      if @supplier.save
        render json: @supplier, status: :created, location: @supplier
      else
        render json: @supplier.errors, status: :unprocessable_entity 
      end
    end
  end

  # PATCH/PUT /api/suppliers/1 or /api/suppliers/1.json
  def update
      if @supplier.update(supplier_params)
        render json: @supplier, status: :ok
      else
        render json: @supplier.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /api/suppliers/1 or /api/suppliers/1.json
  def destroy
    @supplier.destroy!

      render json: @supplier
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_supplier
      @supplier = Supplier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_supplier_params
      params.require(:supplier).permit(:name)
    end
end
