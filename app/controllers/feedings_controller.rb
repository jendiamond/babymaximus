class FeedingsController < ApplicationController
  before_action :set_feeding, only: [:show, :edit, :update, :destroy]

  # GET /feedings
  def index
    @feedings = Feeding.all
  end

  # GET /feedings/1
  def show
  end

  # GET /feedings/new
  def new
    @day = Day.find(params[:day_id])
    @feeding = @day.feedings.new
  end

  # GET /feedings/1/edit
  def edit
  end

  # POST /feedings
  def create
    @day = Day.find(params[:day_id])
    @feeding = @day.feedings.create
    respond_to do |format|
      if @feeding.save
        format.html { redirect_to @day, notice: 'feeding was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /feedings/1
  def update
    respond_to do |format|
      if @feeding.update(feeding_params)
        format.html { redirect_to @feeding, notice: 'Feeding was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /feedings/1
  def destroy
    @feeding.destroy
    respond_to do |format|
      format.html { redirect_to feedings_url, notice: 'Feeding was successfully destroyed.' }
    end
  end

  private
    def set_feeding
      @feeding = Feeding.find(params[:id])
    end

    def feeding_params
      params.require(:feeding).permit(:day_id, :feeding_time, :left, :right, :minutes, :feeding_type, :feeding_amount, :notes)
    end
end
