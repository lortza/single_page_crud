class CrittersController < ApplicationController
  before_action :set_critter, only: [:show, :edit, :update, :destroy]

  def index
    @critters = Critter.all.order(:name)
  end

  def show
  end

  def new
    @critter = Critter.new
    respond_to :js
  end

  def edit
  end

  def create
    @critter = Critter.new(critter_params)
    @critter.save
    respond_to :js
  end

  def update
    respond_to do |format|
      if @critter.update(critter_params)
        format.html { redirect_to @critter, notice: 'Critter was successfully updated.' }
        format.json { render :show, status: :ok, location: @critter }
      else
        format.html { render :edit }
        format.json { render json: @critter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @critter.destroy
    respond_to do |format|
      format.html { redirect_to critters_url, notice: 'Critter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_critter
      @critter = Critter.find(params[:id])
    end

    def critter_params
      params.require(:critter).permit(:name, :city_id, :color)
    end
end
