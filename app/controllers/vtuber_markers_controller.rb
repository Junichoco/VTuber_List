class VtuberMarkersController < ApplicationController

  def index
  end

  def show
  end

  def new
    @marker = VtuberMarker.new
  end

  def create
    @marker = VtuberMarker.new(marker_params)
    @marker.position = List.find(marker_params[:list_id]).next_num

    if @marker.save
      redirect_to list_path(List.find(marker_params[:list_id]))
    else
      # raise
      # render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @marker = VtuberMarker.find(marker_params[:id])

    if !@marker.update
      raise
    end
  end

  def destroy
    # raise
    @marker = VtuberMarker.find(params[:id])
    list = @marker.list
    @marker.destroy
    redirect_to list_path(list)
  end

  def insert
    @marker = VtuberMarker.find(params[:id])
    @marker.insert_at(params[:newIndex].to_i)
  end

  private

  def marker_params
    params.require(:vtuber_marker).permit(:list_id, :vtuber_id, :position)
  end
end
