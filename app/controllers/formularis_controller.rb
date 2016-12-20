class FormularisController < ApplicationController
  before_action :authenticate_user!
  before_action :set_formulari, only: [:show, :edit, :update, :destroy]

  # GET /formularis
  # GET /formularis.json
  def index
    @forms = Formulari.all
    ab(params[:lan])
    @pcs = Pc.all
    @gjuhas = Gjuha.all
    @status = Status.all
    @qytetets = Qytetet.all
    @pozi = Pozi.all
    @search = Formulari.search(params[:q])
    @formularis = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
        respond_to do |format|
        format.html
        format.csv { send_data @formularis.to_csv }
        format.xls
    end
  end

  # GET /formularis/1
  # GET /formularis/1.json
  def show
    @pcs = Pc.all
    @gjuhas = Gjuha.all
    @qytetets = Qytetet.all
    @pozi = Pozi.all
    @formularis= Formulari.find(params[:id])
    @status = Status.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf=OrderPdf.new(@formularis)
        send_data pdf.render,
        filename: "", type: "application/pdf", desposition: "inline"
      end
    end
  end

  # GET /formularis/new
  def new
    @formulari = Formulari.new
  end

  # GET /formularis/1/edit
  def edit
    @pcs = Pc.all
    @gjuhas = Gjuha.all
    @qytetets = Qytetet.all
    @pozi = Pozi.all
    @formularis = Formulari.find(params[:id])
  end

  # POST /formularis
  # POST /formularis.json
def create

    @user = current_user
    @formulari = Formulari.all
    subject = "Aplikim per pune nga #{current_user.email}"
    body = ""

@formulari = @user.formularis.new(formulari_params)
    @formulari = Formulari.new(formulari_params)
    body = "<html><head> <meta content=\"text/html; charset=UTF-8\" http-equiv=\"Content-Type\" /></head><body><p style=\"color:#3BAB57; font-size:20px;\">Informatat Personale</p>"
    body = body + "<p style=\"font-weight: bold;\">Emri: #{@formulari.emri}</p>"
    body = body + "<p style=\"font-weight: bold;\">Mbiemri: #{@formulari.mbiemri}</p>"
    body = body + "<p style=\"font-weight: bold;\">Ditelindja: #{@formulari.ditelindja}</p>"
    body = body +"<p style=\"font-weight: bold;\">Vendlindja: #{@formulari.vendlindja}</p>"
    body = body + "<p style=\"font-weight: bold;\">Nacionaliteti: #{@formulari.nacionaliteti}</p>"
    body = body + "<p style=\"font-weight: bold;\">Leternjoftimi: #{@formulari.leternjoftimi}</p>"
    body = body + "<p style=\"font-weight: bold;\">Tel: #{@formulari.tel}</p>"
    body = body + "<p style=\"font-weight: bold;\">Email: #{@formulari.email}</p>"
    body = body + "<p style=\"color:#3BAB57; font-size:20px;\">Informatat per edukim</p>"
    body = body + "<p style=\"font-weight: bold;\">Edukimi from: #{@formulari.edukimi_from}</p>"
    body = body + "<p style=\"font-weight: bold;\">Edukimi to: #{@formulari.edukimi_to}</p>"
    body = body + "<p style=\"font-weight: bold;\">Edukimi institucioni: #{@formulari.edukimi_institucioni}</p>"
    body = body + "<p style=\"font-weight: bold;\">Edukimi drejtimi: #{@formulari.edukimi_drejtimi}</p>"
    body = body + "<p style=\"font-weight: bold;\">Edukimi titulli: #{@formulari.edukimi_titulli}</p>"
    body = body + "<p style=\"color:#3BAB57; font-size:20px;\">Informatat per eksperience</p>"
    body = body + "<p style=\"font-weight: bold;\">Eksperienca from: #{@formulari.eksperienca_from}</p>"
    body = body + "<p style=\"font-weight: bold;\">Eksperienca to: #{@formulari.eksperienca_to}</p>"
    body = body + "<p style=\"font-weight: bold;\">Eksperienca kompania: #{@formulari.eksperienca_kompania}</p>"
    body = body + "<p style=\"font-weight: bold;\">Eksperienca pozita: #{@formulari.eksperienca_pozita}</p>"
    body = body + "<p style=\"color:#3BAB57; font-size:20px;\">Informata te pergjithshme</p>"
    body = body + "<p style=\"font-weight: bold;\">Gjuha: #{@formulari.gjuha}"
    body = body + "<p style=\"font-weight: bold;\">Gjuha niveli: #{@formulari.gjuha_niveli}</p>"
    body = body + "<p style=\"font-weight: bold;\">Njohurit kompjuterike: #{@formulari.njohurit_kompjuterike}</p>"

    respond_to do |format|
      if @formulari.save
        User.all.each do |u|
          FormulariMailer.aplikim_per_pune(u, subject, body).deliver
        end
        format.html { redirect_to @formulari, notice: 'Formulari u krijua me sukses.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /formularis/1
  # PATCH/PUT /formularis/1.json
  def update


  # @form = Formulari.all
  #     @form.each do |f|
  #       if f.status_id == 2
  #         @punt = Punetori.create(:emri => f.emri)

  #       end
  #        end
    respond_to do |format|



      if @formulari.update(formulari_params)
         formulari_momental = Formulari.find(params[:id])
        if formulari_momental.status_id == 1

          FormulariMailer.njoftim_adaptivit(formulari_momental).deliver
        elsif formulari_momental.status_id == 2
          @punt = Punetori.new(:id => formulari_momental.id, :emri => formulari_momental.emri, :mbiemri => formulari_momental.mbiemri, :email=>formulari_momental.email)
          @punt.save
        FormulariMailer.njoftim_per_pune_adaptivit(formulari_momental).deliver
      elsif formulari_momental.status_id == 3
        @ref = Refuzuar.new(:id => formulari_momental.id,:pozi_id => formulari_momental.pozi_id, :emri => formulari_momental.emri, :mbiemri => formulari_momental.mbiemri, :status_id => formulari_momental.status_id, :ditelindja => formulari_momental.ditelindja, :vendlindja=>formulari_momental.vendlindja, :tel=>formulari_momental.tel, :email=>formulari_momental.email)
        @ref.save
        FormulariMailer.njoftim_per_pune(formulari_momental).deliver
      elsif formulari_momental.status_id == 4
        @inter = Interview.new(:pozi_id => formulari_momental.pozi_id, :emri => formulari_momental.emri, :mbiemri => formulari_momental.mbiemri, :status_id => formulari_momental.status_id, :ditelindja => formulari_momental.ditelindja, :vendlindja=>formulari_momental.vendlindja, :tel=>formulari_momental.tel, :email=>formulari_momental.email)
        @inter.save
        FormulariMailer.njoftim_per_interviste(formulari_momental).deliver
      end
        format.html { redirect_to @formulari, notice: 'Formulari u ndryshua me sukses.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /formularis/1
  # DELETE /formularis/1.json
  def destroy
    @formulari.destroy
    respond_to do |format|
      format.html { redirect_to formularis_url, notice: 'Formulari u fshi me sukses.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulari
      @formulari = Formulari.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formulari_params

      params.require(:formulari).permit(:pozi_id, :emri, :mbiemri, :ditelindja, :vendlindja, :nacionaliteti, :leternjoftimi, :tel, :email, :edukimi_from, :edukimi_to, :edukimi_institucioni, :edukimi_drejtimi, :edukimi_titulli, :eksperienca_from, :eksperienca_to, :eksperienca_kompania, :eksperienca_pozita, :gjuha, :gjuha_niveli, :njohurit_kompjuterike, :qytetet_id, :adresa, :pc_id,  :referenca_file, :letra_motivuese,  :gjuha_id, :pc_id,  :cv_file, :intervista, :testet, :kontrata_from, :kontrata_to, :page, :status_id, :dergoemail_id, :ongoing, :trajnimi_institucioni, :trajnimi_drejtimi, :trajnimi_from, :trajnimi_to, :qytetet_id)

    end
end
