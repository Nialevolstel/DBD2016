class MedicalStaffsController < ApplicationController
  before_action :set_medical_staff, only: [:show, :edit, :update, :destroy]

  # GET /medical_staffs
  # GET /medical_staffs.json
  def index
    @medical_staffs = MedicalStaff.all
  end

  # GET /medical_staffs/1
  # GET /medical_staffs/1.json
  def show
  end

  # GET /medical_staffs/new
  def new
    @medical_staff = MedicalStaff.new
  end

  # GET /medical_staffs/1/edit
  def edit
  end

  # POST /medical_staffs
  # POST /medical_staffs.json
  def create
    @medical_staff = MedicalStaff.new(medical_staff_params)

    respond_to do |format|
      if @medical_staff.save
        format.html { redirect_to @medical_staff, notice: 'Medical staff was successfully created.' }
        format.json { render :show, status: :created, location: @medical_staff }
      else
        format.html { render :new }
        format.json { render json: @medical_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_staffs/1
  # PATCH/PUT /medical_staffs/1.json
  def update
    respond_to do |format|
      if @medical_staff.update(medical_staff_params)
        format.html { redirect_to @medical_staff, notice: 'Medical staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_staff }
      else
        format.html { render :edit }
        format.json { render json: @medical_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_staffs/1
  # DELETE /medical_staffs/1.json
  def destroy
    @medical_staff.destroy
    respond_to do |format|
      format.html { redirect_to medical_staffs_url, notice: 'Medical staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_staff
      @medical_staff = MedicalStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_staff_params
      params.require(:medical_staff).permit(:rut_personal_medico, :primer_nombre, :segundo_nombre, :apellido_paterno, :apellido_materno, :sexo, :telefono_fijo, :telefono_movil)
    end
end
