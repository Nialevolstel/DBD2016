class HospitalWardsController < ApplicationController
  before_action :set_hospital_ward, only: [:show, :edit, :update, :destroy]

  # GET /hospital_wards
  # GET /hospital_wards.json
  def index
    @hospital_wards = HospitalWard.all
  end

  # GET /hospital_wards/1
  # GET /hospital_wards/1.json
  def show
  end

  # GET /hospital_wards/new
  def new
    @hospital_ward = HospitalWard.new
  end

  # GET /hospital_wards/1/edit
  def edit
  end

  # POST /hospital_wards
  # POST /hospital_wards.json
  def create
    @hospital_ward = HospitalWard.new(hospital_ward_params)

    respond_to do |format|
      if @hospital_ward.save
        format.html { redirect_to @hospital_ward, notice: 'Hospital ward was successfully created.' }
        format.json { render :show, status: :created, location: @hospital_ward }
      else
        format.html { render :new }
        format.json { render json: @hospital_ward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospital_wards/1
  # PATCH/PUT /hospital_wards/1.json
  def update
    respond_to do |format|
      if @hospital_ward.update(hospital_ward_params)
        format.html { redirect_to @hospital_ward, notice: 'Hospital ward was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospital_ward }
      else
        format.html { render :edit }
        format.json { render json: @hospital_ward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospital_wards/1
  # DELETE /hospital_wards/1.json
  def destroy
    @hospital_ward.destroy
    respond_to do |format|
      format.html { redirect_to hospital_wards_url, notice: 'Hospital ward was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital_ward
      @hospital_ward = HospitalWard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospital_ward_params
      params.require(:hospital_ward).permit(:numero_sala)
    end
end
