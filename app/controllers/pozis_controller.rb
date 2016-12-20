class PozisController < ApplicationController
  	before_action :authenticate_user!
  before_action :set_pozi, only: [:show, :edit, :update, :destroy]

  # GET /pozis
  # GET /pozis.json
  def index
    ab(params[:lan])
    @pozis = Pozi.all
  end

  # GET /pozis/1
  # GET /pozis/1.json
  def show

  end

  # GET /pozis/new
  def new
    @pozi = Pozi.new
  end

  # GET /pozis/1/edit
  def edit
  end

  # POST /pozis
  # POST /pozis.json
  def create
    @pozi = Pozi.new(pozi_params)

    respond_to do |format|
      if @pozi.save
        format.html { redirect_to pozis_path, notice: 'Pozi was successfully created.' }
        format.json { render :show, status: :created, location: @pozi }
      else
        format.html { render :new }
        format.json { render json: @pozi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pozis/1
  # PATCH/PUT /pozis/1.json
  def update
    respond_to do |format|
      if @pozi.update(pozi_params)
        format.html { redirect_to pozis_path, notice: 'Pozi was successfully updated.' }
        format.json { render :show, status: :ok, location: @pozi }
      else
        format.html { render :edit }
        format.json { render json: @pozi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pozis/1
  # DELETE /pozis/1.json
  def destroy
    @pozi.destroy
    respond_to do |format|
      format.html { redirect_to pozis_url, notice: 'Pozi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pozi
      @pozi = Pozi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pozi_params
      params.require(:pozi).permit(:description, :job_description, :skills, :about_compnay, :kodi)
    end
end
