class InterviewsController < ApplicationController
  before_action :set_interview, only: [:show, :edit, :update, :destroy]

  # GET /interviews
  # GET /interviews.json
  def index
    ab(params[:lan])
    @interviews = Interview.all
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

  # GET /interviews/1
  # GET /interviews/1.json
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

  # GET /interviews/new
  def new
    @interview = Interview.new
  end

  # GET /interviews/1/edit
  def edit
  end

  # POST /interviews
  # POST /interviews.json
  def create
    @interview = Interview.new(interview_params)

    respond_to do |format|
      if @interview.save
        format.html { redirect_to @interview, notice: 'Interview was successfully created.' }
        format.json { render :show, status: :created, location: @interview }
      else
        format.html { render :new }
        format.json { render json: @interview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interviews/1
  # PATCH/PUT /interviews/1.json
  def update
    respond_to do |format|
      if @interview.update(interview_params)
        format.html { redirect_to @interview, notice: 'Interview was successfully updated.' }
        format.json { render :show, status: :ok, location: @interview }
      else
        format.html { render :edit }
        format.json { render json: @interview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interviews/1
  # DELETE /interviews/1.json
  def destroy
    @interview.destroy
    respond_to do |format|
      format.html { redirect_to interviews_url, notice: 'Interview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interview
      @interview = Interview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interview_params
      params.require(:interview).permit(:pozi_id, :emri, :mbiemri, :status_id, :ditelindja, :vendlindja, :tel, :email)
    end
end
