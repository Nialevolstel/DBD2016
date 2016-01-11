class SurgeryStatesController < ApplicationController
  before_action :set_surgery_state, only: [:show, :edit, :update, :destroy]

  # GET /surgery_states
  # GET /surgery_states.json
  def index
    @surgery_states = SurgeryState.all
  end

  # GET /surgery_states/1
  # GET /surgery_states/1.json
  def show
  end

  # GET /surgery_states/new
  def new
    @surgery_state = SurgeryState.new
  end

  # GET /surgery_states/1/edit
  def edit
  end

  # POST /surgery_states
  # POST /surgery_states.json
  def create
    @surgery_state = SurgeryState.new(surgery_state_params)

    respond_to do |format|
      if @surgery_state.save
        format.html { redirect_to @surgery_state, notice: 'Surgery state was successfully created.' }
        format.json { render :show, status: :created, location: @surgery_state }
      else
        format.html { render :new }
        format.json { render json: @surgery_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surgery_states/1
  # PATCH/PUT /surgery_states/1.json
  def update
    respond_to do |format|
      if @surgery_state.update(surgery_state_params)
        format.html { redirect_to @surgery_state, notice: 'Surgery state was successfully updated.' }
        format.json { render :show, status: :ok, location: @surgery_state }
      else
        format.html { render :edit }
        format.json { render json: @surgery_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgery_states/1
  # DELETE /surgery_states/1.json
  def destroy
    @surgery_state.destroy
    respond_to do |format|
      format.html { redirect_to surgery_states_url, notice: 'Surgery state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgery_state
      @surgery_state = SurgeryState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surgery_state_params
      params.require(:surgery_state).permit(:nombre_estado)
    end
end
