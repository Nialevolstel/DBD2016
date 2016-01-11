class MedicalTeamsController < ApplicationController
  before_action :set_medical_team, only: [:show, :edit, :update, :destroy]

  # GET /medical_teams
  # GET /medical_teams.json
  def index
    @medical_teams = MedicalTeam.all
  end

  # GET /medical_teams/1
  # GET /medical_teams/1.json
  def show
  end

  # GET /medical_teams/new
  def new
    @medical_team = MedicalTeam.new
  end

  # GET /medical_teams/1/edit
  def edit
  end

  # POST /medical_teams
  # POST /medical_teams.json
  def create
    @medical_team = MedicalTeam.new(medical_team_params)

    respond_to do |format|
      if @medical_team.save
        format.html { redirect_to @medical_team, notice: 'Medical team was successfully created.' }
        format.json { render :show, status: :created, location: @medical_team }
      else
        format.html { render :new }
        format.json { render json: @medical_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_teams/1
  # PATCH/PUT /medical_teams/1.json
  def update
    respond_to do |format|
      if @medical_team.update(medical_team_params)
        format.html { redirect_to @medical_team, notice: 'Medical team was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_team }
      else
        format.html { render :edit }
        format.json { render json: @medical_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_teams/1
  # DELETE /medical_teams/1.json
  def destroy
    @medical_team.destroy
    respond_to do |format|
      format.html { redirect_to medical_teams_url, notice: 'Medical team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_team
      @medical_team = MedicalTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_team_params
      params.require(:medical_team).permit(:es_valido)
    end
end
