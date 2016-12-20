class RefuzuarsController < ApplicationController
  before_action :set_refuzuar, only: [:show, :edit, :update, :destroy]

  # GET /refuzuars
  # GET /refuzuars.json
  def index
    ab(params[:lan])
    @refuzuars = Refuzuar.all
     @status = Status.all
     @pozi = Pozi.all
     @qytetets = Qytetet.all
     @formulari = Formulari.all
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

  # GET /refuzuars/1
  # GET /refuzuars/1.json
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

  # GET /refuzuars/new
  def new
    @refuzuar = Refuzuar.new
  end

  # GET /refuzuars/1/edit
  def edit
  end

  # POST /refuzuars
  # POST /refuzuars.json
  def create
    @refuzuar = Refuzuar.new(refuzuar_params)

    respond_to do |format|
      if @refuzuar.save
        format.html { redirect_to @refuzuar, notice: 'Refuzuar was successfully created.' }
        format.json { render :show, status: :created, location: @refuzuar }
      else
        format.html { render :new }
        format.json { render json: @refuzuar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refuzuars/1
  # PATCH/PUT /refuzuars/1.json
  def update
    respond_to do |format|
      if @refuzuar.update(refuzuar_params)
        format.html { redirect_to @refuzuar, notice: 'Refuzuar was successfully updated.' }
        format.json { render :show, status: :ok, location: @refuzuar }
      else
        format.html { render :edit }
        format.json { render json: @refuzuar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refuzuars/1
  # DELETE /refuzuars/1.json
  def destroy
    @refuzuar.destroy
    respond_to do |format|
      format.html { redirect_to refuzuars_url, notice: 'Refuzuar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refuzuar
      @refuzuar = Refuzuar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refuzuar_params
      params.require(:refuzuar).permit(:pozi_id, :emri, :mbiemri, :status_id, :ditelindja, :vendlindja, :tel, :email, :status_id, :pozi_id, :qytetet_id)
    end
end
