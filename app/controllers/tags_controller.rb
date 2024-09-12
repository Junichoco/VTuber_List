class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @vtubers = []
    TagMarker.where(tag: @tag).each do |tm|
      @vtubers << tm.vtuber
    end
  end
end
