class GjuhasController < ApplicationController
  before_action :set_gjuha, only: [:show, :edit, :update, :destroy]

  # GET /gjuhas
  # GET /gjuhas.json
  def index
    @gjuhas = Gjuha.all
  end

  # GET /gjuhas/1
  # GET /gjuhas/1.json
  def show
  end

  # GET /gjuhas/new
  def new
    @gjuha = Gjuha.new
  end

  # GET /gjuhas/1/edit
  def edit
  end

  # POST /gjuhas
  # POST /gjuhas.json
  def create
    @gjuha = Gjuha.new(gjuha_params)

    respond_to do |format|
      if @gjuha.save
        format.html { redirect_to @gjuha, notice: 'Gjuha was successfully created.' }
        format.json { render :show, status: :created, location: @gjuha }
      else
        format.html { render :new }
        format.json { render json: @gjuha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gjuhas/1
  # PATCH/PUT /gjuhas/1.json
  def update
    respond_to do |format|
      if @gjuha.update(gjuha_params)
        format.html { redirect_to @gjuha, notice: 'Gjuha was successfully updated.' }
        format.json { render :show, status: :ok, location: @gjuha }
      else
        format.html { render :edit }
        format.json { render json: @gjuha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gjuhas/1
  # DELETE /gjuhas/1.json
  def destroy
    @gjuha.destroy
    respond_to do |format|
      format.html { redirect_to gjuhas_url, notice: 'Gjuha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gjuha
      @gjuha = Gjuha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gjuha_params
      params.require(:gjuha).permit(:description)
    end
end
