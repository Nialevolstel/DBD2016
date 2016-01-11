class ArticleClasificationsController < ApplicationController
  before_action :set_article_clasification, only: [:show, :edit, :update, :destroy]

  # GET /article_clasifications
  # GET /article_clasifications.json
  def index
    @article_clasifications = ArticleClasification.all
  end

  # GET /article_clasifications/1
  # GET /article_clasifications/1.json
  def show
  end

  # GET /article_clasifications/new
  def new
    @article_clasification = ArticleClasification.new
  end

  # GET /article_clasifications/1/edit
  def edit
  end

  # POST /article_clasifications
  # POST /article_clasifications.json
  def create
    @article_clasification = ArticleClasification.new(article_clasification_params)

    respond_to do |format|
      if @article_clasification.save
        format.html { redirect_to @article_clasification, notice: 'Article clasification was successfully created.' }
        format.json { render :show, status: :created, location: @article_clasification }
      else
        format.html { render :new }
        format.json { render json: @article_clasification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_clasifications/1
  # PATCH/PUT /article_clasifications/1.json
  def update
    respond_to do |format|
      if @article_clasification.update(article_clasification_params)
        format.html { redirect_to @article_clasification, notice: 'Article clasification was successfully updated.' }
        format.json { render :show, status: :ok, location: @article_clasification }
      else
        format.html { render :edit }
        format.json { render json: @article_clasification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_clasifications/1
  # DELETE /article_clasifications/1.json
  def destroy
    @article_clasification.destroy
    respond_to do |format|
      format.html { redirect_to article_clasifications_url, notice: 'Article clasification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_clasification
      @article_clasification = ArticleClasification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_clasification_params
      params.require(:article_clasification).permit(:nombre_clasificacion)
    end
end
