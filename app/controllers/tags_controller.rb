class TagsController < ApplicationController

  def index
    @tags = Tag.all.order("LOWER(name)")
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @tag = Tag.find(params[:id])
    @vtubers = []
    TagMarker.where(tag: @tag).each do |tm|
      @vtubers << tm.vtuber
    end
    @vtubers.sort
  end

  def manage
    @tags = Tag.all.order("LOWER(name)")
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy!
    redirect_to :tags_manage
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end

end
