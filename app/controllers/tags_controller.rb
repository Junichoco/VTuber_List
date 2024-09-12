class TagsController < ApplicationController

  def index
    @tags = Tag.all.order(name: :asc)
  end

  def show
    @tag = Tag.find(params[:id])
    @vtubers = []
    TagMarker.where(tag: @tag).each do |tm|
      @vtubers << tm.vtuber
    end
    @vtubers.sort
  end
end
