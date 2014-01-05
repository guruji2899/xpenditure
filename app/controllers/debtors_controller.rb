class DebtorsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_debtor, only: [:show, :edit, :update, :destroy]

  # GET /debtors
  # GET /debtors.json
  def index
    @debtors = current_user.debtors
  end

  # GET /debtors/1
  # GET /debtors/1.json
  def show
    @debts = @debtor.debts
  end

  # GET /debtors/new
  def new
    @debtor = Debtor.new
  end

  # GET /debtors/1/edit
  def edit
  end

  # POST /debtors
  # POST /debtors.json
  def create
    @debtor = Debtor.new(debtor_params)
    @debtor.user = current_user
    respond_to do |format|
      if @debtor.save
        format.html { redirect_to @debtor, notice: 'Debtor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @debtor }
      else
        format.html { render action: 'new' }
        format.json { render json: @debtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debtors/1
  # PATCH/PUT /debtors/1.json
  def update
    respond_to do |format|
      if @debtor.update(debtor_params)
        format.html { redirect_to @debtor, notice: 'Debtor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @debtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debtors/1
  # DELETE /debtors/1.json
  def destroy
    @debtor.destroy
    respond_to do |format|
      format.html { redirect_to debtors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debtor
      @debtor = current_user.debtors.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def debtor_params
      params.require(:debtor).permit(:name, :amount, :description, :date)
    end
end
