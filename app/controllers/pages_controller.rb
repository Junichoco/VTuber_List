class PagesController < ApplicationController
  def home
    @lists = List.all
    @list = List.new
  end
end
