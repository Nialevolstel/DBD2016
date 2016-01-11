class InstrumentTypesController < ApplicationController
  before_action :set_instrument_type, only: [:show, :edit, :update, :destroy]

  # GET /instrument_types
  # GET /instrument_types.json
  def index
    @instrument_types = InstrumentType.all
  end

  # GET /instrument_types/1
  # GET /instrument_types/1.json
  def show
  end

  # GET /instrument_types/new
  def new
    @instrument_type = InstrumentType.new
  end

  # GET /instrument_types/1/edit
  def edit
  end

  # POST /instrument_types
  # POST /instrument_types.json
  def create
    @instrument_type = InstrumentType.new(instrument_type_params)

    respond_to do |format|
      if @instrument_type.save
        format.html { redirect_to @instrument_type, notice: 'Instrument type was successfully created.' }
        format.json { render :show, status: :created, location: @instrument_type }
      else
        format.html { render :new }
        format.json { render json: @instrument_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instrument_types/1
  # PATCH/PUT /instrument_types/1.json
  def update
    respond_to do |format|
      if @instrument_type.update(instrument_type_params)
        format.html { redirect_to @instrument_type, notice: 'Instrument type was successfully updated.' }
        format.json { render :show, status: :ok, location: @instrument_type }
      else
        format.html { render :edit }
        format.json { render json: @instrument_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instrument_types/1
  # DELETE /instrument_types/1.json
  def destroy
    @instrument_type.destroy
    respond_to do |format|
      format.html { redirect_to instrument_types_url, notice: 'Instrument type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument_type
      @instrument_type = InstrumentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instrument_type_params
      params.require(:instrument_type).permit(:article_clasification_id, :nombre_instrumentaria, :descripcion_instrumentaria, :precio_por_hora)
    end
end
