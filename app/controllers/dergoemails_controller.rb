class DergoemailsController < ApplicationController
  before_action :set_dergoemail, only: [:show, :edit, :update, :destroy]

  # GET /dergoemails
  # GET /dergoemails.json
  @@numri
  @@form_email = []
  
 def index
    @dergoemails = Dergoemail.all
    @formularis= Formulari.all
  end

  # GET /dergoemails/1
  # GET /dergoemails/1.json
  def show
  end

  # GET /dergoemails/new
  def new
    @dergoemail = Dergoemail.new
    # @@form_email = Formulari.find(params[:id]).email

   
    params.each do |key,value|
      # keys =  Rails.logger.warn "#{key}"
      if key.start_with?("num")

        @@form_email.push(value)
      end
    end
  end

  # GET /dergoemails/1/edit
  def edit
  end

  # POST /dergoemails
  # POST /dergoemails.json
    def create
    @adaptivit = dergoemail_params[:subject]
    puts "-----------------------------------------"
    interview_time = Time.new(dergoemail_params['interview_time(1i)'].to_i, dergoemail_params['interview_time(2i)'].to_i, dergoemail_params['interview_time(3i)'].to_i,dergoemail_params['interview_time(4i)'].to_i, dergoemail_params['interview_time(5i)'].to_i)
    puts @@form_email
    puts "----------------------------------------"
    @dergoemail = Dergoemail.new(dergoemail_params)
    respond_to do |format|
    if @@form_email.count > 1
      koha=0
      @@form_email.each do |email| 
          if DergoemailMailer.adaptivit(email, (interview_time+koha.minutes).strftime("%I:%M%p"), dergoemail_params[:body], current_user.email, dergoemail_params[:subject]).deliver#@dergoemail.save
            koha=koha+20
            format.html { redirect_to formularis_path, notice: 'Emaili u dergua me sukses' }
            # format.json { render :show, status: :created, location: @dergoemail }
          else
            format.html { render :new }
            format.json { render json: @dergoemail.errors, status: :unprocessable_entity }
          end
      end
    end
    end
  end

  # PATCH/PUT /dergoemails/1
  # PATCH/PUT /dergoemails/1.json
  def update
    respond_to do |format|
      if @dergoemail.update(dergoemail_params)
        format.html { redirect_to @dergoemail, notice: 'Dergoemail was successfully updated.' }
        format.json { render :show, status: :ok, location: @dergoemail }
      else
        format.html { render :edit }
        format.json { render json: @dergoemail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dergoemails/1
  # DELETE /dergoemails/1.json
  def destroy
    @dergoemail.destroy
    respond_to do |format|
      format.html { redirect_to dergoemails_url, notice: 'Dergoemail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dergoemail
      @dergoemail = Dergoemail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dergoemail_params
      params.require(:dergoemail).permit(:interview_time, :subject, :body, :formulari_id)
    end
end
