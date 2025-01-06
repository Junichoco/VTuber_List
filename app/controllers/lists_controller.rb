class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])


  end

  def new
    @list = List.new
    @user = current_user
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    @list.order_num = current_user.next_num
    @list.position = current_user.next_num

    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to :home
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy!
    redirect_to :home
  end

  def reorder
    @list = List.find(params[:list_id])
    raise
  end

  def sort
    list = List.find(params[:id])
    list.move_vtuber(params[:old_num].to_i, params[:new_num].to_i)

    # redirect_to :list

    # @list = List.find(params[:id])
    # @list.ordered_markers[params[:old_num].to_i - 1].insert_at(params[:new_num].to_i)
  end


  private

  def list_params
    params.require(:list).permit(:name, :order_num, :position, :photo)
  end
end
