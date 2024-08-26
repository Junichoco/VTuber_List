class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end



  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
