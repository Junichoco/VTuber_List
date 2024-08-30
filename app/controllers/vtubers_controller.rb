class VtubersController < ApplicationController

  def new
    @vtuber = Vtuber.new
  end

  def create
  end

  def show
    @vtuber = Vtuber.find(params[:id])
    # current user's lists that do not include VTuber
    @lists = List.all
    @list = List.new
    @marker = VtuberMarker.new
  end

  def edit
    @vtuber = Vtuber.find(params[:id])
    @agencies = Agency.all
  end

  def update
    @vtuber = Vtuber.find(params[:id])
    if @vtuber.update(vtuber_params)
      redirect_to vtuber_path(@vtuber)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def vtuber_params
    params.require(:vtuber).permit(
      :name,
      :description,
      :agency_id,
      :yt_channel,
      :twitch_channel,
      :photo_url,
      :gender,
      :birthday,
      :debut_date,
      :main_language,
      :active,
      photos: []
    )
  end
end
