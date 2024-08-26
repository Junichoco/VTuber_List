class PagesController < ApplicationController
  def home
    @lists = List.all
  end
end
