class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]

  # GET /days
  def index
    @days = Day.all
  end

  # GET /days/1
  def show
    @bath = Bath.find_by day_id:(@day.id)
    @feedings = @day.feedings
  end

  # GET /days/new
  def new
    @day = Day.new
    @bath = @day.build_bath
  end

  # GET /days/1/edit
  def edit
  end

# POST /days
  def create
    @day = Day.new(day_params)

    respond_to do |format|
      if @day.save
        format.html { redirect_to @day, notice: 'Day was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end 

  # PATCH/PUT /days/1
  def update
    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to @day, notice: 'Day was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /days/1
  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to days_url, notice: 'Day was successfully destroyed.' }
    end
  end

  private

    def set_day
      @day = Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:week, :date, :notes,
      :bath_attributes => [:bath,:notes],
      :feedings_attributes => [:feeding_time,:left,:right,:minutes,
                    :feeding_type,:feeding_amount,:notes])
    end
end
