class SurgerySuppliesController < ApplicationController
  before_action :set_surgery_supply, only: [:show, :edit, :update, :destroy]

  # GET /surgery_supplies
  # GET /surgery_supplies.json
  def index
    @surgery_supplies = SurgerySupply.all
  end

  # GET /surgery_supplies/1
  # GET /surgery_supplies/1.json
  def show
  end

  # GET /surgery_supplies/new
  def new
    @surgery_supply = SurgerySupply.new
  end

  # GET /surgery_supplies/1/edit
  def edit
  end

  # POST /surgery_supplies
  # POST /surgery_supplies.json
  def create
    @surgery_supply = SurgerySupply.new(surgery_supply_params)

    respond_to do |format|
      if @surgery_supply.save
        format.html { redirect_to @surgery_supply, notice: 'Surgery supply was successfully created.' }
        format.json { render :show, status: :created, location: @surgery_supply }
      else
        format.html { render :new }
        format.json { render json: @surgery_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surgery_supplies/1
  # PATCH/PUT /surgery_supplies/1.json
  def update
    respond_to do |format|
      if @surgery_supply.update(surgery_supply_params)
        format.html { redirect_to @surgery_supply, notice: 'Surgery supply was successfully updated.' }
        format.json { render :show, status: :ok, location: @surgery_supply }
      else
        format.html { render :edit }
        format.json { render json: @surgery_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgery_supplies/1
  # DELETE /surgery_supplies/1.json
  def destroy
    @surgery_supply.destroy
    respond_to do |format|
      format.html { redirect_to surgery_supplies_url, notice: 'Surgery supply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgery_supply
      @surgery_supply = SurgerySupply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surgery_supply_params
      params.require(:surgery_supply).permit(:surgery_id, :supply_id, :cantidad_utilizada)
    end
end
