class PagesController < ApplicationController
  def home
    @lists = []
    if user_signed_in?
      @lists = current_user.lists
      @user = current_user
    end
    @list = List.new
  end

  def about
    @vtubers = []

    while @vtubers.length < 10
      vtuber = Vtuber.get_random_vtuber
      if !@vtubers.include?(vtuber) && (vtuber.thumbnail.attached?)
        @vtubers << vtuber
      end
    end
  end

  def random
    @vtubers = []
    while @vtubers.length < 100
      vtuber = Vtuber.get_random_vtuber
      if !@vtubers.include?(vtuber)
        @vtubers << vtuber
      end
    end
  end

  def search
    @vtubers = []
    # raise
    if params[:query].present?
      @vtubers = Vtuber.search_by_name(params[:query])
    end
  end

end
