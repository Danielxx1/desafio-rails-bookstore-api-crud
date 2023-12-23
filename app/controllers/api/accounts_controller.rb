class Api::AccountsController < ApplicationController
  before_action :set_account, only: %i[ show edit update destroy ]
  
  skip_before_action :verify_authenticity_token

  # GET /api/accounts or /api/accounts.json
  def index
    @accounts = Account.all
    render json: @accounts
  end

  # GET /api/accounts/1 or /api/accounts/1.json
  def show
    render json: @account
  end

  # GET /api/accounts/new
  def new
    @account = Account.new
  end

  # GET /api/accounts/1/edit
  def edit
  end

  # POST /api/accounts or /api/accounts.json
  def create
    @account = Account.new(account_params)

    if @account.save
      render json: @account
    else
      render json: @account.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/accounts/1 or /api/accounts/1.json
  def update
    if @account.update(account_params)
      render json: @account, status: :ok
    else
      render json: @account.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/accounts/1 or /api/accounts/1.json
  def destroy
    @account.destroy!

    render json: @account
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_params
      params.require(:account).permit(:number, :supplier_id)
    end
end
