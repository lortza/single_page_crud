class CrittersController < ApplicationController
  before_action :set_critter, only: [:show, :edit, :update, :destroy]

  def index
    @critters = Critter.all.order("LOWER(name)")
  end

  def show
  end

  def new
    @critter = Critter.new
    respond_to :js
  end

  def edit
    respond_to :js
  end

  def create
    @critter = Critter.new(critter_params)
    @critter.save
    respond_to :js
  end

  def update
    @critter.update(critter_params)
    respond_to :js
  end

  def destroy
    @critter.destroy
    respond_to :js
  end

  private
    def set_critter
      @critter = Critter.find(params[:id])
    end

    def critter_params
      params.require(:critter).permit(:name, :city_id, :color)
    end
end
