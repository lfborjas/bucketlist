class ListsController < ApplicationController
  def show
    @list = List.find params[:id]
    @goal = Goal.new
  end

end
