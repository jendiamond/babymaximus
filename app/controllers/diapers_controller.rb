class DiapersController < ApplicationController
  before_action :set_diaper, only: [:show, :edit, :update, :destroy]

  # GET /diapers
  # GET /diapers.json
  def index
    @diapers = Diaper.all
  end

  # GET /diapers/1
  # GET /diapers/1.json
  def show
  end

  # GET /diapers/new
  def new
    @diaper = Diaper.new
  end

  # GET /diapers/1/edit
  def edit
  end

  # POST /diapers
  # POST /diapers.json
  def create
    @diaper = Diaper.new(diaper_params)

    respond_to do |format|
      if @diaper.save
        format.html { redirect_to @diaper, notice: 'Diaper was successfully created.' }
        format.json { render :show, status: :created, location: @diaper }
      else
        format.html { render :new }
        format.json { render json: @diaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diapers/1
  # PATCH/PUT /diapers/1.json
  def update
    respond_to do |format|
      if @diaper.update(diaper_params)
        format.html { redirect_to @diaper, notice: 'Diaper was successfully updated.' }
        format.json { render :show, status: :ok, location: @diaper }
      else
        format.html { render :edit }
        format.json { render json: @diaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diapers/1
  # DELETE /diapers/1.json
  def destroy
    @diaper.destroy
    respond_to do |format|
      format.html { redirect_to diapers_url, notice: 'Diaper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diaper
      @diaper = Diaper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diaper_params
      params.require(:diaper).permit(:day_id, :diaper_type, :notes)
    end
end
