class PagesController < ApplicationController
  def home
    @lists = []
    if user_signed_in?
      @lists = current_user.lists
    end
    @list = List.new
  end

  def about
    @list = []
end
