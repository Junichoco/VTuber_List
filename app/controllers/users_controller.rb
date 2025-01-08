class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @lists = @user.lists
  end

  def reorder

    @user = User.find(params[:id])
    @user.move_list(params[:old_num].to_i, params[:new_num].to_i)
    redirect_to :home

  end

end
