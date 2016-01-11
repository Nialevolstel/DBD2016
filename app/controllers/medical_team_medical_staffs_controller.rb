class MedicalTeamMedicalStaffsController < ApplicationController
  before_action :set_medical_team_medical_staff, only: [:show, :edit, :update, :destroy]

  # GET /medical_team_medical_staffs
  # GET /medical_team_medical_staffs.json
  def index
    @medical_team_medical_staffs = MedicalTeamMedicalStaff.all
  end

  # GET /medical_team_medical_staffs/1
  # GET /medical_team_medical_staffs/1.json
  def show
  end

  # GET /medical_team_medical_staffs/new
  def new
    @medical_team_medical_staff = MedicalTeamMedicalStaff.new
  end

  # GET /medical_team_medical_staffs/1/edit
  def edit
  end

  # POST /medical_team_medical_staffs
  # POST /medical_team_medical_staffs.json
  def create
    @medical_team_medical_staff = MedicalTeamMedicalStaff.new(medical_team_medical_staff_params)

    respond_to do |format|
      if @medical_team_medical_staff.save
        format.html { redirect_to @medical_team_medical_staff, notice: 'Medical team medical staff was successfully created.' }
        format.json { render :show, status: :created, location: @medical_team_medical_staff }
      else
        format.html { render :new }
        format.json { render json: @medical_team_medical_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_team_medical_staffs/1
  # PATCH/PUT /medical_team_medical_staffs/1.json
  def update
    respond_to do |format|
      if @medical_team_medical_staff.update(medical_team_medical_staff_params)
        format.html { redirect_to @medical_team_medical_staff, notice: 'Medical team medical staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_team_medical_staff }
      else
        format.html { render :edit }
        format.json { render json: @medical_team_medical_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_team_medical_staffs/1
  # DELETE /medical_team_medical_staffs/1.json
  def destroy
    @medical_team_medical_staff.destroy
    respond_to do |format|
      format.html { redirect_to medical_team_medical_staffs_url, notice: 'Medical team medical staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_team_medical_staff
      @medical_team_medical_staff = MedicalTeamMedicalStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_team_medical_staff_params
      params.require(:medical_team_medical_staff).permit(:medical_team_id, :medical_staff_id, :speciality_id)
    end
end
