class MedicalStaffSpecialitiesController < ApplicationController
  before_action :set_medical_staff_speciality, only: [:show, :edit, :update, :destroy]

  # GET /medical_staff_specialities
  # GET /medical_staff_specialities.json
  def index
    @medical_staff_specialities = MedicalStaffSpeciality.all
  end

  # GET /medical_staff_specialities/1
  # GET /medical_staff_specialities/1.json
  def show
  end

  # GET /medical_staff_specialities/new
  def new
    @medical_staff_speciality = MedicalStaffSpeciality.new
  end

  # GET /medical_staff_specialities/1/edit
  def edit
  end

  # POST /medical_staff_specialities
  # POST /medical_staff_specialities.json
  def create
    @medical_staff_speciality = MedicalStaffSpeciality.new(medical_staff_speciality_params)

    respond_to do |format|
      if @medical_staff_speciality.save
        format.html { redirect_to @medical_staff_speciality, notice: 'Medical staff speciality was successfully created.' }
        format.json { render :show, status: :created, location: @medical_staff_speciality }
      else
        format.html { render :new }
        format.json { render json: @medical_staff_speciality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_staff_specialities/1
  # PATCH/PUT /medical_staff_specialities/1.json
  def update
    respond_to do |format|
      if @medical_staff_speciality.update(medical_staff_speciality_params)
        format.html { redirect_to @medical_staff_speciality, notice: 'Medical staff speciality was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_staff_speciality }
      else
        format.html { render :edit }
        format.json { render json: @medical_staff_speciality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_staff_specialities/1
  # DELETE /medical_staff_specialities/1.json
  def destroy
    @medical_staff_speciality.destroy
    respond_to do |format|
      format.html { redirect_to medical_staff_specialities_url, notice: 'Medical staff speciality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_staff_speciality
      @medical_staff_speciality = MedicalStaffSpeciality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_staff_speciality_params
      params.require(:medical_staff_speciality).permit(:speciality_id, :medical_staff_id)
    end
end
