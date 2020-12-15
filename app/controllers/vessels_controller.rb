class VesselsController < ApplicationController
  def index
    @vessels = Vessel.all
  end

  def show
    @vessel = Vessel.find(params[:id])
  end

  def new
    @vessel = Vessel.new
  end

  def create
    @vessel = Vessel.new(vessel_params)

    if @vessel.save
      redirect_to @vessel
    else
      render :new
    end
  end

  def edit
    @vessel = Vessel.find(params[:id])
  end

  def update
    @vessel = Vessel.find(params[:id])

    @vessel.update(vessel_params)

    if @vessel.save
      redirect_to @vessel
    else
      render :edit
    end
  end
  
end
