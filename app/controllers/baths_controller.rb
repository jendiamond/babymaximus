class BathsController < ApplicationController
  before_action :set_bath, only: [:show, :edit, :update, :destroy]

  # GET /baths
  def index
    @baths = Bath.all
  end

  # GET /baths/1
  def show
  end

  # GET /baths/new
  def new
    @bath = Bath.new
  end

  # GET /baths/1/edit
  def edit
  end

  # POST /baths
  def create
    @bath = Bath.new(bath_params)

    respond_to do |format|
      if @bath.save
        format.html { redirect_to @bath, notice: 'Bath was successfully created.' }
        format.json { render :show, status: :created, location: @bath }
      else
        format.html { render :new }
        format.json { render json: @bath.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baths/1
  def update
    respond_to do |format|
      if @bath.update(bath_params)
        format.html { redirect_to @bath, notice: 'Bath was successfully updated.' }
        format.json { render :show, status: :ok, location: @bath }
      else
        format.html { render :edit }
        format.json { render json: @bath.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baths/1
  def destroy
    @bath.destroy
    respond_to do |format|
      format.html { redirect_to baths_url, notice: 'Bath was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_bath
      @bath = Bath.find(params[:id])
    end

    def bath_params
      params.require(:bath).permit(:day_id, :bath, :notes)
    end
end
