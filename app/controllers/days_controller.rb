class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]

  # GET /days
  # GET /days.json
  def index
    @days = Day.all
  end

  # GET /days/1
  # GET /days/1.json
  def show
  end

  # GET /days/new
  def new
    @day = Day.new
  end

  # GET /days/1/edit
  def edit
  end

  # POST /days
  # POST /days.json
  def create
    @day = Day.new(day_params)

    respond_to do |format|
      if @day.save
        format.html { redirect_to edit_day_path(@day), 
          notice: 'Jen Diamond wants you to have a great day. XO :)' }
      else
        format.html { render :new }
      end
    end
end

  # PATCH/PUT /days/1
  # PATCH/PUT /days/1.json
  def update
    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to @day, notice: 'Day was successfully updated.' }
        format.json { render :show, status: :ok, location: @day }
      else
        format.html { render :edit }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to days_url, notice: 'Day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_day
      @day = Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:week, :date, :notes)
    end
end
