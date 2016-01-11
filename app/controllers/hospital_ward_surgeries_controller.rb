class HospitalWardSurgeriesController < ApplicationController
  before_action :set_hospital_ward_surgery, only: [:show, :edit, :update, :destroy]

  # GET /hospital_ward_surgeries
  # GET /hospital_ward_surgeries.json
  def index
    @hospital_ward_surgeries = HospitalWardSurgery.all
  end

  # GET /hospital_ward_surgeries/1
  # GET /hospital_ward_surgeries/1.json
  def show
  end

  # GET /hospital_ward_surgeries/new
  def new
    @hospital_ward_surgery = HospitalWardSurgery.new
  end

  # GET /hospital_ward_surgeries/1/edit
  def edit
  end

  # POST /hospital_ward_surgeries
  # POST /hospital_ward_surgeries.json
  def create
    @hospital_ward_surgery = HospitalWardSurgery.new(hospital_ward_surgery_params)

    respond_to do |format|
      if @hospital_ward_surgery.save
        format.html { redirect_to @hospital_ward_surgery, notice: 'Hospital ward surgery was successfully created.' }
        format.json { render :show, status: :created, location: @hospital_ward_surgery }
      else
        format.html { render :new }
        format.json { render json: @hospital_ward_surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospital_ward_surgeries/1
  # PATCH/PUT /hospital_ward_surgeries/1.json
  def update
    respond_to do |format|
      if @hospital_ward_surgery.update(hospital_ward_surgery_params)
        format.html { redirect_to @hospital_ward_surgery, notice: 'Hospital ward surgery was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospital_ward_surgery }
      else
        format.html { render :edit }
        format.json { render json: @hospital_ward_surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospital_ward_surgeries/1
  # DELETE /hospital_ward_surgeries/1.json
  def destroy
    @hospital_ward_surgery.destroy
    respond_to do |format|
      format.html { redirect_to hospital_ward_surgeries_url, notice: 'Hospital ward surgery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital_ward_surgery
      @hospital_ward_surgery = HospitalWardSurgery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospital_ward_surgery_params
      params.require(:hospital_ward_surgery).permit(:hospital_ward_id, :surgery_id, :fecha_inicio, :hora_inicio, :fecha_fin, :hora_fin)
    end
end
