class KontrataController < ApplicationController
  before_action :set_kontratum, only: [:show, :edit, :update, :destroy]

  # GET /kontrata
  # GET /kontrata.json
  def index
    @kontrata = Kontratum.all
    kont7 = kontrata_deri - 7
    if(kontrata_deri > kont7 || kontrata_deri == kont7)
      KontratumMailer.notifikimi_per_kontrata(kontratum)
    end
  end

  # GET /kontrata/1
  # GET /kontrata/1.json
  def show
    @kontrata = Kontratum.find(params[:id])
   respond_to do |format|
    format.html # show.html.erb
    format.xml { render :xml => @kontrata }
    format.msword { render :msword => @kontrata }
    format.pdf do
        render :pdf => 'Coming soon...', :layout => false
    end
  end
  end
  # GET /kontrata/new
  def new
    @punetori = Punetori.all
    @kontratum = Kontratum.new
    @formulari = Formulari.find(params[:kontrata_id])
    @status = Status.all
    @pozi = Pozi.all
    @qytetets= Qytetet.all
    @gjuhas=Gjuha.all
    @pcs=Pc.all
  end

  # GET /kontrata/1/edit
  def edit
  end

  # POST /kontrata
  # POST /kontrata.json
  def create
    @kontratum = Kontratum.new(kontratum_params)
    respond_to do |format|
      if @kontratum.save
        @punt = Punetori.find(@kontratum.punetori_id)
        @punt.update(:statusi_kontrates => true)
        #@kontratum.update(:vk => 1)
        #@kontratum.update(:punetori_id => @formulari.id)
        format.html { redirect_to @kontratum, notice: 'Kontratum was successfully created.' }
        format.json { render :show, status: :created, location: @kontratum }
      else
        format.html { render :new }
        format.json { render json: @kontratum.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /kontrata/1
  # PATCH/PUT /kontrata/1.json
  def update
    respond_to do |format|
      if @kontratum.update(kontratum_params)
        format.html { redirect_to @kontratum, notice: 'Kontratum was successfully updated.' }
        format.json { render :show, status: :ok, location: @kontratum }
      else
        format.html { render :edit }
        format.json { render json: @kontratum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kontrata/1
  # DELETE /kontrata/1.json
  def destroy
    @kontratum.destroy
    @punt = Punetori.find(@kontratum.punetori.id)
    @punt.update(:statusi_kontrates => false)
    respond_to do |format|
      format.html { redirect_to kontrata_url, notice: 'Kontratum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kontratum
      @kontratum = Kontratum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kontratum_params
      params.require(:kontratum).permit(:formulari_id, :punetori_id, :biznesi, :nr_biznesit, :emri, :emri_prindit, :mbiemri, :vendlindja, :ditelindja, :adresa, :qyteti, :shteti, :leternjoftimi, :pozita, :kontrata_prej, :kontrata_deri, :orari_jave, :java_ditet, :orari_from, :email, :orari_to, :pauza, :pushimi_vjetore, :paga_kontrata, :paga_text, :data_nenshkrimit)
    end
end
