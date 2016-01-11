class ReceiptStatesController < ApplicationController
  before_action :set_receipt_state, only: [:show, :edit, :update, :destroy]

  # GET /receipt_states
  # GET /receipt_states.json
  def index
    @receipt_states = ReceiptState.all
  end

  # GET /receipt_states/1
  # GET /receipt_states/1.json
  def show
  end

  # GET /receipt_states/new
  def new
    @receipt_state = ReceiptState.new
  end

  # GET /receipt_states/1/edit
  def edit
  end

  # POST /receipt_states
  # POST /receipt_states.json
  def create
    @receipt_state = ReceiptState.new(receipt_state_params)

    respond_to do |format|
      if @receipt_state.save
        format.html { redirect_to @receipt_state, notice: 'Receipt state was successfully created.' }
        format.json { render :show, status: :created, location: @receipt_state }
      else
        format.html { render :new }
        format.json { render json: @receipt_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipt_states/1
  # PATCH/PUT /receipt_states/1.json
  def update
    respond_to do |format|
      if @receipt_state.update(receipt_state_params)
        format.html { redirect_to @receipt_state, notice: 'Receipt state was successfully updated.' }
        format.json { render :show, status: :ok, location: @receipt_state }
      else
        format.html { render :edit }
        format.json { render json: @receipt_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipt_states/1
  # DELETE /receipt_states/1.json
  def destroy
    @receipt_state.destroy
    respond_to do |format|
      format.html { redirect_to receipt_states_url, notice: 'Receipt state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipt_state
      @receipt_state = ReceiptState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receipt_state_params
      params.require(:receipt_state).permit(:nombre_stado)
    end
end
