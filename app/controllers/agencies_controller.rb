class AgenciesController < ApplicationController

  def index
    @agencies = Agency.all.order('LOWER(name)')
  end

  def new
    @agency = Agency.new
  end

  def create
    @agency = Agency.new(agency_params)
    if @agency.save
      redirect_to agency_path(@agency)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @agency = Agency.find(params[:id])
    @vtubers = Vtuber.where(agency: @agency)
  end

  private

  def agency_params
    params.require(:agency).permit(:name, :description, :location, :website, :active, :yt_channel)
  end

end
