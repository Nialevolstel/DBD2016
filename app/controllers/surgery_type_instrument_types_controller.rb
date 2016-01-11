class SurgeryTypeInstrumentTypesController < ApplicationController
  before_action :set_surgery_type_instrument_type, only: [:show, :edit, :update, :destroy]

  # GET /surgery_type_instrument_types
  # GET /surgery_type_instrument_types.json
  def index
    @surgery_type_instrument_types = SurgeryTypeInstrumentType.all
  end

  # GET /surgery_type_instrument_types/1
  # GET /surgery_type_instrument_types/1.json
  def show
  end

  # GET /surgery_type_instrument_types/new
  def new
    @surgery_type_instrument_type = SurgeryTypeInstrumentType.new
  end

  # GET /surgery_type_instrument_types/1/edit
  def edit
  end

  # POST /surgery_type_instrument_types
  # POST /surgery_type_instrument_types.json
  def create
    @surgery_type_instrument_type = SurgeryTypeInstrumentType.new(surgery_type_instrument_type_params)

    respond_to do |format|
      if @surgery_type_instrument_type.save
        format.html { redirect_to @surgery_type_instrument_type, notice: 'Surgery type instrument type was successfully created.' }
        format.json { render :show, status: :created, location: @surgery_type_instrument_type }
      else
        format.html { render :new }
        format.json { render json: @surgery_type_instrument_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surgery_type_instrument_types/1
  # PATCH/PUT /surgery_type_instrument_types/1.json
  def update
    respond_to do |format|
      if @surgery_type_instrument_type.update(surgery_type_instrument_type_params)
        format.html { redirect_to @surgery_type_instrument_type, notice: 'Surgery type instrument type was successfully updated.' }
        format.json { render :show, status: :ok, location: @surgery_type_instrument_type }
      else
        format.html { render :edit }
        format.json { render json: @surgery_type_instrument_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgery_type_instrument_types/1
  # DELETE /surgery_type_instrument_types/1.json
  def destroy
    @surgery_type_instrument_type.destroy
    respond_to do |format|
      format.html { redirect_to surgery_type_instrument_types_url, notice: 'Surgery type instrument type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgery_type_instrument_type
      @surgery_type_instrument_type = SurgeryTypeInstrumentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surgery_type_instrument_type_params
      params.require(:surgery_type_instrument_type).permit(:surgery_type_id, :instrument_type_id)
    end
end
