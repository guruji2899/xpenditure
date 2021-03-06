class IncomesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_income, only: [:show, :edit, :update, :destroy]

  # GET /incomes
  # GET /incomes.json
  def index
    @incomes = current_user.incomes
  end

  # GET /incomes/1
  # GET /incomes/1.json
  def show
  end

  # GET /incomes/new
  def new
    @income = Income.new
  end

  # GET /incomes/1/edit
  def edit
  end

  # POST /incomes
  # POST /incomes.json
  def create
    @income = Income.new(income_params)
    @income.user = current_user
    respond_to do |format|
      if @income.save
        format.html { redirect_to @income, notice: 'Income was successfully created.' }
        format.json { render action: 'show', status: :created, location: @income }
      else
        format.html { render action: 'new' }
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incomes/1
  # PATCH/PUT /incomes/1.json
  def update
    respond_to do |format|
      if @income.update(income_params)
        format.html { redirect_to @income, notice: 'Income was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incomes/1
  # DELETE /incomes/1.json
  def destroy
    @income.destroy
    respond_to do |format|
      format.html { redirect_to incomes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income
      @income = current_user.incomes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def income_params
      params.require(:income).permit(:date, :amount, :description)
    end
end
