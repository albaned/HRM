class QytetetsController < ApplicationController
  before_action :set_qytetet, only: [:show, :edit, :update, :destroy]

  # GET /qytetets
  # GET /qytetets.json
  def index
    ab(params[:lan])
    @qytetets = Qytetet.all
  end

  # GET /qytetets/1
  # GET /qytetets/1.json
  def show
  end

  # GET /qytetets/new
  def new
    @qytetet = Qytetet.new
  end

  # GET /qytetets/1/edit
  def edit
  end

  # POST /qytetets
  # POST /qytetets.json
  def create
    @qytetet = Qytetet.new(qytetet_params)

    respond_to do |format|
      if @qytetet.save
        format.html { redirect_to @qytetet, notice: 'Qytetet was successfully created.' }
        format.json { render :show, status: :created, location: @qytetet }
      else
        format.html { render :new }
        format.json { render json: @qytetet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qytetets/1
  # PATCH/PUT /qytetets/1.json
  def update
    respond_to do |format|
      if @qytetet.update(qytetet_params)
        format.html { redirect_to @qytetet, notice: 'Qytetet was successfully updated.' }
        format.json { render :show, status: :ok, location: @qytetet }
      else
        format.html { render :edit }
        format.json { render json: @qytetet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qytetets/1
  # DELETE /qytetets/1.json
  def destroy
    @qytetet.destroy
    respond_to do |format|
      format.html { redirect_to qytetets_url, notice: 'Qytetet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qytetet
      @qytetet = Qytetet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qytetet_params
      params.require(:qytetet).permit(:description)
    end
end
