class PunetorisController < ApplicationController
  before_action :authenticate_user!
  before_action :set_punetori, only: [:show, :edit, :update, :destroy]

  # GET /punetoris
  # GET /punetoris.json
  def index
     @formulari = Formulari.all
    ab(params[:lan])
      @search = Punetori.search(params[:q])
      @punetoris = @search.result
      @search.build_condition if @search.conditions.empty?
      @search.build_sort if @search.sorts.empty?
      respond_to do |format|
      format.html
      format.csv { send_data @formularis.to_csv }
      format.xls
      end
  end

  # GET /punetoris/1
  # GET /punetoris/1.json
  def show
    @status = Status.all
    @pozi = Pozi.all
    @qytetets= Qytetet.all
    @gjuhas=Gjuha.all
    @pcs=Pc.all
    @formulari = Formulari.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf=OrderPdf.new(@formulari)
        send_data pdf.render,
        filename: "", type: "application/pdf", desposition: "inline"
      end
    end
  end

  # GET /punetoris/new
  def new
    @punetori = Punetori.new
  end

  # GET /punetoris/1/edit
  def edit
  end

  # POST /punetoris
  # POST /punetoris.json
  def create
    @punetori = Punetori.new(punetori_params)

    respond_to do |format|
      if @punetori.save
        format.html { redirect_to punetoris_path, notice: 'Punetori u krijua me sukses' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /punetoris/1
  # PATCH/PUT /punetoris/1.json
  def update
    respond_to do |format|
      if @punetori.update(punetori_params)
        format.html { redirect_to punetoris_path, notice: 'Punetori u editua me sukses.' }
        format.json { render :show, status: :ok, location: @punetori }
      else
        format.html { render :edit }
        format.json { render json: @punetori.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punetoris/1
  # DELETE /punetoris/1.json
  def destroy
    @punetori.destroy
    respond_to do |format|
      format.html { redirect_to punetoris_url, notice: 'Punetori u fshi me sukses.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punetori
      @punetori = Punetori.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def punetori_params
      params.require(:punetori).permit(:emri, :mbiemri, :email, :referenca, :statusi_kontrates)
    end
end
