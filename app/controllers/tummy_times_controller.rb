class TummyTimesController < ApplicationController
  before_action :set_tummy_time, only: [:show, :edit, :update, :destroy]

  # GET /tummy_times
  # GET /tummy_times.json
  def index
    @tummy_times = TummyTime.all
  end

  # GET /tummy_times/1
  # GET /tummy_times/1.json
  def show
  end

  # GET /tummy_times/new
  def new
    @tummy_time = TummyTime.new
  end

  # GET /tummy_times/1/edit
  def edit
  end

  # POST /tummy_times
  # POST /tummy_times.json
  def create
    @tummy_time = TummyTime.new(tummy_time_params)

    respond_to do |format|
      if @tummy_time.save
        format.html { redirect_to @tummy_time, notice: 'Tummy time was successfully created.' }
        format.json { render :show, status: :created, location: @tummy_time }
      else
        format.html { render :new }
        format.json { render json: @tummy_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tummy_times/1
  # PATCH/PUT /tummy_times/1.json
  def update
    respond_to do |format|
      if @tummy_time.update(tummy_time_params)
        format.html { redirect_to @tummy_time, notice: 'Tummy time was successfully updated.' }
        format.json { render :show, status: :ok, location: @tummy_time }
      else
        format.html { render :edit }
        format.json { render json: @tummy_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tummy_times/1
  # DELETE /tummy_times/1.json
  def destroy
    @tummy_time.destroy
    respond_to do |format|
      format.html { redirect_to tummy_times_url, notice: 'Tummy time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tummy_time
      @tummy_time = TummyTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tummy_time_params
      params.require(:tummy_time).permit(:day_id, :tummy_time, :notes)
    end
end
